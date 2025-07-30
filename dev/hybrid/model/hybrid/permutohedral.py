import numpy as np
import tensorflow as tf

from model.hybrid.permtf import PermTF
from model.hybrid.pypermcpp import PyPermCPP

class Permutohedral:
    def __init__(self, N, Ntile, d):
        self.N = N
        self.Ntile = Ntile
        self.d = d
        self.d1 = self.d + 1
        self.permcpp = PyPermCPP(self.N, self.d)
        self.permtf = PermTF(self.Ntile, self.d)

    def init(self, feature):
        """
        feature shape: (h, w, d)
        """
        # tile-wise
        # feature = feature.reshape((-1, self.d))
        feature = feature.reshape((-1, self.Ntile, self.d))
        
        for feat in feature:
            key, barycentric = self.permtf.create_lattice(feat)
            key, barycentric = key.numpy(), barycentric.numpy()
            key = key.reshape(-1)
            barycentric = barycentric.reshape(-1)
            self.permcpp.init_lattice(key, barycentric, self.Ntile)

        self.permcpp.init_bneighbors()

    def compute(self, inp, vsize, reversal, out):
        """
        inp shape: (h, w, d), out shape: (h, w, d)
        """
        inp1d = inp.reshape(-1)
        out1d = out.reshape(-1)
        self.permcpp.compute(inp1d, vsize, reversal, out1d)