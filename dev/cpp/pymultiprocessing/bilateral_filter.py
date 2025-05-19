"""
Final version
"""

import numpy as np
from PIL import Image
# from permutohedral_tf_v5 import Permutohedral as PermutohedralTF
# from permutohedral_tf_v2 import Permutohedral as PermutohedralTFV2
# from permutohedral_numpified import Permutohedral as PermutohedralNP
# from permutohedral_np_cpp import Permutohedral as PermutohedralNP
# from pypermutohedral import PyPermutohedral

import matplotlib.pyplot as plt
import cv2
import time

# import os
# os.system("python setup.py build_ext --inplace")

# from pypermutohedral_omp import PyPermutohedral
# from pypermutohedral_ref import PyPermutohedral

from pyppermutohedral import PyPPermutohedral
from testconfig import TestConfig



def main():
    # im = Image.open('../../../data/lenna.png').resize((8192, 8192))
    im = Image.open('../../../data/lenna.png').resize((4096, 4096))
    im = np.array(im) / 255.

    h, w, n_channels = im.shape

    invSpatialStdev = 1. / 5.
    invColorStdev = 1. / .25

    feature = np.zeros((h, w, 5), dtype=np.float32)
    spatial_feat = np.mgrid[0:h, 0:w][::-1].transpose((1, 2, 0)) * invSpatialStdev
    color_feat = im * invColorStdev
    feature[..., :2] = spatial_feat
    feature[..., 2:] = color_feat
    feature = feature.reshape((-1, 5))

    start = time.time()
    N, d = feature.shape[0], feature.shape[1]
    lattice = PyPPermutohedral(N, d)

    # features = features.transpose() # 
    feature = feature.reshape((-1, ))
    # config = TestConfig()
    # mpinit(lattice, feature, config)
    # lattice.seqinit()
    
    
    lattice.init(feature)
    # config = TestConfig()
    # lattice.mpinit(feature, config)


    print('Lattice of TF initialized.')

    # Column-major inputs and outputs
    all_ones = np.ones((N, 1), dtype=np.float32)
    # all_ones = all_ones.transpose().reshape((-1, ))
    all_ones = all_ones.reshape((-1, ))
    norms = np.zeros_like(all_ones)
    # lattice.compute(all_ones, N, 1, False, norms)
    lattice.compute(all_ones, 1, False, norms)

    # norms = norms.reshape((1, N)).transpose().reshape((h, w, 1))
    norms = norms.reshape((h, w, 1))
    # print(np.allclose(norms, 0))

    src = im.reshape((-1, n_channels)).astype(np.float32)
    # src = src.transpose().reshape((-1, ))
    src = src.reshape((-1, ))
    dst = np.zeros_like(src, dtype=np.float32)
    # lattice.compute(src, N, n_channels, False, dst)

    lattice.compute(src, n_channels, False, dst)

    # dst = dst.reshape((n_channels, N)).transpose().reshape((h, w, n_channels))
    dst = dst.reshape((h, w, n_channels))
    dst = dst / (norms + 1e-20)
    dst = (dst - dst.min()) / (dst.max() - dst.min() + 1e-5)
    print("Time:", time.time() - start)

    plt.imshow(np.hstack([im, dst]))
    plt.show()

    # cv2.imshow('im', im[..., ::-1])
    # cv2.imshow('dst', dst[..., ::-1])
    # # cv2.imshow('dst v2', dst_v2[..., ::-1])
    # # # cv2.imshow('im_filtered2', dst2[..., ::-1])
    # cv2.waitKey()

if __name__ == "__main__":
    main()