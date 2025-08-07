
import numpy as np

class PermutohedralPVar:
    def __init__(self, N, d):
        self.N_ = N
        self.d_ = d
        self.d1_ = d + 1

        # self.os_ = np.ndarray(self.N_ * self.d1_, dtype=np.int32)
        # self.ws_ = np.ndarray(self.N_ * self.d1_, dtype=np.float32)
        self.key = np.ndarray(self.N_ * self.d1_ * self.d_, dtype=np.short)
        self.barycentric = np.ndarray(self.N_ * (self.d_ + 2), dtype=np.float32)
        # self.blur_neighbors_

        # self.blur_neighbors_ = None

        # self.pytable = PyHashTable(self.d_, self.N_ * self.d1_)

    # def create_blurneighbors_(self, ):
    #     M = self.pytable.size()
    #     self.blur_neighbors_ = np.ndarray(M * self.d1_ * 2)