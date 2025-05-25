# ESP32 & Raspberry Pi 4 - 자율주행 차량 통신 게이트웨이
> UART ↔ MQTT 기반 자율주행 차량 통신 시스템

## 📋 목차
1. [개요](#개요)
2. [핀 맵](#핀-맵)
3. [필요 환경](#필요-환경)
4. [실행 방법](#실행-방법)
5. [통신 프로토콜](#통신-프로토콜)
6. [관리자 정보](#관리자-정보)

## 🧩 개요
이 시스템은 자율주행 차량의 위치 제어 및 상태 관리를 위한 통신 중심 제어 플랫폼입니다.

- ESP32는 차량에 탑재되어 TC275와 UART로 통신하며, 센서 정보 및 명령 데이터를 송수신합니다.
- Raspberry Pi 4 (4GB)는 중앙 제어 시스템으로 작동하며, MQTT 브로커 및 UI 서버를 구동해 각 차량의 상태를 수집하고 제어 명령을 전달합니다.

이를 통해 차량은 현재 위치와 목표 위치를 기준으로 이동하며, 상태 변화나 장애물 상황에 따라 자동으로 동작을 조절할 수 있습니다.

- **Board Model:** ESP32 / Raspberry Pi
- **Firmware Language:** Arduino / C / Python
- **Communication:** UART / MQTT

## 🧷 핀 맵

### ESP32

| 기능      | 핀 번호   | 설명                                      |
| --------- | -------- | ----------------------------------------- |
| UART RX   | GPIO16   | TC275의 TX 핀에서 데이터를 받아오는 수신 핀 |
| UART TX   | GPIO17   | TC275의 RX 핀으로 데이터를 보내는 송신 핀  |

## 📦 필요 환경

### 🔧 ESP32
- Arduino IDE

### 🍓 Raspberry Pi 4 (4GB)
- Raspberry Pi OS (Lite 또는 Desktop)
- Python 3.10+
- Mosquitto MQTT Broker
- MQTT 브로커 설치는 `./install_mosquitto.sh` 스크립트로 자동화되어 있습니다.

## 🔧 실행 방법

1. **Mosquitto 브로커 설치 및 실행**
   ```bash
   ./install_mosquitto.sh
   ```

2. **UI 실행**
   ```bash
   python ui.py
   ```

## 🛰️ 통신 프로토콜

### TC275 ↔ ESP32 (UART)
- **통신 방식:** UART (9600 baud)
- **데이터 전송 방향:** TC275 → ESP32
- **전송 주기:** 주기적 또는 이벤트 기반

| 필드 이름                    | 크기     | 설명                                      |
| ------------------------ | ------ | --------------------------------------- |
| `start_byte`             | 1 byte | 시작 바이트 (고정값 0xAA)                       |
| `car_status`             | 1 byte | 차량 상태 (0~7)                            |
| `car_current_position.x` | 8 byte | 현재 X 좌표 (double)                        |
| `car_current_position.y` | 8 byte | 현재 Y 좌표 (double)                        |
| `car_target_position.x`  | 8 byte | 목표 X 좌표 (double)                        |
| `car_target_position.y`  | 8 byte | 목표 Y 좌표 (double)                        |
| `car_command`            | 1 byte | 명령 코드 (0~7)                            |
| `crc`                    | 1 byte | 체크섬 (start_byte ~ car_command까지 XOR) |

### ESP32 ↔ Raspberry Pi (MQTT)
- **통신 방식:** MQTT (Mosquitto 브로커 사용)
- **데이터 전송 방향:** 양방향 (ESP32 ↔ 시스템)
- **전송 주기:** 이벤트 기반 또는 상태 변경 시

| Topic                   | Publisher      | Subscriber     | 설명                  |
| ----------------------- | -------------- | -------------- | ------------------- |
| `{id}/status`           | `car1`, `car2` | `system`       | 차량의 현재 상태 전송        |
| `{id}/current_position` | `car1`, `car2` | `system`       | 차량의 현재 위치 전송        |
| `{id}/target_position`  | `system`       | `car1`, `car2` | 차량의 목표 위치 지정        |
| `{id}/command`          | `system`       | `car1`, `car2` | 시스템에서 차량으로 제어 명령 전달 |

#### `{id}/status` 메시지 정의
| 이름                     | 값 | 설명                                            |
| ---------------------- | - | --------------------------------------------- |
| `READY`                | 0 | 시스템에 의한 자동 선적이 준비된 상태                         |
| `RUNNING`              | 1 | 자동 선적 진행 중                                    |
| `STOP`                 | 2 | 자동 선적 진행 중 일시 정지된 상태                          |
| `TERMINATED`           | 3 | 자동 선적 완료, 사이드 브레이크까지 채워진 상태                   |
| `ERROR_OBSTACLE`       | 4 | 장애물 탐지로 일시 정지 상태, 사용자 조작 대기                   |
| `ERROR_BAD_CONNECTION` | 5 | 통신 문제 발생 시 재연결 시도 중 (※ 미구현)                   |
| `ERROR_HARDWARE`       | 6 | 하드웨어 문제 또는 탑승자 조작 발생, 원격 제어 불가 상태 (수동 제어만 가능) |

#### `{id}/current_position` 메시지 정의
- **형식:** `"x y"`  
- **설명:** 공백으로 구분된 문자열이며, x와 y는 double 타입으로 파싱됨  
- **예시:** `12.45 37.80`

#### `{id}/target_position` 메시지 정의
- **형식:** `"x y"`  
- **설명:** 공백으로 구분된 문자열이며, x와 y는 double 타입으로 파싱됨  
- **예시:** `18.30 41.25`

#### `{id}/command` 메시지 정의
| 이름          | 값 | 설명                                        |
| ------------- | --- | ------------------------------------------- |
| `FORCESTOP`   | 0   | 차량의 자동 선적을 즉시 종료하고, 탑승자에 의한 수동 제어만 가능하게 함 |
| `START`       | 1   | `READY` 상태인 차량의 자동 선적을 시작함                |
| `STOP`        | 2   | 진행 중인 자동 선적을 일시 정지함                       |
| `RESERVED1`   | 3   | 예비                                        |
| `RESERVED2`   | 4   | 예비                                        |

## 👨‍🔧 관리자 정보

- **이름:** 홍길동  
- **이메일:** example@email.com  
- **GitHub:** [@yourhandle](https://github.com/yourhandle)