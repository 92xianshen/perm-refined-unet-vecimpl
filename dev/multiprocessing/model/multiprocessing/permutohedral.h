#ifndef PERMUTOHEDRAL_H
#define PERMUTOHEDRAL_H

#include <iostream>
#include <stdbool.h>
#include <string.h>
#include <vector>

using namespace std;

class Permutohedral {
  public:
    int N_ = 0, d_ = 0, d1_ = 0, M_ = 0, Nfilled_ = 0;
    float alpha_ = 0.f;

    int *os_;
    float *ws_;

    int *blur_neighbors_;

    // HashTable *table_;

    short *key_;

  public:
    Permutohedral(int N, int d);
    int get_d_();
    int *get_os_();
    float *get_ws_();
    void create_key_();
    short *get_key_();
    void delete_key_();
    void init(const float *feature);
    void seqinit();
    void delete_blurneighbors_();
    void compute(const float *inp, const int value_size, const bool reversal,
                 float *out);
    ~Permutohedral();
};

class PInitializer {
  public:
    /* data */
    int pN_, d_, d1_, Nfilled_;
    short *pkey_;
    float *pws_;
    PInitializer(int pN, int d, int Nfilled);
    void pinit(const float *pfeature);
    void pmerge(short *key, float *ws);
    ~PInitializer();
};

// void pinit(const float *pfeature, PInitializer *initializer);

#endif