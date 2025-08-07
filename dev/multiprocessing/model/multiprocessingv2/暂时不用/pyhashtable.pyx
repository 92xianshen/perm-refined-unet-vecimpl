# distutils: language = c++
# cython: language_level = 3
# distutils: sources = hashtable.cpp

from libcpp cimport bool

cdef extern from "hashtable.h":
    cdef cppclass HashTable:
        HashTable(int key_size, int n_elements) except +
        int size() except +
        # void reset() except +
        # int find(const short *k, bool create) except +
        # const short *getKey(int i) const except +

cdef class PyHashTable:
    cdef HashTable *table

    def __cinit__(self, int kd, int N):
        self.table = new HashTable(kd, N)

    def __dealloc__(self):
        del self.table

    def size(self):
        return self.table.size()