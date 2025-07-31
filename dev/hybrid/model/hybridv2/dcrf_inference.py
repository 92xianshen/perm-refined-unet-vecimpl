import numpy as np

from model.hybridv2.permtf import PermTF
from model.hybridv2.pydensecrf import PyDenseCRF

class DCRFInference:
    def __init__(self, H, W, n_classes, d_bifeats, d_spfeats, theta_alpha, theta_beta, theta_gamma, bilateral_compat, spatial_compat, n_iterations):
        self.N = H * W
        self.H = H
        self.W = W
        self.n_classes = n_classes
        self.Ntile = 512 * 512
        self.tiles = self.N // self.Ntile
        self.d_bifeats = d_bifeats
        self.d_spfeats = d_spfeats
        self.theta_alpha = theta_alpha
        self.theta_beta = theta_beta
        self.theta_gamma = theta_gamma
        self.bilateral_compat = bilateral_compat
        self.spatial_compat = spatial_compat
        self.n_iterations = n_iterations

        # self.d1 = self.d + 1
        self.compatibility = -1.

        self.biperm = PermTF(self.Ntile, self.d_bifeats)
        self.spperm = PermTF(self.Ntile, self.d_spfeats)
        self.dcrf = PyDenseCRF(self.H, self.W, self.n_classes, d_bifeats, d_spfeats, self.theta_alpha, self.theta_beta, self.theta_gamma, self.bilateral_compat, self.spatial_compat, self.n_iterations)
        
    def run(self, unary1d, reference1d, out1d):
        # Create feature
        bifeature = np.zeros((self.H * self.W * self.d_bifeats), dtype=np.float32) # (H, W, d)
        spfeature = np.zeros((self.H * self.W * self.d_spfeats), dtype=np.float32)
        self.dcrf.create_feature(reference1d, bifeature, spfeature)

        # Initialize lattices
        bifeature = bifeature.reshape((self.tiles, self.Ntile, self.d_bifeats))
        spfeature = spfeature.reshape((self.tiles, self.Ntile, self.d_spfeats))

        for i in range(self.tiles):
            bifeat = bifeature[i]
            spfeat = spfeature[i]

            pbikey, pbibarycentric = self.biperm.create_lattice(bifeat)
            pspkey, pspbarycentric = self.spperm.create_lattice(spfeat)

            self.dcrf.init_pbilattice(pbikey.numpy().reshape(-1), pbibarycentric.numpy().reshape(-1), self.Ntile)
            self.dcrf.init_psplattice(pspkey.numpy().reshape(-1), pspbarycentric.numpy().reshape(-1), self.Ntile)

        del bifeature
        del spfeature

        self.dcrf.init_blurneighbors()
        # self.dcrf.init_spblurneighbors()

        self.dcrf.compute(unary1d, out1d)