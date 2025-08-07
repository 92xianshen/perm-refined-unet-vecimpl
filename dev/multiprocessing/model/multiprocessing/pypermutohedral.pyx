# distutils: language = c++
# cython: language_level = 3
# distutils: sources = permutohedral.cpp

from libcpp cimport bool

cdef extern from "permutohedral.h":
    cdef cppclass Permutohedral:
        Permutohedral(int N, int d) except +
        int get_d_() except +
        void create_key_() except +
        short *get_key_() except +
        float *get_ws_() except +
        void delete_key_() except +
        # void pinit(const float *pfeature, int pN, int Nfilled) except +
        void seqinit() except +
        void delete_blurneighbors_() except +
        void compute(const float *inp, const int value_size, const bool reversal,
                    float *out) except +
        # ~Permutohedral()
    cdef cppclass PInitializer:
        PInitializer(int pN, int d, int Nfilled) except +
        # ~PInitializer()
        void pinit(const float *pfeature) except +
        void pmerge(short *key, float *ws) except +

cdef class PyPermutohedral:
    cdef Permutohedral *lattice

    def __cinit__(self, int N, int d):
        self.lattice = new Permutohedral(N, d)

    def __dealloc__(self):
        del self.lattice

    # def pinit(self, float[:] pfeature, int pN, int Nfilled):
    #     self.lattice.pinit(&pfeature[0], pN, Nfilled)

    def seqinit(self):
        self.lattice.seqinit()

    def create_key_(self):
        self.lattice.create_key_()

    def delete_key_(self):
        self.lattice.delete_key_()

    def delete_blurneighbors_(self):
        self.lattice.delete_blurneighbors_()

    def compute(self, float[:] inp, int vd, bool reversal, float[:] out):
        self.lattice.compute(&inp[0], vd, reversal, &out[0])

cdef class PyPInitializer:
    cdef PInitializer *initializer

    def __cinit__(self, int pN, int Nfilled, PyPermutohedral pylattice):
        self.initializer = new PInitializer(pN, pylattice.lattice.get_d_(), Nfilled)

    def __dealloc__(self):
        del self.initializer

    def pypinit(self, float[:] pfeature):
        self.initializer.pinit(&pfeature[0])

    def pypmerge(self, PyPermutohedral pylattice):
        self.initializer.pmerge(pylattice.lattice.get_key_(), pylattice.lattice.get_ws_())