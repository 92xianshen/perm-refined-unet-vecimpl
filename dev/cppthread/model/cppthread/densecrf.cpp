#include "densecrf.h"

DenseCRF::DenseCRF(int H, int W, int n_classes, int d_bifeats, int d_spfeats,
                   float theta_alpha, float theta_beta, float theta_gamma,
                   float bilateral_compat, float spatial_compat,
                   int n_iterations, int n_thread) {
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

    n_thread_ = n_thread;

    bilateral_lattice_ = new Permutohedral(N_, d_bifeats);
    spatial_lattice_ = new Permutohedral(N_, d_spfeats);

    // Potts model // potts_compatibility(compatibility_matrix_);
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
    if (n_thread_ > 1) {
        bilateral_lattice_->mpinit(bilateral_feats, n_thread_);
        spatial_lattice_->mpinit(spatial_feats, n_thread_);
        printf("Filters initialized in a multi-thread way.\n");
    } else {
        bilateral_lattice_->seqinit(bilateral_feats);
        spatial_lattice_->seqinit(spatial_feats);
        printf("Filters initialized in a sequential way.\n");
    }

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
