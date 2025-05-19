"""
暂时不试了。
"""

import time

import numpy as np
from sklearn.neighbors import KDTree

import jax
import jax.numpy as jnp

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
    
    # def __init__(self):
    #     self.N, self.d = 0, 0 # feature.shape[0] or value.shape[0], feature.shape[1]
    #     self.d1 = 0 # d + 1
    #     self.os, self.ws, self.blur_neighbors = None, None, None

    def init(self, feature):
        """
        2025.01.14: Libin initiate jax impl
        """
        def compute_barycentric_and_keys(feature, canonical):
            """
            2025.01.16: try with jax
            2025.01.16: remove helper constants, include immediate computation, such as loop, iteration, etc.
            """

            # # helper constant values, in jax style
            # N, d = feature.shape[0], feature.shape[1]
            # d1 = d + 1

            # canonical = jnp.zeros((d + 1, d + 1), dtype=jnp.int32) 
            # for i in jnp.arange(d + 1):
            #     canonical.at[i, :(d + 1 - i)].set(i)
            #     canonical.at[i, (d + 1 - i):].set(i - (d + 1))

            # E = jnp.zeros((d + 1, d), dtype=jnp.float32)
            # E.at[:].set(jnp.vstack([
            #     jnp.ones((d, ), dtype=jnp.float32), 
            #     jnp.diag(-jnp.arange(d, dtype=jnp.float32) - 2) + jnp.triu(jnp.ones((d, d), dtype=jnp.float32)), 
            # ])) # (d + 1, d)

            # # Expected standard deviation of our filter (p.6 in [Adams et al. 2010])
            # inv_std_dev = jnp.sqrt(2. / 3.) * jnp.float32(d + 1)

            # # Compute the diagonal part of E (p.5 in [Adams et al 2010])
            # scale_factor = jnp.zeros((d, ), dtype=jnp.float32)
            # scale_factor.at[:].set(1. / jnp.sqrt((jnp.arange(d, dtype=jnp.float32) + 2) * (jnp.arange(d, dtype=jnp.float32) + 1)) * inv_std_dev) # (d, )

            # diff_valid = jnp.zeros((d + 1, d + 1), dtype=jnp.int32)
            

            # - init computation starts.
            N, d = feature.shape[0], feature.shape[1]
            d1 = d + 1

            # - Compute the simplex each feature lies in
            # - !!! Shape of feature [N, d], i.e., channel-last
            # - Elevate the feature (y = Ep, see p.5 in [Adams et al. 2010])
            inv_std_dev = jnp.sqrt(2. / 3.) * jnp.float32(d + 1) # Expected standard deviation of our filter (p.6 in [Adams et al. 2010])
            scale_factor = (1. / jnp.sqrt((jnp.arange(d, dtype=jnp.float32) + 2) * (jnp.arange(d, dtype=jnp.float32) + 1)) * inv_std_dev) # (d, ), Compute the diagonal part of E (p.5 in [Adams et al 2010])
            cf = feature * scale_factor[jnp.newaxis, :] # (N, d)
            E = jnp.vstack([
                jnp.ones((d, ), dtype=jnp.float32), 
                jnp.diag(-jnp.arange(d, dtype=jnp.float32) - 2) + jnp.triu(jnp.ones((d, d), dtype=jnp.float32)), 
            ]) # (d + 1, d)
            elevated = jnp.matmul(cf, E.T) # (N, d + 1)

            # - Find the closest 0-colored simplex through rounding
            down_factor = jnp.float32(1.) / jnp.float32(d1)
            up_factor = jnp.float32(d1)
            v = down_factor * elevated # (N, d + 1)
            up = jnp.ceil(v) * up_factor # (N, d + 1)
            down = jnp.floor(v) * up_factor # (N, d + 1)
            rem0 = jnp.where(up - elevated < elevated - down, up, down) # (N, d + 1)
            sum_val = (rem0.sum(axis=1) * down_factor).astype(jnp.int32) # (N, )

            # - Find the simplex we are in and store it in rank (where rank describes what position coordinate i has in the sorted order of the feature values)
            rank = jnp.zeros((N, d1), dtype=np.int32) # (N, d + 1)
            diff_valid = 1 - jnp.tril(jnp.ones((d + 1, d + 1), dtype=jnp.int32)) # (d + 1, d + 1)
            diff = elevated - rem0 # (N, d + 1)
            di = diff[:, :, jnp.newaxis] # (N, d + 1, 1)
            dj = diff[:, jnp.newaxis, :] # (N, 1, d + 1)
            di_lt_dj = jnp.where(di < dj, 1, 0) # (N, d + 1, d + 1)
            di_geq_dj = jnp.where(di >= dj, 1, 0) # (N, d + 1, d + 1)
            rank += (di_lt_dj * diff_valid[jnp.newaxis, :, :]).sum(axis=2) # (N, d + 1)
            rank += (di_geq_dj * diff_valid[jnp.newaxis, :, :]).sum(axis=1) # (N, d + 1)

            # - If the point doesn't lie on the plane (sum != 0) bring it back
            rank += sum_val[:, jnp.newaxis] # (N, d + 1)
            ls_zero = rank < 0
            gt_d = rank > d
            # rank[ls_zero] += self.d1
            # rem0[ls_zero] += jnp.float32(self.d1)
            # rank[gt_d] -= self.d1
            # rem0[gt_d] -= jnp.float32(self.d1)
            rank = jnp.where(ls_zero, rank + d1, rank)
            rem0 = jnp.where(ls_zero, rem0 + jnp.float32(d1), rem0)
            rank = jnp.where(gt_d, rank - d1, rank)
            rem0 = jnp.where(gt_d, rem0 - jnp.float32(d1), rem0)

            # - Compute the barycentric coordinates (p.10 in [Adams et al. 2010])
            barycentric = jnp.zeros((N * (d + 2), ), dtype=jnp.float32) # (N * (d + 2), )
            vs = ((elevated - rem0) * down_factor).reshape((-1, )) # (N * (d + 1), )
            idx = ((d - rank) + jnp.arange(N)[:, jnp.newaxis] * (d + 2)).reshape((-1, )) # (N * (d + 1), )
            idx1 = ((d1 - rank) + jnp.arange(N)[:, jnp.newaxis] * (d + 2)).reshape((-1, )) # (N * (d + 1), )
            # barycentric[idx] += vs
            # barycentric[idx1] -= vs
            # barycentric = barycentric.reshape((self.N, self.d + 2)) # (N, d + 2)
            # barycentric[:, 0] += barycentric[:, self.d1] + jnp.float32(1.)
            barycentric = barycentric.at[idx].add(vs)
            barycentric = barycentric.at[idx1].subtract(vs)
            barycentric = barycentric.reshape((N, d + 2)) # (N, d + 2)
            barycentric = barycentric.at[:, 0].add(barycentric[:, d1] + jnp.float32(1.))

            # - Compute all vertices and their offset
            canonicalT = jnp.transpose(canonical, axes=(1, 0))
            canonical_ext = jnp.transpose(canonicalT[rank], axes=(0, 2, 1)) # (N, d + 1, d + 1)

            # - Get coordinate vector in lattice
            keys = (rem0[:, jnp.newaxis, :d]).astype(jnp.int32) + canonical_ext[:, :, :d] # (N, d + 1, d)
            keys = keys.reshape(((N * d1), d)) # (N * (d + 1), d)

            return barycentric, keys
        
        # self.N, self.d = feature.shape[0], feature.shape[1]
        # self.d1 = self.d + 1
        start = time.time()
        # with jax.profiler.trace("bilateral_filter_profile", create_perfetto_link=True):
        barycentric, keys = jax.jit(compute_barycentric_and_keys)(feature, self.canonical)
        uniq_keys = np.unique(keys, axis=0) # (M, d), necessary, consider if the computation framework supports.
        print("Time of key and bcentric gen:", time.time() - start)

        start = time.time()
        kd_tree = KDTree(uniq_keys) # replacement of hash table, transforming keys of d dimensions to indices
        print("Time of KD-tree building:", time.time() - start)

        start = time.time()
        offsets = kd_tree.query(keys, return_distance=False) # (N * (d + 1), 1)
        print("Time of key query:", time.time() - start)

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

        start = time.time()
        n1_dists, n1_inds = kd_tree.query(n1s) # (M * (d + 1), 1), (M * (d + 1), 1)
        self.blur_neighbors[:, 0] = np.where(np.isclose(n1_dists[:, 0], 0), n1_inds[:, 0], -1)
        n2_dists, n2_inds = kd_tree.query(n2s) # (M * (d + 1), 1), (M * (d + 1), 1)
        self.blur_neighbors[:, 1] = np.where(np.isclose(n2_dists[:, 0], 0), n2_inds[:, 0], -1)
        print("Time of blur neighbor query:", time.time() - start)

        # Shift all values by 1 such that -1 -> 0 (used for blurring)
        self.os = offsets.reshape(-1) + 1 # (N * (d + 1), )
        self.ws = np.asarray(barycentric[:, :self.d1].reshape((-1, ))) # (N * (d + 1), )
        self.blur_neighbors = self.blur_neighbors.reshape((self.M, self.d1, 2)) + 1 # (M, d + 1, 2)

    # @jax.jit
    def compute(self, inp, reverse=False):
        """
        Compute.
        shape of inp is (N, value_size)
        """
        def jax_compute(inp, reverse):
            inpT = jnp.transpose(inp, axes=(1, 0))

            def splat_channelwise(ch):
                ch_ext = jnp.tile(ch[:, jnp.newaxis], (1, self.d1)) # (N, (d + 1))
                ch_flat = ch_ext.reshape((-1, )) # (N * (d + 1), )
                val_ch = jnp.bincount(self.os, weights=(ch_flat * self.ws), minlength=(self.M + 2))
                return val_ch
            
            valueT = jax.vmap(splat_channelwise)(inpT)
            value = jnp.transpose(valueT, axes=(1, 0))

            value_size = inp.shape[1]
            # values = jnp.zeros((self.M + 2, value_size), dtype=jnp.float32)

            # # - Splat
            # for v in jnp.arange(value_size):
            #     ch = jnp.repeat(inp[:, v:(v + 1)], repeats=self.d1, axis=-1) # (N, d + 1)
            #     ch = ch.reshape((-1, )) # (N * (d + 1), )
            #     # values[:, v] = jnp.bincount(self.os, weights=(ch * self.ws), minlength=(self.M + 2))
            #     values.at[:, v].set(jnp.bincount(self.os, weights=(ch * self.ws), minlength=(self.M + 2)))

            # - Blur
            j_range = jnp.arange(self.d, -1, -1) if reverse else jnp.arange(self.d + 1)
            for j in j_range:
                n1s = self.blur_neighbors[:, j, 0] # (M, )
                n2s = self.blur_neighbors[:, j, 1] # (M, )
                n1_vals = value[n1s] # (M, value_size)
                n2_vals = value[n2s] # (M, value_size)

                # values[1:(self.M + 1)] += 0.5 * (n1_vals + n2_vals)
                value = value.at[1:(self.M + 1)].add(0.5 * (n1_vals + n2_vals))

            # - Slice
            # Alpha is a magic scaling constant (write Andrew if you really wanna understand this)
            # alpha = jnp.float32(1. / (1. + np.float_power(2., -self.d)))
            out = self.ws[:, np.newaxis] * value[self.os] * self.alpha # (N * (d + 1), value_size)
            out = out.reshape((self.N, self.d1, value_size)) # (N, d + 1, value_size)
            out = out.sum(axis=1) # (N, value_size)

            return out
        
        return np.asarray(jax.jit(jax_compute)(inp, reverse=reverse))
