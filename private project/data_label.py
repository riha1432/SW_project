import os

dic = {'Battery':0,'Knife':1,'Lighter':2,'SupplymentaryBattery':3,'Scissors':4,
       'Screwdriver':5,'Spanner':6,'Saw':7,'SmartPhone':8,'HDD':9,
       'Aerosol':10,'TabletPC':11}

lab = {'0':0, '2': 1, '10': 2, '3': 3}

#파일 저장 위치 지정
default = 'test/labels/'

for i in range(1, 1557):
    file = default + 'a (' + str(i) + ').txt'
    data = None
    try:
        fr = open(file, 'r')
        data = fr.readlines()
    except:
        continue
    
    fw = open(file, 'w')
    for i in data:
        label = i.split()
        if(lab.get(label[0]) == None):
            continue
        fw.write("%d %s %s %s %s\n" % (lab[label[0]], label[1], label[2], label[3], label[4]))

    fr.close()
    fw.close()