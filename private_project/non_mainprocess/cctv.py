from groundingdino.util.inference import load_model, load_image, predict, annotate
import supervision as sv
import cv2
import time

cap = cv2.VideoCapture('rtsp://210.99.70.120:1935/live/cctv004.stream')
model = load_model("groundingdino/config/GroundingDINO_SwinT_OGC.py", "weights/groundingdino_swint_ogc.pth", "cuda")
TEXT_PROMPT = "car. person"
BOX_TRESHOLD = 0.3
TEXT_TRESHOLD = 0.2

cap.set(3, 1280)
cap.set(4, 720)
cap.set(cv2.CAP_PROP_FPS, 2)

print(cap.get(cv2.CAP_PROP_FPS )) # 프레임/초 값
print(cap.get(cv2.CAP_PROP_FRAME_WIDTH )) # 프레임 너비
print(cap.get(cv2.CAP_PROP_FRAME_HEIGHT )) # 프레임 높이

while True:
    for _ in range(15):
        cap.grab()
    ret, frame = cap.read()
    cv2.imwrite('cctv.jpg',frame)
    image_source, image = load_image('cctv.jpg')

    if not ret:
        break
    s = time.time()
    boxes, logits, phrases = predict(
        model=model,
        image=image,
        caption=TEXT_PROMPT,
        box_threshold=BOX_TRESHOLD,
        text_threshold=TEXT_TRESHOLD
    )
    annotated_frame = annotate(image_source=image_source, boxes=boxes, logits=logits, phrases=phrases)
    print(time.time()-s)
    cv2.imshow('yolo',annotated_frame)

    if cv2.waitKey(20) == 27:
        break

cap.release()
cv2.destroyAllWindows()
# IMAGE_PATH = ".asset/cats.png"



# sv.plot_image(annotated_frame, (5, 5))


