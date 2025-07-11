#include <stdio.h>

#include "distkdtree.h"

int main() {
    int kd = 2, N = 4;
    short keys[kd * N] = {1, 2, 1, 3, 1, 2, 1, 4};
    short uniqkeys[kd * N] = {0};
    int offsets[N] = {0};

    DistinctKDTree tree(kd);

    tree.init(keys, N, offsets, uniqkeys);

    printf("leaves = %d\n", tree.nLeaves());

    for (int i = 0; i < N; i++) {
        printf("keys = %d %d, offset = %d\n", keys[i * kd], keys[i * kd + 1], offsets[i]);
    }

    for (int i = 0; i < tree.nLeaves(); i++) {
        for (int j = 0; j < kd; j++) {
            printf("uniqkey[%d][%d] = %d ", i, j, uniqkeys[i * kd + j]);
        }
        printf("\n");
    }

    int qN = 3;
    short query[qN * kd] = {1, 2, 1, 3, 1, 4};
    for (int i = 0; i < qN; i++) {
        printf("%d %d\n", query[i * kd], query[i * kd + 1]);
        printf("id = %d\n", tree.lookup(&query[i * kd]));
    }
}
