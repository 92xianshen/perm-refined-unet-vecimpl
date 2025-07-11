#include "Eigen/Dense"
#include <iostream>

#include "permutohedral_base.h"

using namespace std;
using namespace Eigen;

class DenseCRF {
  protected:
    int H_, W_, N_, n_classes_, d_bifeats_, d_spfeats_;

    float theta_alpha_, theta_beta_, theta_gamma_;

    float bilateral_compat_, spatial_compat_;

    int n_iterations_;

    Permutohedral *bilateral_filter_, *spatial_filter_;

    MatrixXf compatibility_matrix_;

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

        potts_compatibility(compatibility_matrix_); // Potts model
    }

    ~DenseCRF() {
        delete bilateral_filter_;
        delete spatial_filter_;
    }

    void potts_compatibility(MatrixXf &labelcompatibility) {
        labelcompatibility.resize(n_classes_, n_classes_);
        labelcompatibility.setIdentity();
        labelcompatibility *= -1;
    }

    void softmax(const MatrixXf &in, MatrixXf &out) {
        // in and out share the shape of [d, N], channel-first
        out = (in.rowwise() - in.colwise().maxCoeff()).array().exp();
        RowVectorXf sm = out.colwise().sum();
        out.array().rowwise() /= sm.array();
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
        MatrixXf allOnes(1, N_), tmp(1, N_), bilateral_norm_vals(1, N_),
            spatial_norm_vals(1, N_);
        allOnes.setOnes();

        tmp.setZero();
        // bilateral_filter_->compute(&allOnes(0), 1, false, &tmp(0));
        bilateral_filter_->compute(allOnes.data(), 1, false, tmp.data());
        bilateral_norm_vals = (tmp.array().pow(.5f) + 1e-20).inverse();

        tmp.setZero();
        // spatial_filter_->compute(&allOnes(0), 1, false, &tmp(0));
        spatial_filter_->compute(allOnes.data(), 1, false, tmp.data());
        spatial_norm_vals = (tmp.array().pow(.5f) + 1e-20).inverse();

        // Transpose unary
        MatrixXf unaryView =
            Map<const MatrixXf>(unary, n_classes_, N_); // [n_classes, N]

        // Initialize Q
        MatrixXf Q(n_classes_, N_);
        softmax(-unaryView, Q);

        MatrixXf tmp1(n_classes_, N_);
        // float *bilateral_out = new float[n_classes_ * N_];
        // float *spatial_out = new float[n_classes_ * N_];
        // MatrixXf bilateraloutView =
        //     Map<MatrixXf>(bilateral_out, n_classes_, N_);
        // MatrixXf spatialoutView = Map<MatrixXf>(spatial_out, n_classes_, N_);
        MatrixXf bilateral_out(n_classes_, N_), spatial_out(n_classes_, N_);
        MatrixXf message_passing(n_classes_, N_);
        MatrixXf pairwise(n_classes_, N_);

        for (int i = 0; i < n_iterations_; i++) {
            printf("Iteration %d / %d...\n", i + 1, n_iterations_);

            tmp1 = -unaryView; // [n_classes, N]

            // Bilateral message passing and symmetric normalization
            MatrixXf QsemiBNorm =
                Q.array().rowwise() * bilateral_norm_vals(0, all).array();
            // bilateral_filter_->compute(&QsemiBNorm(0), n_classes_, false,
            //                            &bilateral_out(0)); // [n_classes, N]
            bilateral_filter_->compute(QsemiBNorm.data(), n_classes_, false,
                                       bilateral_out.data());
            bilateral_out.array().rowwise() *=
                bilateral_norm_vals(0, all).array(); // [n_classes, N]

            // Spatial message passing and symmetric normalization
            MatrixXf QsemiSNorm =
                Q.array().rowwise() * spatial_norm_vals(0, all).array();
            // spatial_filter_->compute(&QsemiSNorm(0), n_classes_, false,
            //                          &spatial_out(0)); // [n_classes, N]
            spatial_filter_->compute(QsemiSNorm.data(), n_classes_, false,
                                     spatial_out.data());
            spatial_out.array().rowwise() *= spatial_norm_vals(0, all).array();

            // Message passing
            message_passing.noalias() =
                bilateral_compat_ * bilateral_out +
                spatial_compat_ * spatial_out; // [n_classes, N]

            // Compatibility transformation
            pairwise.noalias() =
                compatibility_matrix_ * message_passing; // [n_classes, N]

            // Local update
            tmp1 -= pairwise; // [n_classes, N]

            // Normalize
            softmax(tmp1, Q); // [n_classes, N]
        }

        // Return
        Map<MatrixXf> outView(out, n_classes_, N_);
        outView = Q;

        // release mem
        // delete[] all_ones;
        // delete[] tmp;
        // delete[] bilateral_out;
        // delete[] spatial_out;
    }
};
