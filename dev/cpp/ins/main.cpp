#include "math.h"
#include "permutohedral_base.h"
//#include "permutohedral.h"

int main()
{
    int N = 1024 * 1024, d = 5;
    float *feature = new float[N * d];
    float *inp = new float[N * 3];
    int value_size = 3;
    float *out = new float[N * 3];

    Permutohedral *lattice = new Permutohedral(N, d);
    lattice->init(feature);
    lattice->compute(inp, value_size, false, out);
}
