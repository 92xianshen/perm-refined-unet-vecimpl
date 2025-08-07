# distutils: language = c++
# cython: language_level = 3
# distutils: sources = permutohedral.cpp

from libcpp cimport bool

cdef extern from "permutohedral.h":
    cdef cppclass Permutohedral:
        Permutohedral(int N, int d) except +
        void seqinit(const float *feature) except +
        void mpinit(const float *feature, const int n_thread) except +
        void delete_blurneighbors_() except +
        void compute(const float *inp, const int value_size, const bool reversal, float *out) except +


cdef class PyPermutohedral:
    cdef Permutohedral *lattice

    def __cinit__(self, int N, int d):
        self.lattice = new Permutohedral(N, d)

    def __dealloc__(self):
        del self.lattice

    def seqinit(self, float[:] feature):
        self.lattice.seqinit(&feature[0])

    def mpinit(self, float[:] feature, int n_thread):
        self.lattice.mpinit(&feature[0], n_thread)

    def delete_blurneighbors_(self):
        self.lattice.delete_blurneighbors_()

    def compute(self, float[:] inp, int vd, bool reversal, float[:] out):
        self.lattice.compute(&inp[0], vd, reversal, &out[0])
