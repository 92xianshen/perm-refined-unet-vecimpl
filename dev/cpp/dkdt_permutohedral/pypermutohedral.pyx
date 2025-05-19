# distutils: language = c++
# cython: language_level = 3

from libcpp cimport bool

cdef extern from "permutohedral.h":
    cdef cppclass Permutohedral:
        Permutohedral(int N, int d) except +
        void init(const float *feature) except +
        void compute(const float *inp, const int value_size, const bool reversal, float *out) except +

cdef class PyPermutohedral:
    cdef Permutohedral *lattice

    def __cinit__(self, int N, int d) -> None:
        self.lattice = new Permutohedral(N, d)

    def __dealloc__(self):
        del self.lattice

    def init(self, float[:] feature):
        self.lattice.init(&feature[0])

    def compute(self, float[:] inp, int value_size, bool reversal, float[:] out):
        self.lattice.compute(&inp[0], value_size, reversal, &out[0])
        