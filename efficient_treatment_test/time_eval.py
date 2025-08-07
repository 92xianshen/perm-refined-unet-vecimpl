"""
Time evaluation
"""

import os
import pandas as pd
import numpy as np

from scipy.stats import ttest_rel

outname = "time.tex"

times = {
    "original": [], 
    "noif": [], 
    "norm": [], 
    "noeigen": [], 
}

with open(outname, "w") as fwriter:
    lines = "version & time\\\\\n"
    for version in times.keys():
        path = "E:/Research/experiment_results/efficient_glob_perm_rfn_unet/iiki2025/{}/l8/0/a=80.0, b=0.03125, r=3.0".format(version)  # Perm. RFN. UNet w/o bilateral message-passing step
        for i in range(10):
            fname = os.path.join(path, "log{:03}.csv".format(i + 1))
            dframe = pd.read_csv(fname)
            times[version].append(dframe[" duration"].values[0])
        # dframe = pd.DataFrame(times)
        # # print(dframe[0])
        # mean_t, std_t = dframe[0].mean(), dframe[0].std()
        # mean_t, std_t = np.round(mean_t, 2), np.round(std_t, 2)

        # print(mean_t, std_t)
        mean_t = np.round(np.mean(times[version]), 2)
        std_t = np.round(np.std(times[version], ddof=1), 2)

        lines += "{} & ${} \\pm {}$\\\\\n".format(version, mean_t, std_t)

    lines += "\n"
    
    # fwriter.writelines(lines)

    # fwriter.writelines("\n")

    result = ttest_rel(times["original"], times["noif"])

    lines += "original and noif, result = {}".format(result)

    result = ttest_rel(times["noif"], times["norm"])

    lines += "noif and norm, result = {}".format(result)

    result = ttest_rel(times["norm"], times["noeigen"])

    lines += "norm and noeigen, result = {}".format(result)

    fwriter.writelines(lines)