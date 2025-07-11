import numpy as np
from PIL import Image
import matplotlib.pyplot as plt
import cv2

# from global_perm_refined_unet_v1.model.pydensecrf import PyDenseCRF
# from cpp_densecrf import DenseCRF
# from global_config import GlobalConfig

from global_perm_refined_unet_v1.model.pydensecrf_noeigen import PyDenseCRF

'''
CRF inference
Is channel-last or will be transferred to channel-last
'''

def unary_from_labels(labels: np.ndarray, n_labels: int, gt_prob: float, zero_unsure: bool=True) -> np.ndarray:
    """
    Simple classifier that is 50% certain that the annotation is correct.
    (same as in the inference example).


    Parameters
    ----------
    labels: numpy.array
        The label-map, i.e. an array of your data's shape where each unique
        value corresponds to a label.
    n_labels: int
        The total number of labels there are.
        If `zero_unsure` is True (the default), this number should not include
        `0` in counting the labels, since `0` is not a label!
    gt_prob: float
        The certainty of the ground-truth (must be within (0,1)).
    zero_unsure: bool
        If `True`, treat the label value `0` as meaning "could be anything",
        i.e. entries with this value will get uniform unary probability.
        If `False`, do not treat the value `0` specially, but just as any
        other class.
    """
    assert 0 < gt_prob < 1, "`gt_prob must be in (0,1)."

    labels = labels.ravel()

    n_energy = -np.log((1.0 - gt_prob) / (n_labels - 1))
    p_energy = -np.log(gt_prob)

    # Note that the order of the following operations is important.
    # That's because the later ones overwrite part of the former ones, and only
    # after all of them is `U` correct!
    U = np.full((n_labels, len(labels)), n_energy, dtype='float32')
    U[labels - 1 if zero_unsure else labels, np.arange(U.shape[1])] = p_energy

    # Overwrite 0-labels using uniform probability, i.e. "unsure".
    if zero_unsure:
        U[:, labels == 0] = -np.log(1.0 / n_labels)

    return U

if __name__ == "__main__":
    img = cv2.imread('../../data/examples/im3.png')
    anno_rgb = cv2.imread('../../data/examples/anno3.png').astype(np.uint32)
    anno_lbl = anno_rgb[:,:,0] + (anno_rgb[:,:,1] << 8) + (anno_rgb[:,:,2] << 16)

    colors, labels = np.unique(anno_lbl, return_inverse=True)

    HAS_UNK = 0 in colors
    if HAS_UNK:
        print("Found a full-black pixel in annotation image, assuming it means 'unknown' label, and will thus not be present in the output!")
        print("If 0 is an actual label for you, consider writing your own code, or simply giving your labels only non-zero values.")
        colors = colors[1:]
    
    colorize = np.empty((len(colors), 3), np.uint8)
    colorize[:,0] = (colors & 0x0000FF)
    colorize[:,1] = (colors & 0x00FF00) >> 8
    colorize[:,2] = (colors & 0xFF0000) >> 16

    n_labels = len(set(labels.flat)) - int(HAS_UNK)
    print(n_labels, " labels", (" plus \"unknown\" 0: " if HAS_UNK else ""), set(labels.flat))

    unary = unary_from_labels(labels, n_labels, 0.7, HAS_UNK)
    unary = np.rollaxis(unary.reshape(n_labels, *img.shape[:2]), 0, 3) # channel-last

    dcrf = PyDenseCRF(
        H=img.shape[0], W=img.shape[1], n_classes=n_labels, 
        d_bifeats=5, d_spfeats=2, 
        theta_alpha=80, theta_beta=.0625, 
        theta_gamma=3, 
        bilateral_compat=10, spatial_compat=3, 
        n_iterations=10, 
    )

    h, w = img.shape[0], img.shape[1]
    img = img.astype(np.float32)
    # pred1 = np.ones((h, w, n_labels + 1), dtype=np.float32)
    # pred1[..., :n_labels] = unary

    # pred1, img = pred1.reshape((-1, )), img.reshape((-1, ))
    unary = unary.reshape((-1, ))
    img = img.reshape((-1, ))
    out = np.zeros_like(unary)
    dcrf.inference(unary, img / 255., out)
    # pred1 = pred1.reshape((h, w, n_labels + 1))

    # pred = inference(img / 255., unary, n_labels, theta_alpha=80., theta_beta=.0625, theta_gamma=3., spatial_compat=3., bilateral_compat=10., num_iterations=10)
    # pred = pred1[..., :-1] / (pred1[..., -1:] + 1e-8)
    # pred = pred1
    
    out = out.reshape((h, w, -1))
    MAP = np.argmax(out, axis=-1)
    plt.imshow(MAP)
    plt.show()