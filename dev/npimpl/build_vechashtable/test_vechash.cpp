#include "stdio.h"

#include "vechash.h"

int main () {
    const int key_size = 5;
    HashTable table(key_size, 100);

    short k[key_size] = {1, 2, 3, 4, 5};

    printf("%d", table.find(k, true));

    k[4] += 10;

    printf("%d", table.find(k, true));

    k[4] -= 10;

    printf("%d", table.find(k, true));

    printf("%d", table.find(k, false));

    k[4] -= 5;

    printf("%d", table.find(k, false));

    printf("%d", table.find(k, true));

    short k2[key_size];

    printf("\n%d %d %d %d %d\n", k2[0], k2[1], k2[2], k2[3], k2[4]);

    table.getKeyByIdx(k2, 0);

    printf("\n%d %d %d %d %d\n", k2[0], k2[1], k2[2], k2[3], k2[4]);

    table.getKeyByIdx(k2, 1);

    printf("\n%d %d %d %d %d\n", k2[0], k2[1], k2[2], k2[3], k2[4]);
}
