# distutils: language = c++
# cython: language_level = 3
# distutils: sources = permutohedral.cpp

from libcpp cimport bool

cdef extern from "permutohedral.h":
    
    cdef cppclass Permutohedral:
        Permutohedral(int N, int d) except +
        void create_hashtable() except +
        void del_hashtable() except +
        void pinit(const float *pfeature, int pN, short *pkey, float *pbarycentric) except +
        void seqinit(short *key, float *barycentric) except +
        void delete_blurneighbors_() except +
        void compute(const float *inp, const int value_size, const bool reversal, float *out) except +

cdef class PyPermutohedral:
    cdef Permutohedral *lattice

    def __cinit__(self, int N, int d):
        self.lattice = new Permutohedral(N, d)

    def __dealloc__(self):
        del self.lattice

    def pinit(self, float[:] pfeature, int pN, short[:] pkey, float[:] pbarycentric):
        self.lattice.pinit(&pfeature[0], pN, &pkey[0], &pbarycentric[0])

    def seqinit(self, short[:] key, float[:] barycentric):
        self.lattice.seqinit(&key[0], &barycentric[0])

    def compute(self, float[:] inp, int vd, bool reversal, float[:] out):
        self.lattice.compute(&inp[0], vd, reversal, &out[0])