from ultralytics import YOLO
import cv2
from controller.send_email import send_email
import time

# 載入模型
arms_model = YOLO('controller/model/best.pt')
# 将模型移至 GPU（如果可用）
arms_model.to("cuda:0")

# 記錄上次寄送郵件的時間（初始化為一個很早的時間）
last_email_time = 0
# 設置間隔時間，10 分鐘 = 600 秒
EMAIL_INTERVAL = 600

# 模型檢測函數 (偵測武器和人)
def detect_arms(frame,camera_name):
    arms_results = arms_model.predict(frame, verbose=False)
    suspicious_detected = False
    for box in arms_results[0].boxes.data:
        x1, y1, x2, y2 = int(box[0]), int(box[1]), int(box[2]), int(box[3])
        cv2.rectangle(frame, (x1, y1), (x2, y2), (0, 0, 255), 2)  # 紅色框
        suspicious_detected = True  # 檢測到武器或嫌疑人
        
    #如果偵測到武器且距離上次寄送時間已超過 10 分鐘
    current_time = time.time()
    if suspicious_detected and current_time - last_email_time > EMAIL_INTERVAL:
        send_email(f"{camera_name}出現嫌疑人拿出武器!")
        last_email_time = current_time  # 更新上次寄送郵件的時間
    return frame