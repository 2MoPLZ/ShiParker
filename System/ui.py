import tkinter as tk
from tkinter import ttk
import subprocess
import paho.mqtt.client as mqtt

# 설정 (현재 연결된 차량 2대)
vehicle_ids = ['00', '01']
TOTAL_VEHICLES = len(vehicle_ids)
vehicle_status = ['Waiting'] * TOTAL_VEHICLES
completed_vehicles = 0
current_vehicle_index = -1  # 현재 실행 중인 차량 인덱스 (-1이면 아직 시작 안 됨)

# 상태 매핑
status_map = {
    0: "READY",
    1: "RUNNING",
    2: "STOP",
    3: "TERMINATED",
    4: "ERROR",
    5: "RESERVED1",
    6: "RESERVED2"
}

# MQTT 설정
MQTT_BROKER = "localhost"
MQTT_PORT = 1883

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
                vehicle_index = vehicle_ids.index(vehicle_id)
                status_code = int(payload)
                status_str = status_map.get(status_code, "UNKNOWN")
                vehicle_status[vehicle_index] = status_str
                update_vehicle_status()
                update_progress()

                # TERMINATED 상태인 경우 다음 차량에 START 전송
                if status_str == "TERMINATED" and vehicle_index == current_vehicle_index:
                    send_start_command_to_next()
        except Exception as e:
            print(f"[ERROR] MQTT 메시지 처리 실패: {e}")

def send_mqtt_command(command_code):
    for vehicle_id in vehicle_ids:
        topic = f"vehicle-{vehicle_id}/command"
        mqtt_client.publish(topic, str(command_code))
        print(f"[MQTT] Sent to {topic} -> {command_code}")

def send_start_command_to_next():
    global current_vehicle_index
    current_vehicle_index += 1
    if current_vehicle_index < TOTAL_VEHICLES:
        vehicle_id = vehicle_ids[current_vehicle_index]
        topic = f"vehicle-{vehicle_id}/command"
        mqtt_client.publish(topic, "1")  # START
        print(f"[MQTT] START sent to {topic}")
    else:
        print("🚘 All vehicles have been started and terminated.")

def forcestop_clicked():
    send_mqtt_command(0)  # FORCESTOP

def start_clicked():
    global current_vehicle_index
    current_vehicle_index = -1  # 초기화 후
    send_start_command_to_next()  # 첫 차량부터 시작

def stop_clicked():
    send_mqtt_command(2)  # STOP

def update_progress():
    global completed_vehicles
    completed_vehicles = sum(1 for status in vehicle_status if status == "TERMINATED")
    percent = int((completed_vehicles / TOTAL_VEHICLES) * 100)
    progress_var.set(percent)
    progress_label.config(text=f"{completed_vehicles} / {TOTAL_VEHICLES} ({percent}%)")

def update_vehicle_status():
    color_map = {
        "READY": "#87CEEB",
        "RUNNING": "#FFD700",
        "STOP": "#FFA500",
        "TERMINATED": "#32CD32",
        "ERROR": "#FF4C4C",
        "RESERVED1": "gray",
        "RESERVED2": "gray",
        "UNKNOWN": "black",
        "Waiting": "gray"
    }

    for i, status in enumerate(vehicle_status):
        color = color_map.get(status, "black")
        vehicle_labels[i].config(text=f"Vehicle {i+1}\n{status}", bg=color)

# 카메라 보기
# def open_camera_view():
#     print("📷 Opening camera...")
#     root.iconify()
#     proc = subprocess.Popen(["libcamera-hello", "--timeout", "0"])
#     root.after(1000, check_camera_closed, proc)

def open_camera_view():
    print("📷 Opening camera...")
    root.iconify()
    proc = subprocess.Popen(["libcamera-hello", "--qt-preview", "--timeout", "0"])
    root.after(1000, check_camera_closed, proc)


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
