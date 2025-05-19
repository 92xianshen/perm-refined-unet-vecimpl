"""
2024.01.15: 2D-index, failed and code removed.
"""

import numpy as np
from sklearn.neighbors import KDTree

class Permutohedral:
    def __init__(self, N: np.int32, d: np.int32):
        self.N, self.d = np.int32(N), np.int32(d)
        self.d1 = np.int32(d + 1)
        self.M = np.int32(0)

        self.canonical = np.zeros((d + 1, d + 1), dtype=np.int32) 
        for i in range(d + 1):
            self.canonical[i, :(d + 1 - i)] = i
            self.canonical[i, (d + 1 - i):] = i - (d + 1)

        self.E = np.zeros((d + 1, d), dtype=np.float32)
        self.E[:] = np.vstack([
            np.ones((d, ), dtype=np.float32), 
            np.diag(-np.arange(d, dtype=np.float32) - 2) + np.triu(np.ones((d, d), dtype=np.float32)), 
        ]) # (d + 1, d)

        # Expected standard deviation of our filter (p.6 in [Adams et al. 2010])
        inv_std_dev = np.sqrt(2. / 3.) * np.float32(d + 1)

        # Compute the diagonal part of E (p.5 in [Adams et al 2010])
        self.scale_factor = np.zeros((d, ), dtype=np.float32)
        self.scale_factor[:] = 1. / np.sqrt((np.arange(d, dtype=np.float32) + 2) * (np.arange(d, dtype=np.float32) + 1)) * inv_std_dev # (d, )

        self.diff_valid = np.zeros((d + 1, d + 1), dtype=np.int32)
        self.diff_valid[:] = 1 - np.tril(np.ones((d + 1, d + 1), dtype=np.int32)) # (d + 1, d + 1)

        # Alpha is a magic scaling constant (write Andrew if you really wanna understand this)
        self.alpha = np.float32(1. / (1. + np.float_power(2., -d)))

        # jiaolibin: Helper constant values (matrices).
        # self.diagd = np.diag(np.ones((d + 1, ), dtype=np.short) * d) # (d + 1, )
        # self.diag1 = np.diag(np.ones((d + 1, ), dtype=np.short)) # (d + 1, )
        self.dI = d * np.eye((d + 1), dtype=np.short) # (d + 1, d + 1)
        self.I = np.eye((d + 1), dtype=np.short) # (d + 1, d + 1)

        self.os, self.ws, self.blur_neighbors = None, None, None

    def init(self, feature):
        # - Compute the simplex each feature lies in
        # - !!! Shape of feature [N, d], i.e., channel-last
        # - Elevate the feature (y = Ep, see p.5 in [Adams et al. 2010])
        cf = feature * self.scale_factor[np.newaxis, :] # (N, d)
        elevated = np.matmul(cf, self.E.T) # (N, d + 1)

        # - Find the closest 0-colored simplex through rounding
        down_factor = np.float32(1.) / np.float32(self.d1)
        up_factor = np.float32(self.d1)
        v = down_factor * elevated # (N, d + 1)
        up = np.ceil(v, dtype=np.float32) * up_factor # (N, d + 1)
        down = np.floor(v, dtype=np.float32) * up_factor # (N, d + 1)
        rem0 = np.where(up - elevated < elevated - down, up, down) # (N, d + 1)
        sum_val = (rem0.sum(axis=1) * down_factor).astype(np.int32) # (N, )

        # - Find the simplex we are in and store it in rank (where rank describes what position coordinate i has in the sorted order of the feature values)
        rank = np.zeros((self.N, self.d1), dtype=np.int32) # (N, d + 1)
        diff = elevated - rem0 # (N, d + 1)
        di = diff[:, :, np.newaxis] # (N, d + 1, 1)
        dj = diff[:, np.newaxis, :] # (N, 1, d + 1)
        di_lt_dj = np.where(di < dj, 1, 0) # (N, d + 1, d + 1)
        di_geq_dj = np.where(di >= dj, 1, 0) # (N, d + 1, d + 1)
        rank += (di_lt_dj * self.diff_valid[np.newaxis, :, :]).sum(axis=2) # (N, d + 1)
        rank += (di_geq_dj * self.diff_valid[np.newaxis, :, :]).sum(axis=1) # (N, d + 1)

        # - If the point doesn't lie on the plane (sum != 0) bring it back
        rank += sum_val[:, np.newaxis] # (N, d + 1)
        ls_zero = rank < 0
        gt_d = rank > self.d
        rank[ls_zero] += self.d1
        rem0[ls_zero] += self.d1
        rank[gt_d] -= self.d1
        rem0[gt_d] -= self.d1

        # - Compute the barycentric coordinates (p.10 in [Adams et al. 2010])
        barycentric = np.zeros((self.N * (self.d + 2), ), dtype=np.float32) # (N * (d + 2), )
        vs = ((elevated - rem0) * down_factor).reshape((-1, )) # (N * (d + 1), )
        idx = ((self.d - rank) + np.arange(self.N)[:, np.newaxis] * (self.d + 2)).reshape((-1, )) # (N * (d + 1), )
        idx1 = ((self.d - rank + 1) + np.arange(self.N)[:, np.newaxis] * (self.d + 2)).reshape((-1, )) # (N * (d + 1), )
        barycentric[idx] += vs
        barycentric[idx1] -= vs
        barycentric = barycentric.reshape((self.N, self.d + 2)) # (N, d + 2)
        barycentric[:, 0] += barycentric[:, self.d1] + np.float32(1.)

        # == test
        barycentric2 = np.zeros((self.N, self.d + 2), dtype=np.float32) # (N, (d + 2), )
        # barycentric2 = barycentric2.transpose(axes=(1, 0)) # (d + 2, N)
        vs = vs.reshape((self.N, self.d1))
        idx2 = self.d - rank # (N, d + 1)
        idx12 = self.d1 - rank # (N, d + 1)
        for i in range(self.d1):
            barycentric2[np.arange(self.N), idx2[:, i]] += vs[:, i]
            barycentric2[np.arange(self.N), idx12[:, i]] -= vs[:, i]
        barycentric2[:, 0] += barycentric2[:, self.d1] + np.float32(1.)

        print("==", np.allclose(barycentric, barycentric2))


        # - Compute all vertices and their offset
        canonical_ext = np.transpose(self.canonical.T[rank], axes=(0, 2, 1)) # (N, d + 1, d + 1)

        # - Get coordinate vector in lattice
        keys = (rem0[:, np.newaxis, :self.d]).astype(np.int32) + canonical_ext[:, :, :self.d] # (N, d + 1, d)
        keys = keys.reshape(((self.N * self.d1), self.d)) # (N * (d + 1), d)
        uniq_keys = np.unique(keys, axis=0) # (M, d), necessary, consider if the computation framework supports.

        kd_tree = KDTree(uniq_keys) # replacement of hash table, transforming keys of d dimensions to indices
        offsets = kd_tree.query(keys, return_distance=False) # (N * (d + 1), 1)

        self.M = uniq_keys.shape[0]

        # - Find the neighbors of each lattice point
        # - Get the number of vertices in the lattice
        # - Create the neighborhood structure
        # - For each of d+1 axes,
        n1s = np.repeat(uniq_keys[:, np.newaxis, :], repeats=self.d1, axis=1) - 1 # (M, d + 1, d)
        n2s = np.repeat(uniq_keys[:, np.newaxis, :], repeats=self.d1, axis=1) + 1 # (M, d + 1, d)
        n1s += (self.dI[np.newaxis, :, :self.d] + self.I[np.newaxis, :, :self.d]) # (M, d + 1, d)
        n2s -= (self.dI[np.newaxis, :, :self.d] + self.I[np.newaxis, :, :self.d]) # (M, d + 1, d)
        n1s = n1s.reshape((self.M * self.d1, self.d)) # (M * (d + 1), d)
        n2s = n2s.reshape((self.M * self.d1, self.d)) # (M * (d + 1), d)

        self.blur_neighbors = np.zeros((self.M * self.d1, 2), dtype=np.int32) # (M * (d + 1), 2)

        n1_dists, n1_inds = kd_tree.query(n1s) # (M * (d + 1), 1), (M * (d + 1), 1)
        self.blur_neighbors[:, 0] = np.where(np.isclose(n1_dists[:, 0], 0), n1_inds[:, 0], -1)
        n2_dists, n2_inds = kd_tree.query(n2s) # (M * (d + 1), 1), (M * (d + 1), 1)
        self.blur_neighbors[:, 1] = np.where(np.isclose(n2_dists[:, 0], 0), n2_inds[:, 0], -1)

        # Shift all values by 1 such that -1 -> 0 (used for blurring)
        self.os = offsets.reshape(-1) + 1 # (N * (d + 1), )
        self.ws = barycentric[:, :self.d1].reshape((-1, )) # (N * (d + 1), )
        self.blur_neighbors = self.blur_neighbors.reshape((self.M, self.d1, 2)) + 1 # (M, d + 1, 2)

    def compute(self, inp, reverse=False):
        """
        Compute.
        shape of inp is (N, value_size)
        """
        value_size = inp.shape[1]
        values = np.zeros((self.M + 2, value_size), dtype=np.float32)

        # - Splat
        for v in np.arange(value_size):
            ch = np.repeat(inp[:, v:(v + 1)], repeats=self.d1, axis=-1) # (N, d + 1)
            ch = ch.reshape((-1, )) # (N * (d + 1), )
            values[:, v] = np.bincount(self.os, weights=(ch * self.ws), minlength=(self.M + 2))

        # - Blur
        j_range = np.arange(self.d, -1, -1) if reverse else np.arange(self.d + 1)
        for j in j_range:
            n1s = self.blur_neighbors[:, j, 0] # (M, )
            n2s = self.blur_neighbors[:, j, 1] # (M, )
            n1_vals = values[n1s] # (M, value_size)
            n2_vals = values[n2s] # (M, value_size)

            values[1:(self.M + 1)] += 0.5 * (n1_vals + n2_vals)

        # - Slice
        out = self.ws[:, np.newaxis] * values[self.os] * self.alpha # (N * (d + 1), value_size)
        out = out.reshape((self.N, self.d1, value_size)) # (N, d + 1, value_size)
        out = out.sum(axis=1) # (N, value_size)

        return out
