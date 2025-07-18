import os
import numpy as np
import matplotlib.pyplot as plt
from PIL import Image

versions = ["original", "noif", "norm", "noeigen"] 

# if not os.path.exists(output_path):
#     os.makedirs(output_path)
#     print("Create {}.".format(output_path))

CROP_HEIGHT = 512
CROP_WIDTH = 512

def extract_patches(image, crop_height=CROP_HEIGHT, crop_width=CROP_WIDTH):
    """Crop the image to width x height patches.
    """
    assert image.shape[0] % crop_height == 0, 'The height of input image is not the multiple of crop_height {}.'.format(crop_height)
    assert image.shape[1] % crop_width == 0, 'The width of input image is not the multiple of crop_width {}.'.format(crop_width)

    num_height = image.shape[0] // crop_height
    num_width = image.shape[1] // crop_width

    image_patches = []
    
    for i in range(num_height):
        for j in range(num_width):
            image_patch = image[(crop_height * i):(crop_height * (i + 1)), (crop_width * j):(crop_width * (j + 1))]

            image_patches += [image_patch[np.newaxis, ...]]

    images = np.concatenate(image_patches, axis=0)

    return images, num_height, num_width

for version in versions:
    input_path = os.path.join("visual/jpg/{}".format(version))
    output_path = os.path.join("visual/jpg/{}".format(version))
    fnames = os.listdir(input_path)
    for fname in fnames:
        if 'masked' in fname:
            rfn_im = Image.open(os.path.join(input_path, fname))
            # false_im = Image.open(fname.replace('mask.npz', 'false_color.png'))
            rfn = np.array(rfn_im)
            # false = np.array(false_im)
            save_path = os.path.join(output_path, fname.replace('.jpg', ''))

            if not os.path.exists(save_path):
                os.makedirs(save_path)

            rfn_patches, _, _ = extract_patches(rfn)
            # false_patches, _, _ = extract_patches(false)

            for i in range(rfn_patches.shape[0]):
                plt.imsave(os.path.join(save_path, '_rfn_{}.jpg'.format(i)), rfn_patches[i])
                print("Write to {}.".format(os.path.join(save_path, '_rfn_{}.jpg'.format(i))))
                os.chmod(os.path.join(save_path, '_rfn_{}.jpg'.format(i)), mode=0o444)
                print("Secure `{}`".format(os.path.join(save_path, '_rfn_{}.jpg'.format(i))))
                # plt.imsave(os.path.join(fname.replace('.npz', ''), '_falsecolor_{}.png'.format(i)), false_patches[i])

            height, width = rfn.shape[0], rfn.shape[1]
            rfn_im.resize((width // 10, height // 10)).save(os.path.join(save_path, fname.replace('.jpg', '_0.1size.jpg')))
            print("Write to {}.".format(os.path.join(save_path, fname.replace('.jpg', '_0.1size.jpg'))))
            os.chmod(os.path.join(save_path, fname.replace('.jpg', '_0.1size.jpg')), mode=0o444)
            print("Secure `{}`".format(os.path.join(save_path, fname.replace('.jpg', '_0.1size.jpg'))))
            # height, width = false.shape[0], false.shape[1]
            # false_im.resize((width // 10, height // 10)).save(fname.replace('mask.npz', 'false_color_0.1size.png'))