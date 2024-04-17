from ultralytics import YOLO
import cv2
import time
model = YOLO('sw/4-4종류/weights/best.pt')
result = model.predict(source = 'xray2.mp4', save=True, conf = 0.9)
