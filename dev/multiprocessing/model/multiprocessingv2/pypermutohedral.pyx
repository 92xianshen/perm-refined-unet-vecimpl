# distutils: language = c++
# cython: language_level = 3
# distutils: sources = permutohedral.cpp

from libcpp cimport bool

cdef extern from "permutohedral.h":
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

cdef class PyPermutohedral:
    cdef Permutohedral *lattice

    def __cinit__(self, int N, int d):
        self.lattice = new Permutohedral(N, d)

    def __dealloc__(self):
        del self.lattice

    def create_hashtable(self):
        self.lattice.create_hashtable()

    def del_hashtable(self):
        self.lattice.del_hashtable()

    def pinit(self, short[:] pkey, float[:] pbarycentric, int pN, int Nfilled):
        self.lattice.pinit(&pkey[0], &pbarycentric[0], pN, Nfilled)

    def seqinit(self):
        self.lattice.seqinit()

    def compute(self, float[:] inp, int vd, bool reversal, float[:] out):
        self.lattice.compute(&inp[0], vd, reversal, &out[0])
