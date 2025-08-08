"""
Final version

rm comments
"""

import numpy as np
from PIL import Image

import matplotlib.pyplot as plt
import cv2
import time

from model.cppthreadv3.pypermutohedral import PyPermutohedral

H = 1024 * 1
W = 1024 * 1
N = H * W
d = 5
n_thread = 8

def main():
    im = Image.open("../../data/lenna.png").resize((H, W))
    im = np.array(im) / 255.0

    h, w, n_channels = im.shape

    invSpatialStdev = 1.0 / 5.0
    invColorStdev = 1.0 / 0.25

    feature = np.zeros((h, w, 5), dtype=np.float32)
    spatial_feat = np.mgrid[0:h, 0:w][::-1].transpose((1, 2, 0)) * invSpatialStdev
    color_feat = im * invColorStdev
    feature[..., :2] = spatial_feat
    feature[..., 2:] = color_feat
    feature = feature.reshape((-1, 5))

    start = time.time()
    N, d = feature.shape[0], feature.shape[1]
    lattice = PyPermutohedral(N, d, n_thread)

    feature = feature.reshape((-1,)) # (N x 5, )

    lattice.mtinit(feature)

    print("Lattice of TF initialized.")

    # Column-major inputs and outputs
    all_ones = np.ones((N, 1), dtype=np.float32)
    all_ones = all_ones.reshape((-1,))
    norms = np.zeros_like(all_ones)
    lattice.mtcompute(all_ones, 1, False, norms)

    norms = norms.reshape((h, w, 1))

    src = im.reshape((-1, n_channels)).astype(np.float32)
    src = src.reshape((-1,))
    dst = np.zeros_like(src, dtype=np.float32)

    lattice.mtcompute(src, n_channels, False, dst)

    # dst2 = np.zeros_like(src, dtype=np.float32)
    # lattice.seqcompute(src, n_channels, False, dst2)

    # print("dst allclose ", np.allclose(dst, dst2))

    dst = dst.reshape((h, w, n_channels))
    dst = dst / (norms + 1e-20)
    dst = (dst - dst.min()) / (dst.max() - dst.min() + 1e-5)
    print("Time:", time.time() - start)

    plt.imshow(np.hstack([im, dst]))
    plt.show()



if __name__ == "__main__":
    main()
