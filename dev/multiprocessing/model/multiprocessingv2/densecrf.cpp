/*
    Based on `densecrf_norm.h`
    No EIGEN
*/

#include "densecrf.h"

void pinit(const float *pfeature, int pN, int d, short *pkey,
           float *pbarycentric) {
    // Compute the lattice coordinates for each feature [there is going to
    // be a lot of magic here]

    int d_ = d;
    int d1_ = d + 1;
    int pN_ = pN;

    // Allocate local memories
    float *elevated = new float[d1_];
    int *rem0 = new int[d1_];
    // float *barycentric = new float[d_ + 2];
    short *rank = new short[d1_];
    // short *key = new short[d_];
    short *canonical = new short[d1_ * d1_];
    float *scale_factor = new float[d_];

    // short *pkey = key_ + Nfilled_ * d1_ * d_;
    // float *pw = ws_ + Nfilled_ * d1_;

    // Compute the canonical simplex
    for (int i = 0; i < d1_; i++) {
        for (int j = 0; j < d1_ - i; j++) {
            canonical[i * d1_ + j] = i;
        }
        for (int j = d1_ - i; j < d1_; j++) {
            canonical[i * d1_ + j] = i - d1_;
        }
    }

    // Expected standard deviation of our filter (p.6 in [Adams et al.,
    // 2010])
    float inv_std_dev = sqrtf(2. / 3.) * d1_;
    // Compute the diagonal part of E (p.5 in [Adams et al., 2010])
    for (int i = 0; i < d_; i++) {
        scale_factor[i] = 1.f / sqrtf((i + 2) * (i + 1)) * inv_std_dev;
    }

    // Compute the simplex each feature lies in
    for (int n = 0; n < pN_; n++) {
        // Elevate the feature (y = Ep, see p.5 in [Adams et al., 2010])
        const float *f = &pfeature[n * d_];
        float *barycentric = &pbarycentric[n * (d_ + 2)];
        short *key = &pkey[n * d1_ * d_];

        // sm contains the sum of 1...n of our feature vector
        float sm = 0;
        for (int j = d_; j > 0; j--) {
            float cf = f[j - 1] * scale_factor[j - 1];
            elevated[j] = sm - j * cf;
            sm += cf;
        }
        elevated[0] = sm;

        // Find the closest 0-colored simplex through rounding
        float down_factor = 1.f / d1_;
        float up_factor = d1_;
        int sum = 0;
        for (int i = 0; i < d1_; i++) {
            int rd2;
            float v = down_factor * elevated[i];
            float up = ceilf(v) * up_factor;
            float down = floorf(v) * up_factor;

            short cond = (up - elevated[i] < elevated[i] - down);
            rd2 = (short)up * cond + (short)down * (1 - cond);

            rem0[i] = rd2;
            sum += rd2 * down_factor;
        }

        // Find the simplex we are in and store it in rank (where rank
        // describes what position coordinate i has in the sorted order of
        // the feature values)
        fill(rank, rank + d1_, 0);
        for (int i = 0; i < d_; i++) {
            double di = elevated[i] - rem0[i];
            for (int j = i + 1; j < d1_; j++) {
                short cond = (elevated[i] - rem0[i]) < (elevated[j] - rem0[j]);
                rank[i] += 1 * cond;
                rank[j] += 1 * (1 - cond);
            }
        }

        // If the point doesn't lie on the plane (sum != 0) bring it back
        for (int i = 0; i < d1_; i++) {
            rank[i] += sum;

            short cond1 = rank[i] < 0;
            short cond2 = rank[i] > d_;
            rank[i] += d1_ * cond1 - d1_ * cond2;
            rem0[i] += d1_ * cond1 - d1_ * cond2;
        }

        // Compute the barycentric coordinates (p.10 in [Adams et al.,
        // 2010])
        fill(barycentric, barycentric + d_ + 2, 0);
        for (int i = 0; i < d1_; i++) {
            float v = (elevated[i] - rem0[i]) * down_factor;
            barycentric[d_ - rank[i]] += v;
            barycentric[d1_ - rank[i]] -= v;
        }
        // Wrap around
        barycentric[0] += 1.f + barycentric[d1_];

        // Compute all vertices and their offset
        for (int remainder = 0; remainder < d1_; remainder++) {
            for (int i = 0; i < d_; i++) {
                // key[i] =

                key[remainder * d_ + i] =
                    rem0[i] + canonical[remainder * d1_ + rank[i]];
            }

            // os_[n * d1_ + remainder] = table_->find(key, true) + 1;

            // pw[n * d1_ + remainder] = barycentric[remainder];
        }
    }

    // Delete
    delete[] elevated;
    delete[] rem0;
    // delete[] barycentric;
    delete[] rank;
    // delete[] key;
    delete[] canonical;
    delete[] scale_factor;
}

Permutohedral::Permutohedral(int N, int d) {
    N_ = N;
    d_ = d;

    d1_ = d + 1;

    // Slicing
    alpha_ = 1.f / (1.f + powf(2, -d_));

    os_ = new int[N_ * d1_];   // channel-last
    ws_ = new float[N_ * d1_]; // channel-last

    // key_ = key;
}

void Permutohedral::init(const float *feature) {
    HashTable table(d_, N_ * d1_);
    // Compute the lattice coordinates for each feature [there is going to
    // be a lot of magic here]

    // Allocate local memories
    float *elevated = new float[d1_];
    int *rem0 = new int[d1_];
    float *barycentric = new float[d_ + 2];
    short *rank = new short[d1_];
    short *key = new short[d_];
    short *canonical = new short[d1_ * d1_];
    float *scale_factor = new float[d_];

    // Compute the canonical simplex
    for (int i = 0; i < d1_; i++) {
        for (int j = 0; j < d1_ - i; j++) {
            canonical[i * d1_ + j] = i;
        }
        for (int j = d1_ - i; j < d1_; j++) {
            canonical[i * d1_ + j] = i - d1_;
        }
    }

    // Expected standard deviation of our filter (p.6 in [Adams et al.,
    // 2010])
    float inv_std_dev = sqrtf(2. / 3.) * d1_;
    // Compute the diagonal part of E (p.5 in [Adams et al., 2010])
    for (int i = 0; i < d_; i++) {
        scale_factor[i] = 1.f / sqrtf((i + 2) * (i + 1)) * inv_std_dev;
    }

    // Compute the simplex each feature lies in
    for (int n = 0; n < N_; n++) {
        // Elevate the feature (y = Ep, see p.5 in [Adams et al., 2010])
        const float *f = &feature[n * d_];

        // sm contains the sum of 1...n of our feature vector
        float sm = 0;
        for (int j = d_; j > 0; j--) {
            float cf = f[j - 1] * scale_factor[j - 1];
            elevated[j] = sm - j * cf;
            sm += cf;
        }
        elevated[0] = sm;

        // Find the closest 0-colored simplex through rounding
        float down_factor = 1.f / d1_;
        float up_factor = d1_;
        int sum = 0;
        for (int i = 0; i < d1_; i++) {
            int rd2;
            float v = down_factor * elevated[i];
            float up = ceilf(v) * up_factor;
            float down = floorf(v) * up_factor;

            short cond = (up - elevated[i] < elevated[i] - down);
            rd2 = (short)up * cond + (short)down * (1 - cond);

            rem0[i] = rd2;
            sum += rd2 * down_factor;
        }

        // Find the simplex we are in and store it in rank (where rank
        // describes what position coordinate i has in the sorted order of
        // the feature values)
        fill(rank, rank + d1_, 0);
        for (int i = 0; i < d_; i++) {
            double di = elevated[i] - rem0[i];
            for (int j = i + 1; j < d1_; j++) {
                short cond = (elevated[i] - rem0[i]) < (elevated[j] - rem0[j]);
                rank[i] += 1 * cond;
                rank[j] += 1 * (1 - cond);
            }
        }

        // If the point doesn't lie on the plane (sum != 0) bring it back
        for (int i = 0; i < d1_; i++) {
            rank[i] += sum;

            short cond1 = rank[i] < 0;
            short cond2 = rank[i] > d_;
            rank[i] += d1_ * cond1 - d1_ * cond2;
            rem0[i] += d1_ * cond1 - d1_ * cond2;
        }

        // Compute the barycentric coordinates (p.10 in [Adams et al.,
        // 2010])
        fill(barycentric, barycentric + d_ + 2, 0);
        for (int i = 0; i < d1_; i++) {
            float v = (elevated[i] - rem0[i]) * down_factor;
            barycentric[d_ - rank[i]] += v;
            barycentric[d1_ - rank[i]] -= v;
        }
        // Wrap around
        barycentric[0] += 1.f + barycentric[d1_];

        // Compute all vertices and their offset
        for (int remainder = 0; remainder < d1_; remainder++) {
            for (int i = 0; i < d_; i++) {
                key[i] = rem0[i] + canonical[remainder * d1_ + rank[i]];
            }

            os_[n * d1_ + remainder] = table.find(key, true) + 1;
            ws_[n * d1_ + remainder] = barycentric[remainder];
        }
    }

    // Delete
    delete[] elevated;
    delete[] rem0;
    delete[] barycentric;
    delete[] rank;
    delete[] key;
    delete[] canonical;
    delete[] scale_factor;

    // Find the neighbors of each lattice point

    // Get the number of vertices in the lattice
    M_ = table.size();

    blur_neighbors_ = new int[d1_ * M_ * 2];

    short *n1 = new short[d1_];
    short *n2 = new short[d1_];

    // For each of d + 1 axes,
    for (int j = 0; j < d1_; j++) {
        for (int i = 0; i < M_; i++) {
            const short *key = table.getKey(i);

            for (int k = 0; k < d_; k++) {
                n1[k] = key[k] - 1;
                n2[k] = key[k] + 1;
            }
            n1[j] = key[j] + d_;
            n2[j] = key[j] - d_;

            blur_neighbors_[j * M_ * 2 + i * 2 + 0] = table.find(n1) + 1;
            blur_neighbors_[j * M_ * 2 + i * 2 + 1] = table.find(n2) + 1;
        }
    }

    delete[] n1;
    delete[] n2;
}

void Permutohedral::create_hashtable() { table_ = new HashTable(d_, N_ * d1_); }

void Permutohedral::del_hashtable() { delete table_; }

void Permutohedral::pinit(short *pkey, float *pbarycentric, int pN,
                          int Nfilled) {
    int *os = os_ + Nfilled * d1_;
    float *ws = ws_ + Nfilled * d1_;
    for (int n = 0; n < pN; n++) {
        for (int remainder = 0; remainder < d1_; remainder++) {
            os[n * d1_ + remainder] =
                table_->find(pkey + (n * d1_ + remainder) * d_, true) + 1;
            ws[n * d1_ + remainder] = pbarycentric[n * (d_ + 2) + remainder];
        }
    }
}

void Permutohedral::seqinit() {
    // Get the number of vertices in the lattice
    M_ = table_->size();

    blur_neighbors_ = new int[d1_ * M_ * 2];

    short *n1 = new short[d1_];
    short *n2 = new short[d1_];

    // For each of d + 1 axes,
    for (int j = 0; j < d1_; j++) {
        for (int i = 0; i < M_; i++) {
            const short *key = table_->getKey(i);

            for (int k = 0; k < d_; k++) {
                n1[k] = key[k] - 1;
                n2[k] = key[k] + 1;
            }
            n1[j] = key[j] + d_;
            n2[j] = key[j] - d_;

            blur_neighbors_[j * M_ * 2 + i * 2 + 0] = table_->find(n1) + 1;
            blur_neighbors_[j * M_ * 2 + i * 2 + 1] = table_->find(n2) + 1;
        }
    }

    delete[] n1;
    delete[] n2;
}

void Permutohedral::delete_blurneighbors_() { delete[] blur_neighbors_; }

void Permutohedral::compute(const float *inp, const int value_size,
                            const bool reversal, float *out) {
    float *value = new float[(M_ + 2) * value_size];
    float *buffer = new float[(M_ + 2) * value_size];
    fill(value, value + (M_ + 2) * value_size, 0.f);
    fill(buffer, buffer + (M_ + 2) * value_size, 0.f);

    // Splatting
    for (int i = 0; i < N_; i++) {
        for (int j = 0; j < d1_; j++) {
            int o = os_[i * d1_ + j];
            float w = ws_[i * d1_ + j];

            for (int v = 0; v < value_size; v++) {
                value[o * value_size + v] += w * inp[i * value_size + v];
            }
        }
    }

    // Blurring
    for (int j = reversal ? d_ : 0; j <= d_ && j >= 0; reversal ? j-- : j++) {
        for (int i = 0; i < M_; i++) {
            int n1 = blur_neighbors_[j * M_ * 2 + i * 2 + 0];
            int n2 = blur_neighbors_[j * M_ * 2 + i * 2 + 1];
            for (int v = 0; v < value_size; v++) {
                buffer[(i + 1) * value_size + v] =
                    value[(i + 1) * value_size + v] +
                    0.5f * (value[n1 * value_size + v] +
                            value[n2 * value_size + v]);
            }
        }

        // results should be used for the next convolution.
        float *tmp = buffer;
        buffer = value;
        value = tmp;
    }

    fill(out, out + N_ * value_size, 0);

    for (int i = 0; i < N_; i++) {
        for (int j = 0; j < d1_; j++) {
            int o = os_[i * d1_ + j];
            float w = ws_[i * d1_ + j];
            for (int v = 0; v < value_size; v++) {
                out[i * value_size + v] +=
                    w * value[o * value_size + v] * alpha_;
            }
        }
    }

    delete[] value;
    delete[] buffer;
}

Permutohedral::~Permutohedral() {
    delete[] os_;
    delete[] ws_;
}
// };

DenseCRF::DenseCRF(int H, int W, int n_classes, int d_bifeats, int d_spfeats,
                   float theta_alpha, float theta_beta, float theta_gamma,
                   float bilateral_compat, float spatial_compat,
                   int n_iterations) {
    H_ = H;
    W_ = W;
    N_ = H_ * W_;
    n_classes_ = n_classes;
    d_bifeats_ = d_bifeats;
    d_spfeats_ = d_spfeats;

    theta_alpha_ = theta_alpha;
    theta_beta_ = theta_beta;
    theta_gamma_ = theta_gamma;

    bilateral_compat_ = bilateral_compat;
    spatial_compat_ = spatial_compat;

    n_iterations_ = n_iterations;

    bilateral_lattice_ = new Permutohedral(N_, d_bifeats);
    spatial_lattice_ = new Permutohedral(N_, d_spfeats);

    // potts_compatibility(compatibility_matrix_); // Potts model
}

DenseCRF::~DenseCRF() {
    delete bilateral_lattice_;
    delete spatial_lattice_;
}

void DenseCRF::softmax(const float *x, float *expx_shifted) {
    float *x_max = new float[N_];
    float *norm = new float[N_];
    for (int i = 0; i < N_; i++) {
        x_max[i] = x[i * n_classes_];
        norm[i] = 0;
    }

    for (int i = 0; i < N_; i++) {
        for (int j = 1; j < n_classes_; j++) {
            int cond = (x_max[i] < x[i * n_classes_ + j]);
            x_max[i] = x_max[i] * (1 - cond) + x[i * n_classes_ + j] * cond;
        }
        for (int j = 0; j < n_classes_; j++) {
            expx_shifted[i * n_classes_ + j] =
                expf(x[i * n_classes_ + j] - x_max[i]);
            norm[i] += expx_shifted[i * n_classes_ + j];
        }
        for (int j = 0; j < n_classes_; j++) {
            expx_shifted[i * n_classes_ + j] /= norm[i];
        }
    }

    delete[] x_max;
    delete[] norm;
}

Permutohedral *DenseCRF::get_bilattice() { return bilateral_lattice_; }

Permutohedral *DenseCRF::get_splattice() { return spatial_lattice_; }

void DenseCRF::set_bilattice(Permutohedral *bilateral_lattice) {
    bilateral_lattice_ = bilateral_lattice;
}
void DenseCRF::set_splattice(Permutohedral *spatial_lattice) {
    spatial_lattice_ = spatial_lattice;
}

void DenseCRF::create_feature(const float *reference, float *bifeature,
                              float *spfeature) {
    for (int y = 0; y < H_; y++) {
        for (int x = 0; x < W_; x++) {
            int coord = y * W_ * d_bifeats_ + x * d_bifeats_;
            int refcoord = y * W_ * (d_bifeats_ - d_spfeats_) +
                           x * (d_bifeats_ - d_spfeats_);
            bifeature[coord + 0] = (float)x / theta_alpha_;
            bifeature[coord + 1] = (float)y / theta_alpha_;
            for (int d = d_spfeats_; d < d_bifeats_; d++) {
                bifeature[coord + d] =
                    reference[refcoord + (d - d_spfeats_)] / theta_beta_;
            }

            coord = y * W_ * d_spfeats_ + x * d_spfeats_;
            spfeature[coord + 0] = (float)x / theta_gamma_;
            spfeature[coord + 1] = (float)y / theta_gamma_;
        }
    }
}

void DenseCRF::compute(const float *unary, float *out) {
    // Compute one-sided normalizations
    float *allOnes = new float[N_], *bilateral_norm_vals = new float[N_],
          *spatial_norm_vals = new float[N_];
    fill(allOnes, allOnes + N_, 1.f);

    bilateral_lattice_->compute(allOnes, 1, false, bilateral_norm_vals);
    spatial_lattice_->compute(allOnes, 1, false, spatial_norm_vals);
    delete[] allOnes;

    // Initialize Q
    float *Q = out;
    for (int i = 0; i < N_ * n_classes_; i++) {
        Q[i] = -unary[i];
    }
    softmax(Q, Q);

    float *bilateral_out = new float[N_ * n_classes_],
          *spatial_out = new float[N_ * n_classes_];

    for (int i = 0; i < n_iterations_; i++) {
        printf("Iteration %d / %d...\n", i + 1, n_iterations_);

        // Bilateral message passing
        bilateral_lattice_->compute(Q, n_classes_, false, bilateral_out);

        // Spatial message passing
        spatial_lattice_->compute(Q, n_classes_, false, spatial_out);

        // Dim-wise Normalization
        for (int i = 0; i < N_; i++) {
            for (int j = 0; j < n_classes_; j++) {
                int attr = i * n_classes_ + j;

                // normalization
                bilateral_out[attr] /= bilateral_norm_vals[i];
                spatial_out[attr] /= spatial_norm_vals[i];

                // Message passing
                float message_passing =
                    bilateral_compat_ * bilateral_out[attr] +
                    spatial_compat_ * spatial_out[attr];

                // Compatibility transformation
                float pairwise = compatibility_ * message_passing;

                // Local update
                Q[attr] = -unary[attr] - pairwise;
            }
        }
        // Normalize
        softmax(Q, Q); // [n_classes, N]
    }

    // release mem
    delete[] bilateral_norm_vals;
    delete[] spatial_norm_vals;
    delete[] bilateral_out;
    delete[] spatial_out;
}

void DenseCRF::inference(const float *unary, const float *reference,
                         float *out) {
    // Create bilateral and spatial features
    float *bilateral_feats = new float[N_ * d_bifeats_];
    float *spatial_feats = new float[N_ * d_spfeats_];

    for (int y = 0; y < H_; y++) {
        for (int x = 0; x < W_; x++) {
            int coord = y * W_ * d_bifeats_ + x * d_bifeats_;
            int refcoord = y * W_ * (d_bifeats_ - d_spfeats_) +
                           x * (d_bifeats_ - d_spfeats_);
            bilateral_feats[coord + 0] = (float)x / theta_alpha_;
            bilateral_feats[coord + 1] = (float)y / theta_alpha_;
            for (int d = d_spfeats_; d < d_bifeats_; d++) {
                bilateral_feats[coord + d] =
                    reference[refcoord + (d - d_spfeats_)] / theta_beta_;
            }

            coord = y * W_ * d_spfeats_ + x * d_spfeats_;
            spatial_feats[coord + 0] = (float)x / theta_gamma_;
            spatial_feats[coord + 1] = (float)y / theta_gamma_;
        }
    }

    // Initialize bilateral and spatial filters
    bilateral_lattice_->init(bilateral_feats);
    spatial_lattice_->init(spatial_feats);
    printf("Filters initialized.\n");

    // Free features
    delete[] bilateral_feats;
    delete[] spatial_feats;

    // Compute one-sided normalizations
    float *allOnes = new float[N_], *bilateral_norm_vals = new float[N_],
          *spatial_norm_vals = new float[N_];
    fill(allOnes, allOnes + N_, 1.f);

    bilateral_lattice_->compute(allOnes, 1, false, bilateral_norm_vals);
    spatial_lattice_->compute(allOnes, 1, false, spatial_norm_vals);
    delete[] allOnes;

    // Initialize Q
    float *Q = out;
    for (int i = 0; i < N_ * n_classes_; i++) {
        Q[i] = -unary[i];
    }
    softmax(Q, Q);

    float *bilateral_out = new float[N_ * n_classes_],
          *spatial_out = new float[N_ * n_classes_];

    for (int i = 0; i < n_iterations_; i++) {
        printf("Iteration %d / %d...\n", i + 1, n_iterations_);

        // Bilateral message passing
        bilateral_lattice_->compute(Q, n_classes_, false, bilateral_out);

        // Spatial message passing
        spatial_lattice_->compute(Q, n_classes_, false, spatial_out);

        // Dim-wise Normalization
        for (int i = 0; i < N_; i++) {
            for (int j = 0; j < n_classes_; j++) {
                int attr = i * n_classes_ + j;

                // normalization
                bilateral_out[attr] /= bilateral_norm_vals[i];
                spatial_out[attr] /= spatial_norm_vals[i];

                // Message passing
                float message_passing =
                    bilateral_compat_ * bilateral_out[attr] +
                    spatial_compat_ * spatial_out[attr];

                // Compatibility transformation
                float pairwise = compatibility_ * message_passing;

                // Local update
                Q[attr] = -unary[attr] - pairwise;
            }
        }
        // Normalize
        softmax(Q, Q); // [n_classes, N]
    }

    // release mem
    delete[] bilateral_norm_vals;
    delete[] spatial_norm_vals;
    delete[] bilateral_out;
    delete[] spatial_out;
}
