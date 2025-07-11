# distutils: language = c++
# cython: language_level = 3

from libcpp cimport bool

cdef extern from "permutohedralfn.h":
    void pInit(const float *pfeature, const int d, const int pN, short *pkeys, float *pws) except +
    
    cdef cppclass PermutohedralFn:
        PermutohedralFn(int N, int d) except +
        void setWs_(float *ws)
        void seqInit(const short *keys) except +
        void compute(const float *inp, const int vd, const bool reversal, float *out) except +

cdef class PyPermutohedralFn:
    cdef PermutohedralFn *latticefn

    def __cinit__(self, int N, int d) -> None:
        self.latticefn = new PermutohedralFn(N, d)

    def __dealloc__(self):
        del self.latticefn

    def setWs_(self, float[:] ws):
        self.latticefn.setWs_(&ws[0])

    def seqInit(self, short[:] keys):
        self.latticefn.seqInit(&keys[0])

    def compute(self, float[:] inp, int vd, bool reversal, float[:] out):
        self.latticefn.compute(&inp[0], vd, reversal, &out[0])

def pyPInit(float[:] pfeature, int d, int pN, short[:] pkeys, float[:] pws):
    pInit(&pfeature[0], d, pN, &pkeys[0], &pws[0])
        