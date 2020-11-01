import numpy as np
import matplotlib.pyplot as plt
import os
from scipy.ndimage.filters import convolve as imfilter
from skimage.color import rgb2gray
import cv2
from skimage import morphology
from skimage.morphology import skeletonize
from skimage import measure

Img = rgb2gray(plt.imread('test_img/template.jpg'))
cv2.imshow('img', Img)

# Exiting the window if 'q' is pressed on the keyboard.
if cv2.waitKey(0) & 0xFF == ord('q'):
    cv2.destroyAllWindows()
