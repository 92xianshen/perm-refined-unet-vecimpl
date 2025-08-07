import numpy as np
from multiprocessing import Pool

from model.multiprocessingv2.pypermutohedral import PyPermutohedral, pypinit

# def pinit(pfeature, pN, d):
#     pkey = np.ndarray((pN * (d + 1) * d, ), dtype=np.short)
#     pbarycentric = np.ndarray((pN * (d + 2), ), dtype=np.float32)
#     pypinit(pfeature, pN, d, pkey, pbarycentric)
#     return pkey, pbarycentric

def pinit(pfeature, pN, d, pkey, pbarycentric):
    pypinit(pfeature, pN, d, pkey, pbarycentric)
    return pkey, pbarycentric

def mpinit(lattice, feature, N, d):
    n_processes = 8
    pN = N // n_processes
    mppool = Pool(processes=n_processes)

    initers = []
    feature = feature.reshape((n_processes, pN * d))
    key = np.ndarray(N * (d + 1) * d, dtype=np.short)
    barycentric = np.ndarray(N * (d + 2), dtype=np.float32)
    # key_list = []
    # barycentric_list = []
    results = []

    for i in range(n_processes):
        Nstart = i * pN
        Nstop = i * pN + pN
        # initer = PyPInitializer(pN, d, Nstart)
        # initers.append(initer)
        # pkey = np.ndarray((pN * (d + 1) * d, ), dtype=np.short)
        # pbarycentric = np.ndarray((pN * (d + 2), ), dtype=np.float32)
        # key_list.append(pkey)
        # barycentric_list.append(pbarycentric)
        
        pfeature = feature[i]
        pkey = key[(Nstart * (d + 1) * d):]
        pbarycentric = barycentric[(Nstart * (d + 2)):]
        # pkey = key[(Nstart * (d + 1) * d):(Nstop * (d + 1) * d)]
        # pbarycentric = barycentric[(Nstart * (d + 2)):(Nstop * (d + 2))]
        # results.append(mppool.apply_async(pinit, args=(pfeature, pN, d)))
        # pinit(pfeature, pkey, pbarycentric)
        # mppool.apply_async(pinit, args=(pfeature, pN, d, pkey, pbarycentric))
        results.append(mppool.apply_async(pinit, args=(pfeature, pN, d, pkey, pbarycentric)))

    mppool.close()
    mppool.join()

    # key = np.concatenate(key_list)
    # barycentric = np.concatenate(barycentric_list)
    # lattice.seqinit(key, barycentric)

    lattice.create_hashtable()
    for i in range(n_processes):
        pkey, pbarycentric = results[i].get()
        # initer = initers[i]
        # pkey, pbarycentric = key_list[i], barycentric_list[i]
        lattice.pinit(pkey, pbarycentric, pN, i * pN)

    lattice.seqinit()
    lattice.del_hashtable()
