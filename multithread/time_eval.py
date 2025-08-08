"""
Time evaluation
"""

import os
import pandas as pd
import numpy as np

from scipy.stats import ttest_rel

outname = "time.tex"

times_wrt_nThrd = {
    2: [], 
    4: [], 
    8: [], 
    16: [], 
    32: [], 
}

with open(outname, "w") as fwriter:
    lines = "version & time\\\\\n"
    for n_thread in times_wrt_nThrd.keys():
        path = "E:/Research/experiment_results/efficient_glob_perm_rfn_unet/iiki2025/cppthreadv2/l8/0/{}/a=80.0, b=0.03125, r=3.0".format(n_thread)  # Perm. RFN. UNet w/o bilateral message-passing step
        for i in range(10):
            fname = os.path.join(path, "log{:03}.csv".format(i + 1))
            dframe = pd.read_csv(fname)
            times_wrt_nThrd[n_thread].append(dframe[" duration"].values[0])
        # dframe = pd.DataFrame(times)
        # # print(dframe[0])
        # mean_t, std_t = dframe[0].mean(), dframe[0].std()
        # mean_t, std_t = np.round(mean_t, 2), np.round(std_t, 2)

        # print(mean_t, std_t)
        mean_t = np.round(np.mean(times_wrt_nThrd[n_thread]), 2)
        std_t = np.round(np.std(times_wrt_nThrd[n_thread], ddof=1), 2)

        lines += "{} & ${} \\pm {}$\\\\\n".format(n_thread, mean_t, std_t)

    lines += "\n"
    
    # fwriter.writelines(lines)

    # fwriter.writelines("\n")

    result = ttest_rel(times_wrt_nThrd[2], times_wrt_nThrd[4])

    lines += "2 and 4, result = {}, p < 0.05 is {}\n".format(result, result.pvalue < 0.05)

    result = ttest_rel(times_wrt_nThrd[4], times_wrt_nThrd[8])

    lines += "4 and 8, result = {}, p < 0.05 is {}\n".format(result, result.pvalue < 0.05)

    result = ttest_rel(times_wrt_nThrd[8], times_wrt_nThrd[16])

    lines += "8 and 16, result = {}, p < 0.05 is {}\n".format(result, result.pvalue < 0.05)

    result = ttest_rel(times_wrt_nThrd[16], times_wrt_nThrd[32])

    lines += "16 and 32, result = {}, p < 0.05 is {}\n".format(result, result.pvalue < 0.05)

    fwriter.writelines(lines)