# distutils: language = c++
# cython: language_level = 3
# distutils: sources = permutohedral.cpp

from libcpp cimport bool

cdef extern from "permutohedral.h":
    cdef cppclass Permutohedral:
        Permutohedral(int N, int d, int n_thread) except +
        void seqinit(const float *feature) except +
        void mtinit(const float *feature) except +
        void delete_blurneighbors_() except +
        void seqcompute(const float *inp, const int value_size, const bool reversal, float *out) except +
        void mtcompute(const float *inp, const int value_size, const bool reversal, float *out) except +


cdef class PyPermutohedral:
    cdef Permutohedral *lattice

    def __cinit__(self, int N, int d, int n_thread):
        self.lattice = new Permutohedral(N, d, n_thread)

    def __dealloc__(self):
        del self.lattice

    def seqinit(self, float[:] feature):
        self.lattice.seqinit(&feature[0])

    def mtinit(self, float[:] feature):
        self.lattice.mtinit(&feature[0])

    def delete_blurneighbors_(self):
        self.lattice.delete_blurneighbors_()

    def seqcompute(self, float[:] inp, int vd, bool reversal, float[:] out):
        self.lattice.seqcompute(&inp[0], vd, reversal, &out[0])

    def mtcompute(self, float[:] inp, int vd, bool reversal, float[:] out):
        self.lattice.mtcompute(&inp[0], vd, reversal, &out[0])
