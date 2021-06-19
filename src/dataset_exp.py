import sys
sys.path.append("../src/")
import matplotlib.pyplot as plt
import torch
import numpy as np
from dataset import BengaliDatasetTrain
from PIL import Image

dataset = BengaliDatasetTrain(folds=[0,1], img_height=137, img_width=236, mean=[0.485, 0.456, 0.406], std=[0.229, 0.224, 0.225])
print(len(dataset))

idx = 0
image = dataset[idx]["image"]
print(dataset[idx]["grapheme_root"])
print(dataset[idx]["vowel_diacritic"])
print(dataset[idx]["consonant_diacritic"])
npimage = image.numpy()
to_save = np.transpose(npimage, (1,2,0))
plt.imshow(to_save)