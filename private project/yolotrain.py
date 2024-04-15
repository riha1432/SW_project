from ultralytics import YOLO
import cv2
import torch
import os
torch.backends.cudnn.enabled = False
# model = YOLO('yolo8n.yaml')
model = YOLO('yolov8n.pt')
model.train(data = "train.yaml", epochs = 15, batch = 4, imgsz = 1920,
            project = "sw", workers=0)



# from ultralytics import YOLO
# import cv2
# import time
# model = YOLO('best.pt')
# result = model.predict(source = 'train/images/', save=True)
# plots = result[0].plot()
# print(result)
# cv2.imshow("a", plots)
# cv2.waitKey(1)
# time.sleep(3)