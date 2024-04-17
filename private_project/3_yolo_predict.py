from ultralytics import YOLO
import os

now_path = os.getcwd().replace('\\','/')

def model4():
    model = YOLO( now_path + '/4kind.pt')
    result = model.predict(source = now_path + '/yolo_date/privatePR/test/xray2.mp4',
                            save=True, conf = 0.9)
    
def model12():
    model = YOLO( now_path + '/12kind.pt')
    result = model.predict(source = now_path + '/yolo_date/privatePR/test/xray.mp4',
                            save=True, conf = 0.5)

model4()
model12()