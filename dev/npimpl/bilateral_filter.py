
import time
import numpy as np

# from permutohedral_npimpl import Permutohedral
# from permutohedral_npimpl_v2 import PermutohedralNPImpl
# from permutohedral_jaximpl import Permutohedral
# from permutohedral_nbopt import Permutohedral # for numba optimization

from permutohedral_cython import Permutohedral

def bilateral_filter(value, image, theta_alpha, theta_beta):
    h, w, n_imchannels = image.shape
    _, _, n_valchannels = value.shape

    spatial_pos = np.mgrid[0:h, 0:w][::-1].astype(np.float32).transpose((1, 2, 0)) / theta_alpha
    color_pos = image / theta_beta
    pos = np.concatenate([spatial_pos, color_pos], axis=-1) # (h, w, imchannels + 2)
    pos = pos.reshape((h * w, n_imchannels + 2)) # (N, d)

    val1 = np.concatenate([value, np.ones((h, w, 1), dtype=np.float32)], axis=-1)
    val1 = val1.reshape((h * w, n_valchannels + 1)) # (N, v)

    lattice = Permutohedral(N=(h * w), d=(n_imchannels + 2))
    # lattice = Permutohedral()
    start = time.time()
    lattice.init(pos)
    print("Init time:", time.time() - start)
    start = time.time()
    out = lattice.compute(val1)
    print("Compute time:", time.time() - start)

    out = out.reshape((h, w, n_valchannels + 1))
    out = out[:, :, :-1] / out[:, :, -1:]

    return out
