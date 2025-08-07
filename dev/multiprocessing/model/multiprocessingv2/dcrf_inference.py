import numpy as np

# from model.hybridv2.permtf import PermTF
# from model.multiprocessingv2.pypermutohedral import PyPermutohedral, pypinit
from model.multiprocessingv2.pydensecrf import PyDenseCRF, pypinit

from multiprocessing import Pool

def pinit(pfeature, pN, d, pkey, pbarycentric):
    pypinit(pfeature, pN, d, pkey, pbarycentric)
    return pkey, pbarycentric

class DCRFInference:
    def __init__(self, H, W, n_classes, d_bifeats, d_spfeats, theta_alpha, theta_beta, theta_gamma, bilateral_compat, spatial_compat, n_iterations):
        self.N = H * W
        self.H = H
        self.W = W
        self.n_classes = n_classes
        self.Ntile = 512 * 512
        self.tiles = self.N // self.Ntile
        self.d_bifeats = d_bifeats
        self.d_spfeats = d_spfeats
        self.theta_alpha = theta_alpha
        self.theta_beta = theta_beta
        self.theta_gamma = theta_gamma
        self.bilateral_compat = bilateral_compat
        self.spatial_compat = spatial_compat
        self.n_iterations = n_iterations

        self.n_processes = 2

        # self.d1 = self.d + 1
        # self.compatibility = -1.

        # self.biperm = PermTF(self.Ntile, self.d_bifeats)
        # self.spperm = PermTF(self.Ntile, self.d_spfeats)
        # self.bilattice = PyPermutohedral(self.N, self.d_bifeats)
        # self.splattice = PyPermutohedral(self.N, self.d_spfeats)
        self.dcrf = PyDenseCRF(self.H, self.W, self.n_classes, d_bifeats, d_spfeats, self.theta_alpha, self.theta_beta, self.theta_gamma, self.bilateral_compat, self.spatial_compat, self.n_iterations)
        # self.dcrf.set_bilattice(self.bilattice)
        # self.dcrf.set_splattice(self.splattice)
        
    def run(self, unary1d, reference1d, out1d):
        # Create feature
        bifeature = np.zeros((self.H * self.W * self.d_bifeats), dtype=np.float32) # (H, W, d)
        spfeature = np.zeros((self.H * self.W * self.d_spfeats), dtype=np.float32)
        self.dcrf.create_feature(reference1d, bifeature, spfeature)

        # Initialize lattices
        # bifeature = bifeature.reshape((self.tiles, self.Ntile, self.d_bifeats))
        # spfeature = spfeature.reshape((self.tiles, self.Ntile, self.d_spfeats))

        # Init in Multi-processing style
        # def bimpinit(dcrf, feature, N, d):
        pN = self.N // self.n_processes
        
        bimppool = Pool(processes=self.n_processes)

        bifeature = bifeature.reshape((self.n_processes, pN * self.d_bifeats))
        bikey = np.ndarray(self.N * (self.d_bifeats + 1) * self.d_bifeats, dtype=np.short)
        bibarycentric = np.ndarray(self.N * (self.d_bifeats + 2), dtype=np.float32)
        # key_list = []
        # barycentric_list = []
        biresults = []

        for i in range(self.n_processes):
            Nstart = i * pN
            
            pfeature = bifeature[i]
            pkey = bikey[(Nstart * (self.d_bifeats + 1) * self.d_bifeats):]
            pbarycentric = bibarycentric[(Nstart * (self.d_bifeats + 2)):]
            biresults.append(bimppool.apply_async(pinit, args=(pfeature, pN, self.d_bifeats, pkey, pbarycentric)))

        bimppool.close()
        bimppool.join()

        self.dcrf.create_bihashtable()
        for i in range(self.n_processes):
            pkey, pbarycentric = biresults[i].get()
            self.dcrf.bipinit(pkey, pbarycentric, pN, i * pN)

        self.dcrf.biseqinit()
        self.dcrf.del_bihashtable()

        del bifeature
        del bikey
        del bibarycentric
        del bimppool
        del biresults

        spmppool = Pool(processes=self.n_processes)

        spfeature = spfeature.reshape((self.n_processes, pN * self.d_spfeats))
        spkey = np.ndarray(self.N * (self.d_spfeats + 1) * self.d_spfeats, dtype=np.short)
        spbarycentric = np.ndarray(self.N * (self.d_spfeats + 2), dtype=np.float32)
        # key_list = []
        # barycentric_list = []
        spresults = []

        for i in range(self.n_processes):
            Nstart = i * pN
            
            pfeature = spfeature[i]
            pkey = spkey[(Nstart * (self.d_spfeats + 1) * self.d_spfeats):]
            pbarycentric = spbarycentric[(Nstart * (self.d_spfeats + 2)):]
            spresults.append(spmppool.apply_async(pinit, args=(pfeature, pN, self.d_spfeats, pkey, pbarycentric)))

        spmppool.close()
        spmppool.join()

        self.dcrf.create_sphashtable()
        for i in range(self.n_processes):
            pkey, pbarycentric = spresults[i].get()
            self.dcrf.sppinit(pkey, pbarycentric, pN, i * pN)

        self.dcrf.spseqinit()
        self.dcrf.del_sphashtable()

        del spfeature
        del spkey
        del spbarycentric
        del spmppool
        del spresults

        # mpinit(self.bilattice, bifeature, self.N, self.d_bifeats)
        # mpinit(self.splattice, spfeature, self.N, self.d_spfeats)
        # pN = self.N // self.n_processes
        # bimppool = Pool(processes=self.n_processes)
        # spmppool = Pool(processes=self.n_processes)
        # bikey = np.ndarray(self.N * (self.d_bifeats + 1) * self.d_bifeats, dtype=np.short)
        # bibarycentric = np.ndarray(self.N * (self.d_bifeats * 2), dtype=np.float32)
        # spkey = np.ndarray(self.N * (self.d_spfeats + 1) * self.d_spfeats, dtype=np.short)
        # spbarycentric = np.ndarray(self.N * (self.d_spfeats * 2), dtype=np.float32)
        # biresult = []
        # spresult = []

        # for i in range(self.n_processes):
        #     Nstart = i * self.pN

        #     pbifeature = bifeature[Nstart * self.d_bifeats:]
        #     pbikey = bikey[(Nstart * (self.d + 1) * self.d):]
        #     pbibarycentric = bibarycentric[(Nstart * (self.d + 2)):]

        #     biresult.append(bimppool.apply_async(pinit, args=(pbifeature, pN, self.d_bifeats, pbikey, pbibarycentric)))

        # bimppool.close()
        # bimppool.join()

        # self.bilattice.create_hashtable()
        # for i in range(self.n_processes):
        #     pbikey

        # for i in range(self.n_processes):

        #     pspfeature = spfeature[Nstart * self.d_spfeats:]

        # for i in range(self.tiles):
        #     bifeat = bifeature[i]
        #     spfeat = spfeature[i]

        #     pbikey, pbibarycentric = self.biperm.create_lattice(bifeat)
        #     pspkey, pspbarycentric = self.spperm.create_lattice(spfeat)

        #     self.dcrf.init_pbilattice(pbikey.numpy().reshape(-1), pbibarycentric.numpy().reshape(-1), self.Ntile)
        #     self.dcrf.init_psplattice(pspkey.numpy().reshape(-1), pspbarycentric.numpy().reshape(-1), self.Ntile)

        # del bifeature
        # del spfeature

        # self.dcrf.init_blurneighbors()
        # self.dcrf.init_spblurneighbors()

        self.dcrf.compute(unary1d, out1d)