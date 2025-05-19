import numpy as np

from numba import njit

from build_vechashtable.pyvechash import PyVecHashTable

class Permutohedral:
    def __init__(self, N, d):
        self.N_, self.d_, self.M_ = N, d, 0
        self.d1_= d + 1
        self.alpha_ = 1. / (1 + pow(2, -self.d_))

        self.os_flatT_ = np.ndarray((self.d1_, self.N_), dtype=np.int32)
        self.ws_flatT_ = np.ndarray((self.d1_, self.N_), dtype=np.float32)

        self.blur_neighbors_flat_ = None

    # @njit
    def init(self, feature): # feature is channel-last
        table = PyVecHashTable(self.d_, self.N_ * self.d1_)

        elevated = np.ndarray((self.d1_, ), dtype=np.float32)
        rem0 = np.ndarray((self.d1_, ), dtype=np.int32)
        barycentric = np.ndarray((self.d_ + 2), dtype=np.float32)
        rank = np.ndarray((self.d1_, ), dtype=np.short)
        key = np.ndarray((self.d1_, ), dtype=np.short)
        canonical = np.ndarray((self.d1_ * self.d1_, ), dtype=np.short)
        scale_factor = np.ndarray((self.d_, ), dtype=np.float32)

        for i in range(self.d1_):
            for j in range(self.d1_ - i):
                canonical[i * self.d1_ + j] = i
            for j in range(self.d1_ - i, self.d1_):
                canonical[i * self.d1_ + j] = i - self.d1_

        inv_std_dev = np.float32(np.sqrt(2. / 3.) * self.d1_)

        for i in range(self.d_):
            scale_factor[i] = 1. / np.sqrt(np.float32((i + 2) * (i + 1))) * inv_std_dev

        for n in range(self.N_):
            f = feature[n]

            sm = np.float32(0.0)
            for j in range(self.d_, 0, -1):
                cf = f[j - 1] * scale_factor[j - 1]
                elevated[j] = sm - j * cf
                sm += cf
            elevated[0] = sm

            down_factor = np.float32(1. / self.d1_)
            up_factor = np.float32(self.d1_)
            sum_val = np.int32(0)

            for i in range(self.d1_):
                v = down_factor * elevated[i]
                up = np.ceil(v) * up_factor
                down = np.floor(v) * up_factor
                if (up - elevated[i] < elevated[i] - down):
                    rem0[i] = np.short(up)
                else:
                    rem0[i] = np.short(down)

                sum_val += rem0[i] * down_factor

            rank.fill(0)
            for i in range(self.d_):
                di = elevated[i] - rem0[i]
                for j in range(i + 1, self.d1_):
                    if (di < elevated[j] - rem0[j]):
                        rank[i] += 1
                    else:
                        rank[j] += 1

            for i in range(self.d1_):
                rank[i] += sum_val
                if rank[i] < 0:
                    rank[i] += self.d1_
                    rem0[i] += self.d1_
                elif rank[i] > self.d_:
                    rank[i] -= self.d1_
                    rem0[i] -= self.d1_


            barycentric.fill(0)
            for i in range(self.d1_):
                v = (elevated[i] - rem0[i]) * down_factor
                barycentric[self.d_ - rank[i]] += v
                barycentric[self.d1_ - rank[i]] -= v
            barycentric[0] += 1. + barycentric[self.d1_]

            for remainder in range(self.d1_):
                for i in range(self.d_):
                    key[i] = rem0[i] + canonical[remainder * self.d1_ + rank[i]]

                self.os_flatT_[remainder, n] = table.find(key, create=True) + 1
                self.ws_flatT_[remainder, n] = barycentric[remainder]

        
        self.M_ = table.size()
        self.blur_neighbors_flat_ = np.zeros((self.M_, self.d1_, 2), dtype=np.int32)

        n1 = np.zeros((self.d1_, ), dtype=np.short)
        n2 = np.zeros((self.d1_, ), dtype=np.short)

        for j in range(self.d1_):
            for i in range(self.M_):
                table.get_key_by_idx(key, i)

                for k in range(self.d_):
                    n1[k] = key[k] - 1
                    n2[k] = key[k] + 1
                
                n1[j] = key[j] + self.d_
                n2[j] = key[j] - self.d_

                self.blur_neighbors_flat_[i, j, 0] = table.find(n1, create=False) + 1
                self.blur_neighbors_flat_[i, j, 1] = table.find(n2, create=False) + 1


    @njit
    def compute(self, inp_flatT, reversal=False):
        value_size = inp_flatT.shape[0]

        value_flatT = np.zeros((value_size, self.M_ + 2), dtype=np.float32)

        for i in range(self.N_):
            for j in range(self.d1_):
                o = self.os_flatT_[j, i]
                w = self.ws_flatT_[j, i]
                value_flatT[:, o] += w * inp_flatT[:, i]

        for j in range(self.d1_ if not reversal else self.d_, -1 if reversal else -1, -1 if reversal else 1):
            n1s = self.blur_neighbors_flat_[:, j, 0]
            n2s = self.blur_neighbors_flat_[:, j, 1]

            n1_vals = value_flatT[:, n1s]
            n2_vals = value_flatT[:, n2s]

            value_flatT[:, 1:(self.M_ + 1)] += 0.5 * (n1_vals + n2_vals)

        out_flatT = np.zeros_like(inp_flatT)
        for i in range(self.N_):
            for j in range(self.d1_):
                o = self.os_flatT_[j, i]
                w = self.ws_flatT_[j, i]
                out_flatT[:, i] += w * value_flatT[:, o] * self.alpha_

        return out_flatT
