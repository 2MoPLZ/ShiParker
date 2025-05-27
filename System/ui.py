import tkinter as tk
from tkinter import ttk, messagebox
import subprocess
import paho.mqtt.client as mqtt
import csv
from datetime import datetime
import os
import time

LOG_FILE = "mqtt_log.csv"

vehicle_ids = ['00', '01']
TOTAL_VEHICLES = len(vehicle_ids)
vehicle_status = ['Waiting'] * TOTAL_VEHICLES
completed_vehicles = 0
current_vehicle_index = -1 

vehicle_targets = {
    '00': (0, 10000),
    '01': (0, 10000),
    # 
    # '00': (45, 80),
    # '01': (45, 10000), 
    # 차량 ID : (target_x, target_y)
}

status_map = {
    0: "READY",
    1: "RUNNING",
    2: "STOP",
    3: "TERMINATED",
    4: "ERROR_OBSTACLE",
    5: "ERROR_BAD_CONNECTION",
    6: "ERROR_HARDWARE"
}

MQTT_BROKER = "192.168.7.242"
MQTT_PORT = 1883

def log_mqtt_message(vehicle_id, topic, message, direction):
    timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    log_row = [timestamp, vehicle_id, topic, message, direction]

    write_header = not os.path.exists(LOG_FILE)
    with open(LOG_FILE, "a", newline='') as f:
        writer = csv.writer(f)
        if write_header:
            writer.writerow(["Timestamp", "VehicleID", "Topic", "Message", "Direction"])
        writer.writerow(log_row)

def on_connect(client, userdata, flags, rc):
    print("Connected with result code", rc)
    for vid in vehicle_ids:
        client.subscribe(f"vehicle-{vid}/status")

def on_message(client, userdata, msg):
    topic = msg.topic
    payload = msg.payload.decode()

    if "/status" in topic:
        try:
            vehicle_id = topic.split("/")[0].replace("vehicle-", "")
            if vehicle_id in vehicle_ids:
                log_mqtt_message(vehicle_id, topic, payload, "receive")
                
                vehicle_index = vehicle_ids.index(vehicle_id)
                status_code = int(payload)
                status_str = status_map.get(status_code, "UNKNOWN")
                vehicle_status[vehicle_index] = status_str
                update_vehicle_status()
                update_progress()
                
                if status_str == "ERROR_OBSTACLE":
                    root.deiconify() 
                    messagebox.showerror("Error", f"vehicle-{vehicle_id}\nERROR_OBSTACLE.\nAll stopped.")
                    stop_clicked()
                    return
                elif status_str == "ERROR_BAD_CONNECTION":
                    root.deiconify()  
                    messagebox.showerror("Error", f"vehicle-{vehicle_id}\nBAD_CONNECTION.\nAll stopped.")
                    stop_clicked()
                    return
                elif status_str == "ERROR_HARDWARE":
                    root.deiconify()  
                    messagebox.showerror("Error", f"vehicle-{vehicle_id}\nERROR_HARDWARE.\nAll stopped.")
                    stop_clicked()
                    return

                if status_str == "TERMINATED" and vehicle_index == current_vehicle_index:
                    send_start_command_to_next()
        except Exception as e:
            print(f"[ERROR] MQTT 메시지 처리 실패: {e}")

def send_mqtt_command(command_code):
    for vehicle_id in vehicle_ids:
        topic = f"vehicle-{vehicle_id}/command"
        mqtt_client.publish(topic, str(command_code))
        print(f"[MQTT] Sent to {topic} -> {command_code}")
        log_mqtt_message(vehicle_id, topic, str(command_code), "send") 

def send_start_command_to_next():
    global current_vehicle_index
    current_vehicle_index += 1
    if current_vehicle_index < TOTAL_VEHICLES:
        vehicle_id = vehicle_ids[current_vehicle_index]
        command_topic = f"vehicle-{vehicle_id}/command"
        target_topic = f"vehicle-{vehicle_id}/target_position"
        
        for i in range(3):
            mqtt_client.publish(command_topic, "1")
            log_mqtt_message(vehicle_id, command_topic, "1", "send")
            print(f"[MQTT] START sent to {command_topic} (#{i+1})")

            target = vehicle_targets.get(vehicle_id)
            if target:
                target_payload = f"{target[0]} {target[1]}"
                mqtt_client.publish(target_topic, target_payload)
                log_mqtt_message(vehicle_id, target_topic, target_payload, "send")
                print(f"[MQTT] Target position sent to {target_topic} -> {target_payload} (#{i+1})")
            else:
                print(f"[WARN] No target defined for vehicle-{vehicle_id}")

            time.sleep(0.5)
    else:
        print("All vehicles have been started and terminated.")

def forcestop_clicked():
    send_mqtt_command(0) 

def start_clicked():
    global current_vehicle_index
    current_vehicle_index = -1 
    send_start_command_to_next() 

def stop_clicked():
    send_mqtt_command(2) 

def update_progress():
    global completed_vehicles
    completed_vehicles = sum(1 for status in vehicle_status if status == "TERMINATED")
    percent = int((completed_vehicles / TOTAL_VEHICLES) * 100)
    progress_var.set(percent)
    progress_label.config(text=f"{completed_vehicles} / {TOTAL_VEHICLES} ({percent}%)")

    if completed_vehicles == TOTAL_VEHICLES:
        root.deiconify()
        messagebox.showinfo("Complete", "Complete.")

def update_vehicle_status():
    color_map = {
        "READY": "#87CEEB",
        "RUNNING": "#FFD700",
        "STOP": "#FFA500",
        "TERMINATED": "#32CD32",
        "ERROR_OBSTACLE": "#FF4C4C",
        "ERROR_BAD_CONNECTION": "#FF4C4C",
        "ERROR_HARDWARE": "#FF4C4C",
        "UNKNOWN": "black",
        "Waiting": "gray"
    }

    for i, status in enumerate(vehicle_status):
        color = color_map.get(status, "black")
        vehicle_labels[i].config(text=f"Vehicle {i+1}\n{status}", bg=color)

def open_camera_view():
    print("📷 Opening camera...")
    root.iconify()
    proc = subprocess.Popen([
        "libcamera-hello",
        "--qt-preview",          # 안정적 프리뷰
        "--width", "640",        # 낮은 해상도
        "--height", "480",
        "--framerate", "30",     # 프레임 수 향상
        "--timeout", "0"         # 무제한 실행
    ])
    root.after(500, check_camera_closed, proc)

def check_camera_closed(proc):
    if proc.poll() is None:
        root.after(1000, check_camera_closed, proc)
    else:
        print("📷 Camera closed - restoring UI")
        root.deiconify()

# GUI 시작
root = tk.Tk()
root.title("Vehicle Control UI")
root.attributes("-fullscreen", True)
root.configure(bg="white")

# 상단 버튼
top_frame = tk.Frame(root, bg="white")
top_frame.pack(pady=10)

btn_start = tk.Button(top_frame, text="▶ Start", width=15, command=start_clicked)
btn_stop = tk.Button(top_frame, text="|| Stop", width=15, command=stop_clicked)
btn_forcestop = tk.Button(top_frame, text="[X] Force Stop", width=15, command=forcestop_clicked)

btn_start.pack(side="left", padx=10)
btn_stop.pack(side="left", padx=10)
btn_forcestop.pack(side="left", padx=10)

# 진행률 표시
progress_frame = tk.Frame(root, bg="white")
progress_frame.pack(pady=10)

tk.Label(progress_frame, text="Progress", bg="white").pack(anchor='w')

progress_var = tk.IntVar()
progress_bar = ttk.Progressbar(progress_frame, orient="horizontal", length=400, mode="determinate", variable=progress_var)
progress_bar.pack()
progress_label = tk.Label(progress_frame, text="0 / 0 (0%)", bg="white")
progress_label.pack()

# 차량 상태 표시
vehicle_frame = tk.Frame(root, bg="white")
vehicle_frame.pack(pady=20)

vehicle_labels = []
for i in range(TOTAL_VEHICLES):
    lbl = tk.Label(vehicle_frame, text=f"Vehicle {i+1}\nWaiting", width=12, height=4, bg="gray", fg="black", relief="groove")
    lbl.grid(row=i//5, column=i%5, padx=10, pady=10)
    vehicle_labels.append(lbl)

# 카메라 버튼
camera_btn = tk.Button(root, text="Camera", height=2, width=30, command=open_camera_view)
camera_btn.pack(pady=20)

# MQTT 클라이언트 연결
mqtt_client = mqtt.Client()
mqtt_client.on_connect = on_connect
mqtt_client.on_message = on_message
mqtt_client.connect(MQTT_BROKER, MQTT_PORT, 60)
mqtt_client.loop_start()

# 초기 상태
update_progress()
update_vehicle_status()

# 실행
root.mainloop()
