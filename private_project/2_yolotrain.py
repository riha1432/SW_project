from ultralytics import YOLO
import torch
import os

now_path = os.getcwd().replace('\\','/') + '/yolo_date'

torch.backends.cudnn.enabled = False
model = YOLO('yolov8n.pt')
model.train(data = now_path + "/privatePR/train.yaml", epochs = 15, batch = 4, imgsz = 1920,
            project = now_path + "/sw", workers=0)

