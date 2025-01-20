/*
    Copyright (c) 2013, Philipp Krähenbühl, Libin Jiao
    All rights reserved.

    Redistribution and use in source and binary forms, with or without
    modification, are permitted provided that the following conditions are met:
        * Redistributions of source code must retain the above copyright
        notice, this list of conditions and the following disclaimer.
        * Redistributions in binary form must reproduce the above copyright
        notice, this list of conditions and the following disclaimer in the
        documentation and/or other materials provided with the distribution.
        * Neither the name of the Stanford University nor the
        names of its contributors may be used to endorse or promote products
        derived from this software without specific prior written permission.

    THIS SOFTWARE IS PROVIDED BY Philipp Krähenbühl and Libin Jiao ''AS IS''
   AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
   IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
   ARE DISCLAIMED. IN NO EVENT SHALL Philipp Krähenbühl BE LIABLE FOR ANY
    DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
    (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
   SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
   CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
   LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
   OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH
   DAMAGE.
*/

#include <stdbool.h>
#include <string.h>

#include "Eigen/Dense"
#include <iostream>
#include <vector>

// using namespace std;
using namespace Eigen;

class HashTable {
  protected:
    size_t key_size_, filled_, capacity_;
    std::vector<short> keys_;
    std::vector<int> table_;
    void grow() {
        // Create the new memory and copy the values in
        int old_capacity = capacity_;
        capacity_ *= 2;
        std::vector<short> old_keys((old_capacity + 10) * key_size_);
        std::copy(keys_.begin(), keys_.end(), old_keys.begin());
        std::vector<int> old_table(capacity_, -1);

        // Swap the memory
        table_.swap(old_table);
        keys_.swap(old_keys);

        // Reinsert each element
        for (int i = 0; i < old_capacity; i++)
            if (old_table[i] >= 0) {
                int e = old_table[i];
                size_t h = hash(getKey(e)) % capacity_;
                for (; table_[h] >= 0; h = h < capacity_ - 1 ? h + 1 : 0)
                    ;
                table_[h] = e;
            }
    }
    size_t hash(const short *k) {
        size_t r = 0;
        for (size_t i = 0; i < key_size_; i++) {
            r += k[i];
            r *= 1664525;
        }
        return r;
    }

  public:
    explicit HashTable(int key_size, int n_elements)
        : key_size_(key_size), filled_(0), capacity_(2 * n_elements),
          keys_((capacity_ / 2 + 10) * key_size_), table_(2 * n_elements, -1) {}
    int size() const { return filled_; }
    void reset() {
        filled_ = 0;
        std::fill(table_.begin(), table_.end(), -1);
    }
    int find(const short *k, bool create = false) {
        if (2 * filled_ >= capacity_)
            grow();
        // Get the hash value
        size_t h = hash(k) % capacity_;
        // Find the element with he right key, using linear probing
        while (1) {
            int e = table_[h];
            if (e == -1) {
                if (create) {
                    // Insert a new key and return the new id
                    for (size_t i = 0; i < key_size_; i++)
                        keys_[filled_ * key_size_ + i] = k[i];
                    return table_[h] = filled_++;
                } else
                    return -1;
            }
            // Check if the current key is The One
            bool good = true;
            for (size_t i = 0; i < key_size_ && good; i++)
                if (keys_[e * key_size_ + i] != k[i])
                    good = false;
            if (good)
                return e;
            // Continue searching
            h++;
            if (h == capacity_)
                h = 0;
        }
    }
    const short *getKey(int i) const { return &keys_[i * key_size_]; }
};

class Permutohedral {
  protected:
    /* data */
    int N_ = 0, d_ = 0, d1_ = 0, M_ = 0;
    float alpha_ = 0.f;
    /*
    Eigen requires channel-first matrices, denoted by 'T'. This implementation
    requires flatten factors, denoted by 'flat'.
    */
    MatrixXi os_flatT_; // [d + 1, N]
    MatrixXf ws_flatT_; // [d + 1, N]

    // Channel-last property of blur_neighbors matrices facilitates memory
    // access.
    MatrixXi blur_neighbors1_flat_, blur_neighbors2_flat_; // [M, d + 1]
  public:
    Permutohedral(int N, int d) {
        N_ = N;
        d_ = d;
        d1_ = d + 1;

        // For slicing
        alpha_ = 1.f / (1 + powf(2, -d_));

        os_flatT_.resize(d1_, N_);
        ws_flatT_.resize(d1_, N_);
    }

    // Shape of `featureT` is [d, N], channel-first.
    void init(const MatrixXf &FeatureT) {
        // Compute the lattice coordinates for each feature [there is going to
        // be a lot of magic here]
        HashTable hash_table(d_, N_ * d1_);

        // Allocate local memories
        MatrixXf Elevated(d1_, N_);
        // MatrixXi Rem0(d1_, N_);
        MatrixXf Barycentric(d_ + 2, N_);
        Matrix<short, Dynamic, Dynamic> Rank(d1_, N_);
        Matrix<short, Dynamic, Dynamic> Key(d_, N_);
        Matrix<short, Dynamic, Dynamic> Canonical(d1_, d1_);
        VectorXf scale_factors(d_);

        // Compute the canonical simplex
        for (short i = 0; i < d1_; i++) {
            Canonical(i, seq(0, d_ - i)).array() = i;
            Canonical(i, seq(d1_ - i, d_)).array() = i - d1_;
        }

        // Expected standard deviation of our filter (p.6 in [Adams et al.,
        // 2010])
        float inv_std_dev = sqrt(2. / 3.) * d1_;
        // Compute the diagonal part of E (p.5 in [Adams et al., 2010])
        for (int i = 0; i < d_; i++) {
            scale_factors(i) =
                1. / sqrt(double((i + 2) * (i + 1))) * inv_std_dev;
        }

        // Compute the simplex each feature lies in
        // Libin: Vectorization
        // Elevate the feature (y = Ep, see p.5 in [Adams et al., 2010])
        VectorXf sms(N_);
        sms.setZero();
        for (int j = d_; j > 0; j--) {
            VectorXf cfs = FeatureT(j - 1, all) * scale_factors(j - 1);
            Elevated(j, all).noalias() = sms - j * cfs;
            sms.noalias() += cfs;
        }
        Elevated(0, all).noalias() = sms;

        // Find the closest 0-colored simplex through rounding
        float down_factor = 1.f / d1_;
        float up_factor = d1_;
        MatrixXf V = down_factor * Elevated;
        MatrixXf Up = up_factor * V.array().ceil();
        MatrixXf Down = up_factor * V.array().floor();
        Matrix<short, Dynamic, Dynamic> Rem0 =
            ((Up - Elevated).array() < (Elevated - Down).array())
                .select(Up, Down)
                .cast<short>();
        Matrix<short, Dynamic, Dynamic> sums =
            (down_factor * Rem0.colwise().sum().cast<float>()).cast<short>();

        // Find the simplex we are in and store it in rank
        // (where rank describes what position coordinate i has
        // in the sorted order of the feature values)
        Rank.setZero();
        for (int i = 0; i < d_; i++) {
            VectorXf dis = Elevated(i, all) - Rem0(i, all).cast<float>();
            for (int j = i + 1; j < d1_; j++) {
                VectorXf djs = Elevated(j, all) - Rem0(j, all).cast<float>();
                Rank(i, all) =
                    (dis.array() < djs.array())
                        .select(Rank(i, all).array() + 1, Rank(i, all));
                Rank(j, all) =
                    (dis.array() >= djs.array())
                        .select(Rank(j, all).array() + 1, Rank(j, all));
            }
        }

        // If the point doesn't lie on the plane (sum != 0) bring it back
        Rank.rowwise() += sums(0, all);
        Rank = (Rank.array() < 0).select(Rank.array() + d1_, Rank);
        Rem0 = (Rank.array() < 0).select(Rem0.array() + d1_, Rem0);
        Rank = (Rank.array() > d_).select(Rank.array() - d1_, Rank);
        Rem0 = (Rank.array() > d_).select(Rem0.array() - d1_, Rem0);

        // Compute the barycentric coordinates (p.10 in [Adams et
        // al., 2010])
        Barycentric.setZero();
        // Barycentric = Barycentric.reshaped().eval();
        MatrixXf vs = down_factor * (Elevated - Rem0.cast<float>());
        Matrix<short, Dynamic, Dynamic> Ranges(d1_, N_);
        for (int i = 0; i < N_; i++) {
            Ranges(i, all).array() += i * (d_ + 2);
        }
        Matrix<short, Dynamic, Dynamic>
            idxs = ((short)d_ - Rank.array()) + Ranges.array(),
            idx1s = ((short)d1_ - Rank.array()) + Ranges.array();
        Barycentric.reshaped()(idxs.reshaped()).noalias() += vs;
        Barycentric.reshaped()(idx1s.reshaped()).noalias() -= vs;
        // Barycentric = Barycentric.reshaped(d_ + 2, N_);
        // Wrap around
        Barycentric(0, all).array() += 1. + Barycentric(d1_, all).array();

        // Compute all vertices and their offset
        for (int remainder = 0; remainder < d1_; remainder++) {
            for (int i = 0; i < d_; i++) {
                Key(i, all).noalias() =
                    Rem0(i, all) + Canonical(remainder, Rank(i, all));
            }
            for (int n = 0; n < N_; n++) {
                os_flatT_(remainder, n) = hash_table.find(&Key(0, n), true) + 1;
            }
        }
        ws_flatT_.noalias() = Barycentric(seq(0, d_), all);

        // Free mem. not necessary.

        // Find the neighbors of each lattice point

        // Get the number of vertices in the lattice
        M_ = hash_table.size();
        blur_neighbors1_flat_.resize(M_, d_ + 1);
        blur_neighbors2_flat_.resize(M_, d_ + 1);

        short *n1 = new short[d_ + 1];
        short *n2 = new short[d_ + 1];

        // For each of d + 1 axes,
        for (int j = 0; j < d_ + 1; j++) {
            for (int i = 0; i < M_; i++) {
                const short *key = hash_table.getKey(i);

                for (int k = 0; k < d_; k++) {
                    n1[k] = key[k] - 1;
                    n2[k] = key[k] + 1;
                }
                n1[j] = key[j] + d_;
                n2[j] = key[j] - d_;

                blur_neighbors1_flat_(i, j) = hash_table.find(n1) + 1;
                blur_neighbors2_flat_(i, j) = hash_table.find(n2) + 1;
            }
        }

        delete[] n1;
        delete[] n2;
    }
    void compute(const MatrixXf &inp_flatT, const bool reversal,
                 MatrixXf &out_flatT) {
        int value_size = inp_flatT.rows();

        MatrixXf values_flatT(value_size, M_ + 2);
        values_flatT.setZero();

        // Splatting
        for (int i = 0; i < N_; i++) {
            for (int j = 0; j < d_ + 1; j++) {
                int o = os_flatT_(j, i);
                float w = ws_flatT_(j, i);
                values_flatT(all, o) += w * inp_flatT(all, i);
            }
        }

        // Blurring
        for (int j = reversal ? d_ : 0; j <= d_ && j >= 0;
             reversal ? j-- : j++) {
            VectorXi n1s = blur_neighbors1_flat_(all, j);
            VectorXi n2s = blur_neighbors2_flat_(all, j);

            MatrixXf n1_vals = values_flatT(all, n1s);
            MatrixXf n2_vals = values_flatT(all, n2s);

            values_flatT(all, seq(1, M_)) += 0.5 * (n1_vals + n2_vals);
        }

        out_flatT.setZero();

        for (int i = 0; i < N_; i++) {
            for (int j = 0; j < d_ + 1; j++) {
                int o = os_flatT_(j, i);
                float w = ws_flatT_(j, i);
                out_flatT(all, i) += w * values_flatT(all, o) * alpha_;
            }
        }
    }

    void testInit(const float *feature1d) {
        const MatrixXf FeatureT = Map<const MatrixXf>(feature1d, d_, N_);
        init(FeatureT);
    }

    void testCompute(const float *inp_1d, const int N, const int value_size,
                     const bool reversal, float *out_1d) {
        const MatrixXf _inp_flatT = Map<const MatrixXf>(inp_1d, value_size, N);
        MatrixXf _out_flatT(value_size, N);
        compute(_inp_flatT, reversal, _out_flatT);

        Map<MatrixXf> out_flatT(out_1d, value_size, N);
        out_flatT = _out_flatT;
    }

    ~Permutohedral() {}
};