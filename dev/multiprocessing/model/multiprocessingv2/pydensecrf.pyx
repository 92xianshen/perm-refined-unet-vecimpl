# distutils: language = c++
# cython: language_level = 3
# distutils: sources = densecrf.cpp

from libcpp cimport bool


cdef extern from "densecrf.h":
    cdef cppclass DenseCRF:
        DenseCRF(int H, int W, int n_classes, int d_bifeats, int d_spfeats, float theta_alpha, float theta_beta, float theta_gamma, float bilateral_compat, float spatial_compat, int n_iterations) except +

        # void inference(const float *unary, const float *reference, float *out) except +

        void create_feature(const float *reference, float *bifeature, float *spfeature) except +

        void compute(const float *unary, float *out) except +

        Permutohedral *get_bilattice() except +

        Permutohedral *get_splattice() except +

        void set_bilattice(Permutohedral *bilateral_lattice) except +
        void set_splattice(Permutohedral *spatial_lattice) except +

        # void compute(const float *unary, float *out) except +

# cdef extern from "permutohedral.h":
    # cdef cppclass PInitializer:
    #     PInitializer(int pN, int d, int Nfilled) except +
    void pinit(const float *pfeature, int pN, int d, short *pkey, float *pbarycentric) except +
    cdef cppclass Permutohedral:
        Permutohedral(int N, int d) except +
        void create_hashtable() except +
        void del_hashtable() except +
        # void init(const float *feature) except +
        void pinit(short *pkey, float *pbarycentric, int pN, int Nfilled) except +
        void seqinit() except +
        void delete_blurneighbors_() except +
        void compute(const float *inp, const int value_size, const bool reversal,
                 float *out) except +

# cdef class PyPInitializer:
#     cdef PInitializer *initer

#     def __cinit__(self, int pN, int d, int Nfilled):
#         self.initer = new PInitializer(pN, d, Nfilled)

#     def __dealloc__(self):
#         del self.initer

#     def pinit(self, float[:] pfeature, short[:] pkey, float[:] pbarycentric):
#         self.initer.pinit(&pfeature[0], &pkey[0], &pbarycentric[0])

def pypinit(float[:] pfeature, int pN, int d, short[:] pkey, float[:] pbarycentric):
    pinit(&pfeature[0], pN, d, &pkey[0], &pbarycentric[0])

# cdef class PyPermutohedral:
#     cdef Permutohedral *lattice

#     def __cinit__(self, int N, int d):
#         self.lattice = new Permutohedral(N, d)

#     def __dealloc__(self):
#         del self.lattice

#     def create_hashtable(self):
#         self.lattice.create_hashtable()

#     def del_hashtable(self):
#         self.lattice.del_hashtable()

#     def pinit(self, short[:] pkey, float[:] pbarycentric, int pN, int Nfilled):
#         self.lattice.pinit(&pkey[0], &pbarycentric[0], pN, Nfilled)

#     def seqinit(self):
#         self.lattice.seqinit()

#     def compute(self, float[:] inp, int vd, bool reversal, float[:] out):
#         self.lattice.compute(&inp[0], vd, reversal, &out[0])

cdef class PyDenseCRF:
    cdef DenseCRF *dcrf
    cdef Permutohedral *bilateral_lattice
    cdef Permutohedral *spatial_lattice

    def __cinit__(self, int H, int W, int n_classes, int d_bifeats, int d_spfeats, float theta_alpha, float theta_beta, float theta_gamma, float bilateral_compat, float spatial_compat, int n_iterations):
        self.dcrf = new DenseCRF(H, W, n_classes, d_bifeats, d_spfeats, theta_alpha, theta_beta, theta_gamma, bilateral_compat, spatial_compat, n_iterations)
        self.bilateral_lattice = self.dcrf.get_bilattice()
        self.spatial_lattice = self.dcrf.get_splattice()

    # def set_bilattice(self, PyPermutohedral pylattice):
    #     self.dcrf.set_bilattice(pylattice.lattice)
    #     # Permutohedral *bilattice = self.dcrf.get_bilattice() 
    #     # bi= pylattice.lattice

    # def set_splattice(self, PyPermutohedral pylattice):
    #     self.dcrf.set_splattice(pylattice.lattice)

    def create_feature(self, float[:] reference1d, float[:] bifeature, float[:] spfeature):
        self.dcrf.create_feature(&reference1d[0], &bifeature[0], &spfeature[0])

    def create_bihashtable(self):
        self.bilateral_lattice.create_hashtable()

    def create_sphashtable(self):
        self.spatial_lattice.create_hashtable()

    def del_bihashtable(self):
        self.bilateral_lattice.del_hashtable()

    def del_sphashtable(self):
        self.spatial_lattice.del_hashtable()

    def bipinit(self, short[:] pkey, float[:] pbarycentric, int pN, int Nfilled):
        self.bilateral_lattice.pinit(&pkey[0], &pbarycentric[0], pN, Nfilled)

    def sppinit(self, short[:] pkey, float[:] pbarycentric, int pN, int Nfilled):
        self.spatial_lattice.pinit(&pkey[0], &pbarycentric[0], pN, Nfilled)

    def biseqinit(self):
        self.bilateral_lattice.seqinit()

    def spseqinit(self):
        self.spatial_lattice.seqinit()

    # def init_pbilattice(self, short[:] pbikey, float[:] pbibarycentric, int pN):
    #     self.bilateral_lattice.init_plattice(&pbikey[0], &pbibarycentric[0], pN)

    # def init_psplattice(self, short[:] pspkey, float[:] pspbarycentric, int pN):
    #     self.spatial_lattice.init_plattice(&pspkey[0], &pspbarycentric[0], pN)

    # def init_blurneighbors(self):
    #     self.bilateral_lattice.init_blurneighbors()
    #     self.spatial_lattice.init_blurneighbors()

    def compute(self, float[:] unary, float[:] out):
        self.dcrf.compute(&unary[0], &out[0])

    # def inference(self, float[:] unary, float[:] reference, float[:] out):
    #     self.dcrf.inference(&unary[0], &reference[0], &out[0])

    def __dealloc__(self):
        del self.dcrf

