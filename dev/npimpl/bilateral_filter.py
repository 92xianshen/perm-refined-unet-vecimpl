
import numpy as np

from permutohedral_npimpl import PermutohedralNPImpl

def bilateral_filter(value, image, theta_alpha, theta_beta):
    h, w, n_imchannels = image.shape
    _, _, n_valchannels = value.shape

    spatial_pos = np.mgrid[0:h, 0:w][::-1].astype(np.float32).transpose((1, 2, 0)) / theta_alpha
    color_pos = image / theta_beta
    pos = np.concatenate([spatial_pos, color_pos], axis=-1) # (h, w, imchannels + 2)
    pos = pos.reshape((h * w, n_imchannels + 2)) # (N, d)

    val1 = np.concatenate([value, np.ones((h, w, 1), dtype=np.float32)], axis=-1)
    val1 = val1.reshape((h * w, n_valchannels + 1)) # (N, v)

    lattice = PermutohedralNPImpl(N=(h * w), d=(n_imchannels + 2))
    lattice.init(pos)
    out = lattice.compute(val1)

    out = out.reshape((h, w, n_valchannels + 1))
    out = out[:, :, :-1] / out[:, :, -1:]

    return out
