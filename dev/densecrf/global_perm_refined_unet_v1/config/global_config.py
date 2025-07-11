"""
Global configuration for experiments of GKDT Refined UNet

baseline parameters: theta_alpha = 80.0, theta_beta = 0.03125, theta_gamma = 3.0, rgb ref channels (band 4, 3, 2), 8 processes.

Hyperparameter test: theta_alpha, theta_beta.

Multi-band test: rgb and 7-band.

Time efficiency: num. of processes. and time consumption in terms of other parameters. 
"""

class GlobalConfig():
    def __init__(self) -> None:
        # ->> 1. Hyperparameter test
        # ->> theta_beta = 0.03125
        # self.theta_alpha = 120.0 # 4
        # self.theta_alpha = 80.0 # 1
        # self.theta_alpha = 40.0 # 2
        # self.theta_alpha = 10.0 # 3

        # ->> theta_alpha = 80.0
        # self.theta_beta = 0.03125 # 1
        # self.theta_beta = 0.0625 # 2
        # self.theta_beta = 0.125 # 3
        # self.theta_beta = 0.25 # 4

        # ->> Constant
        # self.theta_gamma = 3.0

        # ->> 2. Exploration of multi-spectral features
        # self.n_bands = 7 
        # self.img_channel_list, self.vis_channel_list = [4, 3, 2], None # RGB
        # self.save_path = "../../result/l8/rgb/a={}, b={}, r={}".format(self.theta_alpha, self.theta_beta, self.theta_gamma) # RGB
        # self.img_channel_list, self.vis_channel_list = list(range(self.n_bands)), [4, 3, 2] # Seven-band
        # self.save_path = "../../result/l8/fullband/a={}, b={}, r={}".format(self.theta_alpha, self.theta_beta, self.theta_gamma)

        # ->> 3. Ablation study with respect to the bilateral message-passing step
        # theta_alpha, theta_beta, theta_gamma = 80, .03125, 3
        
        # self.n_bands = 7 
        # self.img_channel_list, self.vis_channel_list = [4, 3, 2], None # RGB
        # self.save_path = "../../result/l8/wobilateral/a={}, b={}, r={}".format(self.theta_alpha, self.theta_beta, self.theta_gamma)

        # # - Check model
        # self.theta_alpha = 80.0 
        # self.theta_beta = 0.03125
        # self.theta_gamma = 3.0
        # self.save_path = "../../output/l8/rgb/a={}, b={}, r={}".format(self.theta_alpha, self.theta_beta, self.theta_gamma) # RGB

        # - 0. model name
        self.model_name = "efficient_glob_perm_rfn_unet"
        # - 1. Hyper-parameter test
        self.theta_alpha = [80.0, 40.0, 10.0, 120.0][0] # 80.0, 40.0, 10.0, 120.0 with theta_alpha=0.03125
        self.theta_beta = [0.03125, 0.0625, 0.125, 0.25][0] # 0.03125, 0.0625, 0.125, 0.25 with theta_alpha=80.0
        self.theta_gamma = 3.0
        # - 2. numbers of processes
        # self.n_processes = [8, 4, 2, 1][2]
        # - 3. multi-band, start = 4 and end = 1 refer to bands 4, 3, and 2 (false-color, RGB), start = 0 and end = 7 refer to bands 1 to 7 (multi-band). [4, 3, 2] is commonly used as false-color image. 
        self.channels = ["rgb", "multiband"][0]
        # - 4. data source
        self.dataset = ["l8", "rice"][0] # l8 or rice, l8 as default
        
        # - Input and output paths
        self.data_path = "E:/Research/experiment_data/{}/testcase".format(self.dataset) 
        self.save_path = "E:/Research/experiment_results/{}/{}/{}/a={}, b={}, r={}".format(self.model_name, self.dataset, self.channels, self.theta_alpha, self.theta_beta, self.theta_gamma) # RGB
        self.log_fname = "log.csv"

        # - Pretrained model
        self.ugenerator_path = "global_perm_refined_unet_v1/parameter/saved_model/unary_generator" if self.dataset == "l8" else None
        # - Reference channels
        self.channel_start = 4 if self.channels == "rgb" else 0 # channel_start, included
        self.channel_end = 1 if self.channels == "rgb" else 7 # channel_end, excluded
        self.n_channels = abs(self.channel_end - self.channel_start)
        self.channel_order = 1 if self.channel_end - self.channel_start > 0 else -1
        
        # - Input and output shapes, use as default
        self.tile_height = 512
        self.tile_width = 512
        self.num_bands = 7
        self.num_classes = 4
    
        # - CRF parameter
        self.d_bifeats = 5 if self.channels == "rgb" else 7 + 2
        self.d_spfeats = 2
        self.bilateral_compat = 10.0
        self.spatial_compat = 3.0
        self.compatibility = -1.0
        self.num_iterations = 10