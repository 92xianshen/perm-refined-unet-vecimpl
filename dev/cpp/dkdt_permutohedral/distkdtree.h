
#include <limits>
#include <vector>

using std::swap;
using std::vector;

// const int INF = std::numeric_limits<int>::infinity() - 10;
// const int INF = 10000000;
const int INF = std::numeric_limits<short>::max();

class DistinctKDTree {
  public:
    /* data */

    class Node {
      public:
        virtual ~Node() {}

        virtual int lookup(const short *query) = 0;

        // virtual void computeBounds(float *mins, float *maxs) {}
    };

    class Split : public Node {
      public:
        ~Split() {
            delete left_;
            delete right_;
        }

        int lookup(const short *query) {
            if (query[cutDim_] <= cutVal_) {
                // printf("query[%d] = %d, cutVal = %f, To left\n", cutDim_,
                //        query[cutDim_], cutVal_);
                return left_->lookup(query);
            } else {
                // printf("query[%d] = %d, cutVal = %f, To right\n", cutDim_,
                //        query[cutDim_], cutVal_);
                return right_->lookup(query);
            }
        }

        // void computeBounds(float *mins, float *maxs) {
        //     minVal_ = mins[cutDim_];
        //     maxVal_ = maxs[cutDim_];

        //     maxs[cutDim_] = cutVal_;
        //     left_->computeBounds(mins, maxs);
        //     maxs[cutDim_] = maxVal_;

        //     mins[cutDim_] = cutVal_;
        //     right_->computeBounds(mins, maxs);
        //     mins[cutDim_] = minVal_;
        // }

        int cutDim_;

        float cutVal_;

        Node *left_, *right_;
    };

    class Leaf : public Node {
      public:
        ~Leaf() {}

        int lookup(const short *query) {
            // for (size_t i = 0; i < key_.size(); i++) {
            //     printf("i = %d, query = %d, key_ = %d ", i, query[i],
            //     key_[i]);
            // }
            // printf("\n");

            for (size_t i = 0; i < key_.size(); i++) {
                if (query[i] != key_[i]) {
                    return 0;
                }
            }

            return offset_;
        }

        int offset_;
        vector<short> key_;
    };

  public:
    DistinctKDTree(int kd) {
        dimensions_ = kd;
        leaves_ = 0;
    }
    ~DistinctKDTree() { delete root_; }

    void init(const short *keys, int N, int *offsets, short *uniqkeys) {
        vector<const short *> kptrs(N);
        vector<int *> offptrs(N);
        for (int i = 0; i < N; i++) {
            kptrs[i] = keys + i * dimensions_;
            offptrs[i] = offsets + i;
        }

        root_ = build(&kptrs[0], N, &offptrs[0], uniqkeys);

        // printf("Tree initialized\n");

        // vector<float> kdtreeMins(dimensions_, -INF);
        // vector<float> kdtreeMaxs(dimensions_, +INF);
        // root_->computeBounds(&kdtreeMins[0], &kdtreeMaxs[0]);
    }

    Node *build(const short **kptrs, int N, int **offptrs, short *uniqkeys) {
        vector<short> mins(dimensions_, +INF), maxs(dimensions_, -INF);

        for (int i = 0; i < N; i++) {
            for (int j = 0; j < dimensions_; j++) {
                if (kptrs[i][j] < mins[j]) {
                    mins[j] = kptrs[i][j];
                }
                if (kptrs[i][j] > maxs[j]) {
                    maxs[j] = kptrs[i][j];
                }
            }
        }

        int longest = 0;
        for (int i = 1; i < dimensions_; i++) {
            if (maxs[i] - mins[i] > maxs[longest] - mins[longest]) {
                longest = i;
            }
        }

        // printf("longest = %d, maxs[%d] = %d and mins[%d] = %d\n", longest,
        // longest, maxs[longest], longest, mins[longest]);

        if (maxs[longest] - mins[longest] > 0) {
            Split *node = new Split();
            node->cutDim_ = longest;
            node->cutVal_ = (maxs[longest] + mins[longest]) / 2.0;

            int pivot = 0;
            for (int i = 0; i < N; i++) {
                if (kptrs[i][longest] > node->cutVal_) {
                    continue;
                }

                if (i == pivot) {
                    pivot++;
                    continue;
                }

                swap(kptrs[i], kptrs[pivot]);
                swap(offptrs[i], offptrs[pivot]);
                pivot++;
            }

            node->left_ = build(kptrs, pivot, offptrs, uniqkeys);
            node->right_ =
                build(kptrs + pivot, N - pivot, offptrs + pivot, uniqkeys);
            return node;
        } else {
            Leaf *node = new Leaf();
            node->offset_ = ++leaves_;
            // printf("leaf id: %d\n", node->id_);
            node->key_.resize(dimensions_);
            // printf("leaf keys: ");
            for (size_t i = 0; i < dimensions_; i++) {
                node->key_[i] = kptrs[0][i];
                uniqkeys[(node->offset_ - 1) * dimensions_ + i] = kptrs[0][i];
                // printf("%d ", node->key_[i]);
            }
            for (size_t i = 0; i < N; i++) {
                *offptrs[i] = node->offset_;
            }

            // printf("\n");
            return node;
        }
    }

    int nLeaves() { return leaves_; }

    int lookup(const short *query) { return root_->lookup(query); }

    Node *root_;
    int dimensions_;
    // float sizeBound_;
    int leaves_;
};
