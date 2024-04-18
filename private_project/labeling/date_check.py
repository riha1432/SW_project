import cv2

for i in ['a', 'b']:
    for j in range(1, 1000):
        txtfile = 'train/labels/' + i + ' (' + str(j) + ').txt'
        imgfile = 'train/images/' + i + ' (' + str(j) + ').png'
        # img = None
        try:
            f = open(txtfile, 'r')
            date = f.readlines()
            img = cv2.imread(imgfile)
            # print(img.shape)
            
        except:
            continue

        for sp in date:
            sp = sp.split()
            x = float(sp[1]) * img.shape[1]
            y = float(sp[2]) * img.shape[0]
            xx = float(sp[3]) * img.shape[1]/2
            yy = float(sp[4]) * img.shape[0]/2
            cv2.rectangle(img, (int(x-xx), int(y-yy), int(xx*2), int(yy*2)), 
                          (0, 0, 0), 3)
        a= cv2.resize(img,(1280,720))
        cv2.imshow('a', a)
        cv2.waitKey(200)
