"""
# run inference by `python inference.py`, in a multi-processing way.

# UNet/ugeneration/reference in TF, CRF refinement in MP of CPU

# Baseline experiment.

For new global perm. refined unet.
"""

import os
import time

import matplotlib.pyplot as plt
import numpy as np
import tensorflow as tf
import pprint

# - Local import, absolute import
from global_perm_refined_unet_v1.config.global_config import GlobalConfig

# from model.gkdt_refined_unet_factory import GKDTRefinedUNet # model class, including all inference methods, including unary and reference generation.
# !!! Not Model, separate methods instead.
# from gkdt_refined_unet_impl.model.method import unary_from_image, reference_from_image, refine_mp
from global_perm_refined_unet_v1.model.method import unary_from_image, refine_global

# from gkdt_refined_unet_impl.model.linear2 import Linear2
from global_perm_refined_unet_v1.model.linear2 import Linear2

# from gkdt_refined_unet_impl.util.l8_tfrecordloader import load_testset
# from gkdt_refined_unet_impl.util.tile_utils import reconstruct_full
from global_perm_refined_unet_v1.util.l8_tfrecordloader import load_testset
from global_perm_refined_unet_v1.util.tile_utils import reconstruct_full


def main():
    config = GlobalConfig()
    pprint.pprint(config.__dict__)

    if not os.path.exists(config.save_path):
        os.makedirs(config.save_path)
        print("Create output path {}.".format(config.save_path))

    # - load ugenerator and refgenerator
    print("Load and activate modules...")
    ugenerator = tf.saved_model.load(config.ugenerator_path)
    refgenerator = Linear2()
    ugenerator(
        tf.ones(
            [1, config.tile_height, config.tile_width, config.num_bands],
            dtype=tf.float32,
        )
    )
    refgenerator(
        tf.ones(
            [config.tile_height, config.tile_width, config.n_channels], dtype=tf.float32
        )
    )
    print("Module loaded and activated.")

    print("Load from {}".format(config.data_path))
    test_names = os.listdir(config.data_path)
    print("Data list: {}".format(test_names))

    with open(os.path.join(config.save_path, config.log_fname), "w") as log:
        log.writelines("name, theta_alpha, theta_beta, theta_gamma, time\n")

        for test_name in test_names:
            # Names
            save_npz_name = test_name.replace("train.tfrecords", "rfn.npz")
            save_png_name = test_name.replace("train.tfrecords", "rfn.png")

            # Load one test case
            test_name = [os.path.join(config.data_path, test_name)]
            test_set = load_testset(
                test_name,
                batch_size=1,
            )

            utiles, reftiles = list(), list()

            # Inference
            start = time.time()
            print("Generating unary and reference.")
            for record in test_set.take(-1):
                x = record["x_train"]
                # - norm
                x_norm = (x - tf.reduce_min(x)) / (
                    tf.reduce_max(x) - tf.reduce_min(x) + 1e-10
                )
                utile = unary_from_image(x_norm[0], ugenerator)
                # reftile = reference_from_image(x[0, ..., config.channel_start:config.channel_end:config.channel_order], refgenerator)
                utiles.append(utile)
                reftiles.append(
                    x.numpy()[
                        0,
                        ...,
                        config.channel_start : config.channel_end : config.channel_order,
                    ]
                )

            # print("Refining, in a multi-processing way.")
            # rfntiles = refine_mp(utiles, reftiles, config)
            refinement = refine_global(utiles, reftiles, config)

            # refinement = reconstruct_full(
            #     np.stack(rfntiles, axis=0),
            #     crop_height=config.tile_height,
            #     crop_width=config.tile_width,
            # )
            tconsumption = time.time() - start

            # Save results
            save_npz_fullname = os.path.join(config.save_path, save_npz_name)
            np.savez(save_npz_fullname, refinement)
            print("Write to {}.".format(save_npz_fullname))
            save_png_fullname = os.path.join(config.save_path, save_png_name)
            plt.imsave(save_png_fullname, refinement)
            print("Write to {}.".format(save_png_fullname))

            log.writelines(
                "{}, {}, {}, {}, {}\n".format(
                    test_name,
                    config.theta_alpha,
                    config.theta_beta,
                    config.theta_gamma,
                    tconsumption,
                )
            )
            log.flush()

            print("{} Done.".format(test_name))


if __name__ == "__main__":
    main()
