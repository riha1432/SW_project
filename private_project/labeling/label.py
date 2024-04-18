import xml.etree.ElementTree as ET
import time
import cv2
import os

for i in range(975, 2032):
    try:
        tree = ET.parse('b (' + str(i) + ').xml')
        root = tree.getroot()
        img = cv2.imread('b (' + str(i) + ').png')
    except:
        continue
    object = root.findall('object')
    for j in object:
        x = j.find('bndbox').find('xmin').text
        y = j.find('bndbox').find('ymin').text
        xd = j.find('bndbox').find('xmax').text
        yd = j.find('bndbox').find('ymax').text
        x = int(x)
        y = int(y)
        xd = int(xd) - x
        yd = int(yd) - y
        cv2.rectangle(img, (x, y, xd, yd), (0, 0, 0), 3)
    cv2.imshow('a',a)
    cv2.waitKey(1)
    while(True):
        ind = input((str(i) + ' : '))
        try:
            ind = int(ind)
            if(ind == 1):
                os.remove('b (' + str(i) + ').xml')
                os.remove('b (' + str(i) + ').png')
            elif(ind == 0):
                break
            else:
                continue
            break
        except:
            continue