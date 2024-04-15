from sklearn.model_selection import train_test_split
import numpy as np
import os
import shutil

X = []
Y = []
for i in range(1,411):
    X.append('b ('+str(i)+').png')
    Y.append('b ('+str(i)+').txt')

X_train, X_test, Y_train, Y_test = train_test_split(X, Y, test_size=0.2, random_state=321)
X_train, X_val, Y_train, Y_val = train_test_split(X_train, Y_train, test_size=0.2, random_state=321)

img = 'C:/Users/kiusw/Desktop/yolov8/img/'
txt = 'C:/Users/kiusw/Desktop/yolov8/date/'
trainimg = 'C:/Users/kiusw/Desktop/yolov8/train/images/'
traintxt = 'C:/Users/kiusw/Desktop/yolov8/train/labels/'
testimg = 'C:/Users/kiusw/Desktop/yolov8/test/images/'
testtxt = 'C:/Users/kiusw/Desktop/yolov8/test/labels/'
valimg = 'C:/Users/kiusw/Desktop/yolov8/valid/images/'
valtxt = 'C:/Users/kiusw/Desktop/yolov8/valid/labels/'

for i in X_train:
    shutil.move(img + i, trainimg + i)
for i in X_test:
    shutil.move(img + i, testimg + i)
for i in X_val:
    shutil.move(img + i, valimg + i)

for i in Y_train:
    shutil.move(txt + i, traintxt + i)
for i in Y_test:
    shutil.move(txt + i, testtxt + i)
for i in Y_val:
    shutil.move(txt + i, valtxt + i)