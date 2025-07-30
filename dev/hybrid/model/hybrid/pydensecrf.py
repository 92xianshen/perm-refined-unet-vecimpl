import numpy as np
import tensorflow as tf

# from permtf import PermTF
# from pypermcpp import PyPermCPP
from model.hybrid.permutohedral import Permutohedral
from model.hybrid.cppdensecrf import CppDenseCRF

class PyDenseCRF:
    def __init__(self, H, W, n_classes, d_bifeats, d_spfeats, theta_alpha, theta_beta, theta_gamma, bilateral_compat, spatial_compat, n_iterations):
        self.N = H * W
        self.H = H
        self.W = W
        self.n_classes = n_classes
        self.Ntile = 512 * 512
        self.d = d_bifeats
        self.theta_alpha = theta_alpha
        self.theta_beta = theta_beta
        self.theta_gamma = theta_gamma
        self.bilateral_compat = bilateral_compat
        self.spatial_compat = spatial_compat
        self.n_iterations = n_iterations

        self.d1 = self.d + 1
        self.compatibility = -1.
        # self.permcpp = PyPermCPP(self.N, self.d)
        # self.permtf = PermTF(self.Ntile, self.d)

        self.bilateral_lattice = Permutohedral(self.N, self.Ntile, self.d)
        self.spatial_lattice = Permutohedral(self.N, self.Ntile, 2)
        self.dcrf = CppDenseCRF(self.H, self.W, self.n_classes, d_bifeats, d_spfeats, self.theta_alpha, self.theta_beta, self.theta_gamma, self.bilateral_compat, self.spatial_compat, self.n_iterations)

    def inference(self, unary: np.ndarray[float], reference: np.ndarray[float], out: np.ndarray[int]) -> np.ndarray:
        # def softmax(x, out, axis=None):
        #     """
        #     x and out shapes: (N, d)
        #     """
        #     # x_max = np.max(x, axis=axis, keepdims=True)
        #     # exp_x_shifted = np.exp(x - x_max)
        #     # exp_x_shifted / np.sum(exp_x_shifted, axis=axis, keepdims=True)
        
        #     out[:] = np.max(x, axis=axis, keepdims=True)
        #     out[:] = np.exp(x - out)
        #     out[:] = out / np.sum(out, axis=axis, keepdims=True)
        
        # bifeature[..., :2] = np.mgrid[0:self.H, 0:self.W][::-1].transpose((1, 2, 0)) / self.theta_alpha
        # bifeature[..., 2:] = reference.reshape((self.H, self.W, self.d - 2)) / self.theta_beta
        # spfeature = np.mgrid[0:self.H, 0:self.W][::-1].transpose((1, 2, 0)) / self.theta_gamma # (H, W, 2)

        # # Create feature
        bifeature = np.zeros((self.H * self.W * self.d), dtype=np.float32) # (H, W, d)
        spfeature = np.zeros((self.H * self.W * 2), dtype=np.float32)
        self.dcrf.create_feature(reference, bifeature, spfeature)

        # Initialize lattices
        self.bilateral_lattice.init(bifeature)
        self.spatial_lattice.init(spfeature)
        print("Lattices initialized.")

        # One-sided normalization value
        all_one = np.ones((self.N), dtype=np.float32) # (N, 1)
        bilateral_norm_val = np.zeros((self.N), dtype=np.float32) # (N, 1)
        spatial_norm_val = np.zeros((self.N), dtype=np.float32) # (N, 1)
        self.bilateral_lattice.compute(all_one, 1, False, bilateral_norm_val)
        self.spatial_lattice.compute(all_one, 1, False, spatial_norm_val)
        del all_one

        # Initialize Q
        Q = out # Q == out, (N * C)
        self.dcrf.initQ(unary, Q)
        # unary = unary.reshape((self.N, self.n_classes)) # (N * C) ==> (N, C)
        # out = out.reshape((self.N, self.n_classes)) # (N * C) ==> (N, C)
        
        # softmax(-unary, Q, axis=-1) # ()

        bilateral_out = np.zeros((self.N * self.n_classes), dtype=np.float32) # (N, C)
        spatial_out = np.zeros((self.N * self.n_classes), dtype=np.float32) # (N, C)

        for i in range(self.n_iterations):
            print("CRF iteration {}...".format(i + 1))
            # tmp1 = -unary

            self.bilateral_lattice.compute(Q, self.n_classes, False, bilateral_out)
            self.spatial_lattice.compute(Q, self.n_classes, False, spatial_out)


            # bilateral_out /= bilateral_norm_val
            # spatial_out /= spatial_norm_val

            # message_passing = self.bilateral_compat * bilateral_out + self.spatial_compat * spatial_out

            # pairwise = self.compatibility * message_passing

            # Q[:] = -unary - pairwise
            self.dcrf.normDimWise(bilateral_out, spatial_out, bilateral_norm_val, spatial_norm_val, unary, Q)

            # softmax(Q, Q, axis=-1)
            self.dcrf.softmax(Q, Q)

        # out = 
        # out[:] = Q.argmax(axis=-1)

        # return MAP

