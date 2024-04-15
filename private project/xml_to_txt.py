import xml.etree.ElementTree as ET
import time
import cv2
dic = {'Battery':0, 'Lighter':1, 'Aerosol':2, 'SupplymentaryBattery':3}

id_num = 0

for i in range(1, 411):
    file = 'date/b (' + str(i) + ').txt'
    f = open(file, 'w')
    
    tree = ET.parse('img/b (' + str(i) + ').xml')
    root = tree.getroot()

    object = root.findall('object')
    w = int(root.find('size').find('width').text)
    h = int(root.find('size').find('height').text)
    # print(w, h)
    for i in object:
        id = i.find('name').text
        
        if(dic.get(id) == None):
            continue

        x = i.find('bndbox').find('xmin').text
        y = i.find('bndbox').find('ymin').text
        xd = i.find('bndbox').find('xmax').text
        yd = i.find('bndbox').find('ymax').text
        x = int(x)
        y = int(y)
        xc = (x + int(xd)) / 2
        yc = (y + int(yd)) / 2
        xd = int(xd) - x
        yd = int(yd) - y
        f.write("%d %f %f %f %f\n" % (dic[id], xc / w, yc / h, xd / w, yd/ h))
    f.close()

print(dic)