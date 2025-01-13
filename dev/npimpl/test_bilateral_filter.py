import numpy as np
from PIL import Image

import cv2

from bilateral_filter import bilateral_filter

im = Image.open("../data/lenna.png").resize((512, 512))
im = np.array(im, dtype=np.float32) / 255.

out = bilateral_filter(im, im, 5., .25)

cv2.imshow("im", im[..., ::-1])
cv2.imshow("dst", out[..., ::-1])
cv2.waitKey()