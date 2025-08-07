#ifndef PERMUTOHEDRAL_H
#define PERMUTOHEDRAL_H

#include <iostream>
#include <stdbool.h>
#include <string.h>
#include <vector>

#include <thread>

using namespace std;

class Permutohedral {
  private:
    int N_ = 0, d_ = 0, d1_ = 0, M_ = 0;
    float alpha_ = 0.f;

    int *os_ = NULL;
    float *ws_ = NULL;

    int *blur_neighbors_ = NULL;

  public:
    Permutohedral(int N, int d);
    void seqinit(const float *feature);
    void mpinit(const float *feature, const int n_thread);
    void delete_blurneighbors_();
    void compute(const float *inp, const int value_size, const bool reversal,
                 float *out);
    ~Permutohedral();
};

void pinit(const float *pfeature, int pN, int d, int Nfilled, short *pkey,
           float *ws);

#endif