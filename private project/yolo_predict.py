from ultralytics import YOLO
import cv2
import time
model = YOLO('sw/4-4종류/weights/best.pt')
result = model.predict(source = 'test/image_other/', save=True, conf = 0.9)
