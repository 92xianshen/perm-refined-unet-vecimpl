import numpy as np

# from permutohedralx_function_REF import PermutohedralXFunction
# from np_permutohedral import NPPermutohedral

# if __name__ == "__main__":
#     tf_perm = PermutohedralXFunction(N=512 * 512, d=5)
#     np_perm = NPPermutohedral(N=512 * 512, d=5)

#     print(tf_perm.canonical, "\n", np_perm.canonical)
#     print(np.all(tf_perm.canonical == np_perm.canonical))

#     print(tf_perm.scale_factor, "\n", np_perm.scale_factor)
#     print(np.allclose(tf_perm.scale_factor, np_perm.scale_factor))

#     print(tf_perm.diff_valid, "\n", np_perm.diff_valid)
#     print(np.all(tf_perm.diff_valid == np_perm.diff_valid))

#     print(tf_perm.alpha)
#     print(np_perm.alpha)
#     print(np.allclose(tf_perm.alpha, np_perm.alpha))

#     print(tf_perm.d_mat)
#     print(np_perm.dI)
#     print(np.all(tf_perm.d_mat == np_perm.dI))

#     print(tf_perm.diagone)
#     print(np_perm.I)
#     print(np.all(tf_perm.diagone == np_perm.I))


d = 5
diff = np.array([1, 2, 3, 4, 5, 6], dtype=np.int32)
rank = np.zeros_like(diff, dtype=np.int32)

for i in range(d):
    di = diff[i]
    for j in range(i + 1, d + 1):
        if (di < diff[j]):
            rank[i] += 1
        else:
            rank[j] += 1

print(rank)

print(d - diff.argsort(kind="stable"))