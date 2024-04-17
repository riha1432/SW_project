from ultralytics import YOLO
import cv2
import torch
import os

torch.backends.cudnn.enabled = False
# model = YOLO('yolo8n.yaml')
model = YOLO('yolov8n.pt')
# model = YOLO('sw/3-12종류/weights/best.pt')
model.train(data = "train.yaml", epochs = 15, batch = 4, imgsz = 1920,
            project = "yolo_date/sw", workers=0)


