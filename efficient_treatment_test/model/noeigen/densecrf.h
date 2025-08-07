/*
    Based on `densecrf_norm.h`
    No EIGEN
*/

// #include "Eigen/Dense"
#include <algorithm>
#include <iostream>
#include <math.h>

#include "permutohedral.h"

using namespace std;
// using namespace Eigen;

class DenseCRF {
  protected:
    int H_, W_, N_, n_classes_, d_bifeats_, d_spfeats_;

    float theta_alpha_, theta_beta_, theta_gamma_;

    float bilateral_compat_, spatial_compat_;

    int n_iterations_;

    Permutohedral *bilateral_filter_, *spatial_filter_;

    float compatibility_ = -1.f;

  public:
    DenseCRF(int H, int W, int n_classes, int d_bifeats, int d_spfeats,
             float theta_alpha, float theta_beta, float theta_gamma,
             float bilateral_compat, float spatial_compat, int n_iterations) {
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

        bilateral_filter_ = new Permutohedral(N_, d_bifeats);
        spatial_filter_ = new Permutohedral(N_, d_spfeats);

        // potts_compatibility(compatibility_matrix_); // Potts model
    }

    ~DenseCRF() {
        delete bilateral_filter_;
        delete spatial_filter_;
    }

    // void potts_compatibility(MatrixXf &labelcompatibility) {
    //     labelcompatibility.resize(n_classes_, n_classes_);
    //     labelcompatibility.setIdentity();
    //     labelcompatibility *= -1;
    // }

    // void softmax(const MatrixXf &in, MatrixXf &out) {
    //     // in and out share the shape of [d, N], channel-first
    //     out = (in.rowwise() - in.colwise().maxCoeff()).array().exp();
    //     RowVectorXf sm = out.colwise().sum();
    //     out.array().rowwise() /= sm.array();
    // }
    void softmax(const float *x, int N, int dim, float *expx_shifted) {
        float *x_max = new float[N];
        float *norm = new float[N];
        for (int i = 0; i < N; i++) {
            x_max[i] = x[i * dim];
            norm[i] = 0;
        }

        for (int i = 0; i < N; i++) {
            for (int j = 1; j < dim; j++) {
                int cond = (x_max[i] < x[i * dim + j]);
                x_max[i] = x_max[i] * (1 - cond) + x[i * dim + j] * cond;
            }
            for (int j = 0; j < dim; j++) {
                expx_shifted[i * dim + j] = expf(x[i * dim + j] - x_max[i]);
                norm[i] += expx_shifted[i * dim + j];
            }
            for (int j = 0; j < dim; j++) {
                expx_shifted[i * dim + j] /= norm[i];
            }
        }

        delete[] x_max;
        delete[] norm;
    }

    void inference(const float *unary, const float *reference, float *out) {
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
        bilateral_filter_->init(bilateral_feats);
        spatial_filter_->init(spatial_feats);
        printf("Filters initialized.\n");

        // Free features
        delete[] bilateral_feats;
        delete[] spatial_feats;

        // Compute symmetric normalizations
        // float *all_ones = new float[N_];
        // float *tmp = new float[N_];
        // float *bilateral_norm_vals = new float[N_];
        // float *spatial_norm_vals = new float[N_];
        // MatrixXf allOnesView = Map<MatrixXf>(all_ones, 1, N_);
        // MatrixXf tmpView = Map<MatrixXf>(tmp, 1, N_);
        // MatrixXf allOnes(1, N_), tmp(1, N_), bilateral_norm_vals(1, N_),
        //     spatial_norm_vals(1, N_);
        // allOnes.setOnes();
        float *allOnes = new float[N_], *bilateral_norm_vals = new float[N_],
              *spatial_norm_vals = new float[N_];
        fill(allOnes, allOnes + N_, 1.f);

        // tmp.setZero();
        // bilateral_filter_->compute(&allOnes(0), 1, false, &tmp(0));
        bilateral_filter_->compute(allOnes, 1, false, bilateral_norm_vals);
        // bilateral_norm_vals = (tmp.array().pow(.5f) + 1e-20).inverse();
        // bilateral_norm_vals = (tmp.array() + 1e-20).inverse();

        // tmp.setZero();
        // spatial_filter_->compute(&allOnes(0), 1, false, &tmp(0));
        spatial_filter_->compute(allOnes, 1, false, spatial_norm_vals);
        // spatial_norm_vals = (tmp.array().pow(.5f) + 1e-20).inverse();
        // spatial_norm_vals = (tmp.array() + 1e-20).inverse();
        delete[] allOnes;

        // Transpose unary
        // MatrixXf unaryView =
        //     Map<const MatrixXf>(unary, n_classes_, N_); // [n_classes, N]

        // Initialize Q
        // MatrixXf Q(n_classes_, N_);
        float *Q = out;
        // float *unary_neg = new float[N_ * n_classes_];
        for (int i = 0; i < N_ * n_classes_; i++) {
            Q[i] = -unary[i];
        }
        softmax(Q, N_, n_classes_, Q);

        // MatrixXf tmp1(n_classes_, N_);
        // // float *bilateral_out = new float[n_classes_ * N_];
        // // float *spatial_out = new float[n_classes_ * N_];
        // // MatrixXf bilateraloutView =
        // //     Map<MatrixXf>(bilateral_out, n_classes_, N_);
        // // MatrixXf spatialoutView = Map<MatrixXf>(spatial_out, n_classes_,
        // N_); MatrixXf bilateral_out(n_classes_, N_), spatial_out(n_classes_,
        // N_); MatrixXf message_passing(n_classes_, N_); MatrixXf
        // pairwise(n_classes_, N_);
        float *bilateral_out = new float[N_ * n_classes_],
              *spatial_out = new float[N_ * n_classes_];

        for (int i = 0; i < n_iterations_; i++) {
            printf("Iteration %d / %d...\n", i + 1, n_iterations_);

            // tmp1 = -unaryView; // [n_classes, N]

            // Bilateral message passing and symmetric normalization
            // MatrixXf QsemiBNorm =
            //     Q.array().rowwise() * bilateral_norm_vals(0, all).array();
            // bilateral_filter_->compute(&QsemiBNorm(0), n_classes_, false,
            //                            &bilateral_out(0)); // [n_classes, N]
            bilateral_filter_->compute(Q, n_classes_, false, bilateral_out);

            // Spatial message passing and symmetric normalization
            // MatrixXf QsemiSNorm =
            //     Q.array().rowwise() * spatial_norm_vals(0, all).array();
            // spatial_filter_->compute(&QsemiSNorm(0), n_classes_, false,
            //                          &spatial_out(0)); // [n_classes, N]
            spatial_filter_->compute(Q, n_classes_, false, spatial_out);

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

            // bilateral_out.array().rowwise() /=
            //     bilateral_norm_vals(0, all).array(); // [n_classes, N]
            // spatial_out.array().rowwise() /= spatial_norm_vals(0,
            // all).array();

            // Message passing
            // message_passing.noalias() =
            //     bilateral_compat_ * bilateral_out +
            //     spatial_compat_ * spatial_out; // [n_classes, N]

            // // Message passing
            // for (int i = 0; i < N_; i++) {
            //     for (int j = 0; j < n_classes_; j++) {
            //         message_passing[i * n_classes_ + j] = bilateral_compat_ *
            //         bilateral_out[i * n_classes_ + j] + spatial_compat_ *
            //         spatial_out[i * n_classes_ + j];
            //     }
            // }

            // // Compatibility transformation
            // // pairwise.noalias() =
            // //     compatibility_matrix_ * message_passing; // [n_classes, N]

            // for (int i = 0; i < N_; i++) {
            //     for (int j = 0; j < n_classes_; j++) {
            //         pairwise[i * n_classes_ + j] = compatibility_ *
            //         message_passing[i * n_classes_ + j];
            //     }
            // }

            // // Local update
            // // unary_neg -= pairwise; // [n_classes, N]
            // for (int i = 0; i < N_; i++) {
            //     for (int j = 0; j < n_classes_; j++) {
            //         unary_neg[i * n_classes_ + j] -= pairwise[i * n_classes_
            //         + j];
            //     }
            // }

            // Normalize
            softmax(Q, N_, n_classes_, Q); // [n_classes, N]
        }

        // Return
        // Map<MatrixXf> outView(out, n_classes_, N_);
        // outView = Q;

        // release mem
        delete[] bilateral_norm_vals;
        delete[] spatial_norm_vals;
        // delete[] Q;
        // delete[] unary_neg;
        delete[] bilateral_out;
        delete[] spatial_out;
        // delete[] all_ones;
        // delete[] tmp;
        // delete[] bilateral_out;
        // delete[] spatial_out;
    }
};
