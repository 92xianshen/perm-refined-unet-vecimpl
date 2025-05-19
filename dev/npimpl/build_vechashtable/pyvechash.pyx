# distutils: language = c++
# cython: language_level = 3

from libcpp cimport bool

cdef extern from "vechash.h":
    cdef cppclass HashTable:
        HashTable(int key_size, int n_elements) except +
        int find(const short *k, bool create) except +
        int size() except +
        const void getKeyByIdx(short *k, int i) except +

cdef class PyVecHashTable:
    cdef HashTable *table

    def __cinit__(self, int key_size, int n_elements):
        self.table = new HashTable(key_size, n_elements)

    def find(self, short[:] k, bool create):
        return self.table.find(&k[0], create)

    def size(self):
        return self.table.size()

    def get_key_by_idx(self, short[:] k, int i):
        self.table.getKeyByIdx(&k[0], i)

    def __dealloc__(self):
        del self.table