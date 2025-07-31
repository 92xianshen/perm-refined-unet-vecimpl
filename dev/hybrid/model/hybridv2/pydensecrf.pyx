# distutils: language = c++
# cython: language_level = 3

cdef extern from "densecrf.h":
    cdef cppclass Permutohedral:
        Permutohedral(int N, int d) except +
        void init_plattice(const short *pkey, const float *pbarycentric, int pN) except +
        void init_blurneighbors() except +
    cdef cppclass DenseCRF:
        DenseCRF(int H, int W, int n_classes, int d_bifeats, int d_spfeats, float theta_alpha, float theta_beta, float theta_gamma, float bilateral_compat, float spatial_compat, int n_iterations) except +

        # void inference(const float *unary, const float *reference, float *out) except +

        void create_feature(const float *reference, float *bifeature, float *spfeature) except +

        void compute(const float *unary, float *out) except +

        Permutohedral *get_bilattice() except +

        Permutohedral *get_splattice() except +

        # void compute(const float *unary, float *out) except +

cdef class PyDenseCRF:
    cdef DenseCRF *dcrf
    cdef Permutohedral *bilateral_lattice
    cdef Permutohedral *spatial_lattice

    def __cinit__(self, int H, int W, int n_classes, int d_bifeats, int d_spfeats, float theta_alpha, float theta_beta, float theta_gamma, float bilateral_compat, float spatial_compat, int n_iterations):
        self.dcrf = new DenseCRF(H, W, n_classes, d_bifeats, d_spfeats, theta_alpha, theta_beta, theta_gamma, bilateral_compat, spatial_compat, n_iterations)
        self.bilateral_lattice = self.dcrf.get_bilattice()
        self.spatial_lattice = self.dcrf.get_splattice()

    def create_feature(self, float[:] reference1d, float[:] bifeature, float[:] spfeature):
        self.dcrf.create_feature(&reference1d[0], &bifeature[0], &spfeature[0])

    def init_pbilattice(self, short[:] pbikey, float[:] pbibarycentric, int pN):
        self.bilateral_lattice.init_plattice(&pbikey[0], &pbibarycentric[0], pN)

    def init_psplattice(self, short[:] pspkey, float[:] pspbarycentric, int pN):
        self.spatial_lattice.init_plattice(&pspkey[0], &pspbarycentric[0], pN)

    def init_blurneighbors(self):
        self.bilateral_lattice.init_blurneighbors()
        self.spatial_lattice.init_blurneighbors()

    def compute(self, float[:] unary, float[:] out):
        self.dcrf.compute(&unary[0], &out[0])

    # def inference(self, float[:] unary, float[:] reference, float[:] out):
    #     self.dcrf.inference(&unary[0], &reference[0], &out[0])

    def __dealloc__(self):
        del self.dcrf