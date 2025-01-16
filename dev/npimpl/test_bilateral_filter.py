import numpy as np
from PIL import Image

import time

import cv2

import jax

from bilateral_filter import bilateral_filter

def test():
    im = Image.open("../../data/lenna.png").resize((512, 512))
    im = np.array(im, dtype=np.float32) / 255.

    start = time.time()
    out = bilateral_filter(im, im, 5., .25)
    print("Time: ", time.time() - start)

    cv2.imshow("im", im[..., ::-1])
    cv2.imshow("dst", out[..., ::-1])
    cv2.waitKey()

if __name__ == "__main__":
    test()