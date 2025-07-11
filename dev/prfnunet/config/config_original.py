"""
Experimental configuration.

Experiments
    1. Hyperparameter test.
        1.1 theta_beta = 0.03125 with theta_alpha = 120.0 (4), 80.0 (1), 40.0 (2), 10.0 (3). 
        1.2 theta_alpha = 80.0 with theta_beta = 0.03125 (1), 0.0625 (2), 0.125 (3), 0.25 (4).
    2. Exploration of multi-spectral features.
        2.1 self.img_channel_list, self.vis_channel_list = [4, 3, 2], None # RGB, acquired.
        2.2 self.img_channel_list, self.vis_channel_list = list(range(self.n_bands)), [4, 3, 2] # Seven-band.
    3. Dataset.
        3.1 L8

Default:
    theta_beta = 0.03125, theta_alpha = 80, channels = rgb, dataset = L8
"""

class Config:
    def __init__(self) -> None:
        # ==> Hyperparameters, v1
        # self.theta_alpha, self.theta_beta, self.theta_gamma = 80.0, 0.03125, 3.0 # critical hyperparameters
        # ==> setting v2
        self.theta_alpha = [80.0, 40.0, 10.0, 120.0][0] # 80.0, 40.0, 10.0, 120.0 with theta_alpha=0.03125
        self.theta_beta = [0.03125, 0.0625, 0.125, 0.25][0] # 0.03125, 0.0625, 0.125, 0.25 with theta_alpha=80.0
        self.theta_gamma = 3.0
        
        # ==> v1
        # self.img_channel_list, self.vis_channel_list = [4, 3, 2], None # bilateral features for CRF, RGB now
        # ==> v2
        self.channels = {
            "rgb": 0, 
            "multispectral": 1, 
        }["rgb"]

        # ==> dataset
        self.dataset = ["l8"][0]

        self.img_channel_list = [[4, 3, 2], [0, 1, 2, 3, 4, 5, 6]][self.channels]
        self.vis_channel_list = [None, [4, 3, 2]][self.channels]

        # - Input and output
        self.data_path = "E:/Research/experiment_data/{}/testcase".format(self.dataset)
        # self.save_path = "../output/a={}, b={}, r={}".format(self.theta_alpha, self.theta_beta, self.theta_gamma) # Perm. RFN. UNet
        self.save_path = "E:/Research/experiment_results/efficient_glob_perm_rfn_unet/perm_rfn_unet_base/{}/{}/a={}, b={}, r={}".format(self.dataset, self.channels, self.theta_alpha, self.theta_beta, self.theta_gamma) # Perm. RFN. UNet w/o bilateral message-passing step
        self.save_info_fname = "log.csv"

        # - Model parameters
        self.n_bands = 7 # number of inputs of UNet
        self.n_classes = 4 # number of classes of UNet output
        self.model_path = "unary_model/"
        self.crop_height = 512
        self.crop_width = 512
        self.bilateral_compat = 10.0
        self.spatial_compat = 3.0
        self.n_iterations = 10
