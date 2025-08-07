#ifndef PERMUTOHEDRAL_H
#define PERMUTOHEDRAL_H

#include <iostream>
#include <stdbool.h>
#include <string.h>
#include <vector>

using namespace std;

class HashTable {
  protected:
    size_t key_size_, filled_, capacity_;
    std::vector<short> keys_;
    std::vector<int> table_;
    void grow() {
        // Create the new memory and copy the values in
        int old_capacity = capacity_;
        capacity_ *= 2;
        std::vector<short> old_keys((old_capacity + 10) * key_size_);
        std::copy(keys_.begin(), keys_.end(), old_keys.begin());
        std::vector<int> old_table(capacity_, -1);

        // Swap the memory
        table_.swap(old_table);
        keys_.swap(old_keys);

        // Reinsert each element
        for (int i = 0; i < old_capacity; i++)
            if (old_table[i] >= 0) {
                int e = old_table[i];
                size_t h = hash(getKey(e)) % capacity_;
                for (; table_[h] >= 0; h = h < capacity_ - 1 ? h + 1 : 0)
                    ;
                table_[h] = e;
            }
    }
    size_t hash(const short *k) {
        size_t r = 0;
        for (size_t i = 0; i < key_size_; i++) {
            r += k[i];
            r *= 1664525;
        }
        return r;
    }

  public:
    explicit HashTable(int key_size, int n_elements)
        : key_size_(key_size), filled_(0), capacity_(2 * n_elements),
          keys_((capacity_ / 2 + 10) * key_size_), table_(2 * n_elements, -1) {}
    int size() const { return filled_; }
    void reset() {
        filled_ = 0;
        std::fill(table_.begin(), table_.end(), -1);
    }
    int find(const short *k, bool create = false) {
        if (2 * filled_ >= capacity_)
            grow();
        // Get the hash value
        size_t h = hash(k) % capacity_;
        // Find the element with he right key, using linear probing
        while (1) {
            int e = table_[h];
            if (e == -1) {
                if (create) {
                    // Insert a new key and return the new id
                    for (size_t i = 0; i < key_size_; i++)
                        keys_[filled_ * key_size_ + i] = k[i];
                    return table_[h] = filled_++;
                } else
                    return -1;
            }
            // Check if the current key is The One
            bool good = true;
            for (size_t i = 0; i < key_size_ && good; i++)
                if (keys_[e * key_size_ + i] != k[i])
                    good = false;
            if (good)
                return e;
            // Continue searching
            h++;
            if (h == capacity_)
                h = 0;
        }
    }
    const short *getKey(int i) const { return &keys_[i * key_size_]; }
};

// class PInitializer {
//   public:
//     /* data */
//     int pN_, d_, d1_, Nfilled_;
//     // short *pkey;
//     // float *pbarycentric;

//   public:
//     PInitializer(int pN, int d, int Nfilled);
    
//     ~PInitializer();
// };

void pinit(const float *pfeature, int pN, int d, short *pkey, float *pbarycentric);

class Permutohedral {
  private:
    int N_ = 0, d_ = 0, d1_ = 0, M_ = 0, Nfilled_ = 0;
    float alpha_ = 0.f;

    int *os_ = 0;
    float *ws_ = 0;

    int *blur_neighbors_ = 0;

    HashTable *table_;

    // short *key_;

  public:
    Permutohedral(int N, int d);
    // void link_os_(int *os);
    // void link_ws_(float *ws);
    // void link_blurneighbors_(int *blur_neighbors);
    // void link_key_(short *key);
    // void link_pvars(float *ws, short *key);
    void init(const float *feature);
    void create_hashtable();
    void del_hashtable();
    // void pinit(const float *pfeature, const int pN, short *pkey, float *pw);
    void pinit(short *pkey, float *pbarycentric, int pN, int Nfilled);
    void seqinit();
    void delete_blurneighbors_();
    // void calc_blurneighbors_();
    void compute(const float *inp, const int value_size, const bool reversal,
                 float *out);
    ~Permutohedral();
};

// void pinit(const float *pfeature, PInitializer *initializer);

#endif