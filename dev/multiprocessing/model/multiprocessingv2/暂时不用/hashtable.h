#ifndef HASHTABLE_H
#define HASHTABLE_H

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
    void grow();
    size_t hash(const short *k);

  public:
    HashTable(int key_size, int n_elements);
    int size() const;
    void reset();
    int find(const short *k, bool create = false);
    const short *getKey(int i) const;
    // ~HashTable();
};

#endif