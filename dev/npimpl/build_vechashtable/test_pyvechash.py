
import numpy as np
from pyvechash import PyVecHashTable

key_size = 5
table = PyVecHashTable(key_size, 100)

k = np.array([1, 2, 3, 4, 5], dtype=np.short)

print(table.find(k, create=True))

k[4] += 10

print(table.find(k, create=True))

k[4] -= 10

print(table.find(k, create=True))

print(table.find(k, create=False))

k[4] -= 5

print(table.find(k, create=False))

print(table.find(k, create=True))

k2 = np.zeros((key_size, ), dtype=np.short)

print(k2)

table.get_key_by_idx(k2, 0)

print(k2)

table.get_key_by_idx(k2, 1)

print(k2)