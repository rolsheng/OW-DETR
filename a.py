from PIL import Image
import numpy as np
img = np.asarray(Image.open("data/OWDETR/VOC2007/JPEGImages/0001.jpg"))
# img = np.transpose(img,[1,0,2])
print(img.shape)