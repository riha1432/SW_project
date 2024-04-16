from ultralytics import YOLO
import os

now_path = os.getcwd().replace('\\','/')

# model = YOLO( now_path + 'yolo_datesw/train/weights/best.pt')
model = YOLO( now_path + '/12kind.py')
model = YOLO( now_path + '/4kind.py')

result = model.predict(source = now_path + '/yolo_date/privatePR/test/image_other/',
                        save=True, conf = 0.9)
