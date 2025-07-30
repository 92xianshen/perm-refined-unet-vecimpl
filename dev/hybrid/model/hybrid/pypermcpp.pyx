# distutils: language = c++
# cython: language_level = 3

from libcpp cimport bool

cdef extern from "permcpp.h":
    cdef cppclass Permutohedral:
        Permutohedral(int N, int d) except +
        void init_lattice(const short *key, const float *barycentric, int N) except +
        void init_bneighbors() except +
        void compute(const float *inp, const int value_size, const bool reversal, float *out) except +

cdef class PyPermCPP:
    cdef Permutohedral *lattice

    def __cinit__(self, int N, int d) -> None:
        self.lattice = new Permutohedral(N, d)

    def __dealloc__(self):
        del self.lattice

    def init_lattice(self, short[:] key, float[:] barycentric, int N):
        self.lattice.init_lattice(&key[0], &barycentric[0], N)

    def init_bneighbors(self):
        self.lattice.init_bneighbors()

    def compute(self, float[:] inp, int vsize, bool reversal, float[:] out):
        self.lattice.compute(&inp[0], vsize, reversal, &out[0])