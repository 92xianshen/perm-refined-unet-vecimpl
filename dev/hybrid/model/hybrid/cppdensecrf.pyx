# distutils: language = c++
# cython: language_level = 3

cdef extern from "densecrf.h":
    cdef cppclass DenseCRF:
        DenseCRF(int H, int W, int n_classes, int d_bifeats, int d_spfeats, float theta_alpha, float theta_beta, float theta_gamma, float bilateral_compat, float spatial_compat, int n_iterations) except +

        # void inference(const float *unary, const float *reference, float *out) except +

        void softmax(const float *x, float *expx_shifted) except +

        void create_feature(const float *reference, float *bilateral_feature,
                        float *spatial_feature) except +

        void initQ(const float *unary, float *Q) except +

        void normDimWise(float *bilateral_out, float *spatial_out, const float *bilateral_norm_vals, const float *spatial_norm_vals, const float *unary, float *Q) except +

cdef class CppDenseCRF:
    cdef DenseCRF *dcrf

    def __cinit__(self, int H, int W, int n_classes, int d_bifeats, int d_spfeats, float theta_alpha, float theta_beta, float theta_gamma, float bilateral_compat, float spatial_compat, int n_iterations):
        self.dcrf = new DenseCRF(H, W, n_classes, d_bifeats, d_spfeats, theta_alpha, theta_beta, theta_gamma, bilateral_compat, spatial_compat, n_iterations)

    # def inference(self, float[:] unary, float[:] reference, float[:] out):
        # self.dcrf.inference(&unary[0], &reference[0], &out[0])

    def softmax(self, float[:] inp, float[:]out):
        self.dcrf.softmax(&inp[0], &out[0])

    def create_feature(self, float[:] reference, float[:] bifeature, float[:] spfeature):
        self.dcrf.create_feature(&reference[0], &bifeature[0], &spfeature[0])

    def initQ(self, float[:] unary, float[:] Q):
        self.dcrf.initQ(&unary[0], &Q[0])

    def normDimWise(self, float[:] bilateral_out, float[:] spatial_out, float[:] bilateral_norm_vals, float[:] spatial_norm_vals, float[:] unary, float[:] Q):
        self.dcrf.normDimWise(&bilateral_out[0], &spatial_out[0], &bilateral_norm_vals[0], &spatial_norm_vals[0], &unary[0], &Q[0])

    def __dealloc__(self):
        del self.dcrf