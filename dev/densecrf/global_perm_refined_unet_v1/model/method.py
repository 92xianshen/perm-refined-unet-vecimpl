import numpy as np
import tensorflow as tf

from multiprocessing import Pool

# from .np_densecrf import DenseCRF

# from .dcrf_base import DenseCRFBase
from .pydensecrf import PyDenseCRF

from ..config.global_config import GlobalConfig

from ..util.tile_utils import reconstruct_full

from .linear2 import Linear2


def unary_from_image(image: np.ndarray, ugenerator: tf.Module) -> np.ndarray:
    unary = ugenerator(image[tf.newaxis, ...])[0]
    return unary.numpy()


def reference_from_image(image: np.ndarray, refgenerator: tf.Module) -> np.ndarray:
    ref = refgenerator(image)
    return ref.numpy()


def refine(unary: np.ndarray, reference: np.ndarray, dcrf: PyDenseCRF) -> np.ndarray:
    rfn = dcrf.mean_field_approximation(unary, reference)
    return rfn


# def refine_mp(
#     utiles: list[np.ndarray], reftiles: list[np.ndarray], config: GlobalConfig
# ) -> np.ndarray:
#     # if config.dcrf_impl == "NP":
#     #     from .np_densecrf import DenseCRF
#     # elif config.dcrf_impl == "CPP":
#     #     from .cpp_densecrf import DenseCRF
#     # else:
#     #     raise Exception("No implmentation.")

#     if not len(utiles) == len(reftiles):
#         raise Exception("len(utiles) != len(reftiles).")
#     if not len(utiles) % config.n_processes == 0:
#         raise Exception("Cannot deploy evenly.")

#     n_parallels = len(utiles) // config.n_processes
#     rfntiles = list()
#     dcrfs = [DenseCRF(config) for _ in range(config.n_processes)]

#     for i in range(n_parallels):
#         print("Parallel", i + 1)
#         pool = Pool(processes=config.n_processes)
#         results = list()

#         for j in range(config.n_processes):
#             utile = utiles[i * config.n_processes + j]
#             reftile = reftiles[i * config.n_processes + j]
#             dcrf = dcrfs[j]
#             results.append(
#                 pool.apply_async(
#                     refine,
#                     args=(
#                         utile,
#                         reftile,
#                         dcrf,
#                     ),
#                 )
#             )

#         pool.close()
#         pool.join()

#         for r in results:
#             rfntiles.append(r.get())

#     return rfntiles


def refine_global(
    utiles: list[np.ndarray], reftiles: list[np.ndarray], config: GlobalConfig
) -> list[np.ndarray]:
    refgenerator = Linear2()
    refgenerator(
        tf.ones(
            [config.tile_height, config.tile_width, config.n_channels], dtype=tf.float32
        )
    )

    if not len(utiles) == len(reftiles):
        raise Exception("len(utiles) != len(reftiles).")
    # if not len(utiles) % config.n_processes == 0:
    #     raise Exception("Cannot deploy evenly.")

    unary = reconstruct_full(
        np.stack(utiles, axis=0),
        crop_height=config.tile_height,
        crop_width=config.tile_width,
    )
    reference = reconstruct_full(
        np.stack(reftiles, axis=0),
        crop_height=config.tile_height,
        crop_width=config.tile_width,
    )
    reference = (reference - reference.min()) / (reference.max() - reference.min() + 1e-10)

    reference = reference_from_image(reference, refgenerator)

    h, w = unary.shape[:2]

    dcrf = PyDenseCRF(
        H=h,
        W=w,
        n_classes=config.num_classes,
        d_bifeats=config.n_channels + 2,
        d_spfeats=2,
        theta_alpha=config.theta_alpha,
        theta_beta=config.theta_beta,
        theta_gamma=config.theta_gamma,
        bilateral_compat=config.bilateral_compat,
        spatial_compat=config.spatial_compat,
        n_iterations=config.num_iterations,
    )

    unary = unary.reshape((-1,))
    reference = reference.reshape((-1,))
    out = np.zeros_like(unary)
    dcrf.inference(unary, reference, out)

    out = out.reshape((h, w, -1))
    MAP = out.argmax(axis=-1)
    return MAP
