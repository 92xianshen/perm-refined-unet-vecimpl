import numpy as np
import time

from multiprocessing import Pool

from pypermutohedralfn import PyPermutohedralFn, pyPInit

class PyPPermutohedral:
    def __init__(self, N, d):
        self.N_, self.d_, self.d1_ = N, d, d + 1
        self.latticefn = PyPermutohedralFn(N, d)

        self.ws_ = np.zeros((N * (d + 1), ), dtype=np.float32)
        self.keys = np.zeros((N * (d + 1) * d), dtype=np.short)

        self.latticefn.setWs_(self.ws_)


    def init(self, feature):
        start = time.time()
        pyPInit(feature, self.d_, self.N_, self.keys, self.ws_)
        print("parallel: {}".format(time.time() - start))
        # self.latticefn.setWs_(self.ws_)
        start = time.time()
        self.latticefn.seqInit(self.keys)
        print("seq: {}".format(time.time() - start))

    def mpinit(self, feature, config):
        start = time.time()
        print(config.n_processes)
        if not self.N_ % config.n_processes == 0:
            raise Exception("Cannot run in a parallel mode.")

        pN = self.N_ // config.n_processes
        mppool = Pool(processes=config.n_processes)
        results = list()
        
        for i in range(config.n_processes):
            Nstart = i * pN
            Nstop = (i + 1) * pN
            pfeature = feature[(Nstart * self.d_):(Nstop * self.d_)]

            results.append(mppool.apply_async(pinit, args=(pfeature, self.d_, pN)))

        mppool.close()
        mppool.join() 

        for i in range(config.n_processes):
            pws, pkeys = results[i].get()
            self.ws_[(i * pN * self.d1_):((i + 1) * pN * self.d1_)] = pws
            self.keys[(i * pN * self.d1_ * self.d_):((i + 1) * pN * self.d1_ * self.d_)] = pkeys

            del pws
            del pkeys
        print("parallel: {}".format(time.time() - start))

        start = time.time()
        self.latticefn.seqInit(self.keys)
        print("seq: {}".format(time.time() - start))


    def compute(self, inp, vd, reversal, out):
        self.latticefn.compute(inp, vd, reversal, out)

# def pinit(feature, d, Nstart, Nstop, keys, ws):
#     pyPInit(feature, d, Nstart, Nstop, keys, ws)

# def mpinit(lattice, feature, config):
#     """
#     init in a MP way
#     """
#     print(config.n_processes)
#     if not lattice.N_ % config.n_processes == 0:
#         raise Exception("Cannot run in a parallel mode.")

#     n_parallels = lattice.N_ // config.n_processes
#     mppool = Pool(processes=config.n_processes)

#     for i in range(config.n_processes):
#         Nstart = i * n_parallels
#         Nstop = (i + 1) * n_parallels
#         # pkeys = self.keys[(Nstart * self.d1_ * self.d_):(Nstop * self.d1_ * self.d_)]
#         # pws = self.ws_[(Nstart * self.d1_):(Nstop * self.d1_)]
#         mppool.apply_async(pinit, args=(feature, lattice.d_, Nstart, Nstop, lattice.keys, lattice.ws_))

#     mppool.close()
#     mppool.join() 

def pinit(pfeature, d, pN):
    pws = np.zeros((pN * (d + 1), ), dtype=np.float32)
    pkeys = np.zeros((pN * (d + 1) * d), dtype=np.short)

    pyPInit(pfeature, d, pN, pkeys, pws)

    return pws, pkeys
    