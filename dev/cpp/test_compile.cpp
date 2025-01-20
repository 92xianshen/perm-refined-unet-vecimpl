#include "permutohedral.h"

int main() {
    int d = 5, N = 512 * 512;

    Permutohedral *lattice = new Permutohedral(N, d);

    float *feature = new float[d * N]{1.f};

    lattice->testInit(feature);

    delete lattice;
    delete[] feature;

    return 0;
}
