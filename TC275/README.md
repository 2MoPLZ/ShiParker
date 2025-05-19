# 🚗 Dashboard + Sensor ZCU For TunnelMate

This TC275 board controls ***Dashboard(LCD shield + buttons)*** and ***two Ultrasonic Sensors*** and ***one Photoresistor*** based on ***OSEK/VDX RTOS***

---

## 📕 Index

1. [System Overview](#-System-Overview)
2. [How to Run](#-How-to-Run)
3. [Software Logic](#-Software-Logic)
4. [Hardware Specification](#-Hardware-Specification)
5. [Hardware Pin Map](#-Hardware-Pin-Map)

</br>

---


## ✨ System Overview

피그마로 기깔나게 그린 overview를 여기에 첨부</br>
또는 시연 동영상의 일부나 사진을 여기에 첨부

</br>

---

## 🚀 How to Run
Please refer to the Makefile to configure the build environment.  
Make sure to update the following paths according to your local setup:

- `GENERATOR`: Path to the ERIKA3 code generation batch file  
- `EE_DIR`: ERIKA3 Eclipse base directory  
- `HIGHTEC_DIR`: Path to the HighTec toolchain binaries  
- `BUILD_DIR`: Directory for build output  
- `ELF_FILE`: Target ELF file name  
- `ERIKA_DIR`: ERIKA3 base directory  
- `OUT_DIR`: Directory for generated output files

```makefile
 # configure TunnelMate/TC275/Makefile according to your local setup
   GENERATOR='/cygdrive/c/eclipse/evidence/generate_code.bat'
   EE_DIR='C:\eclipse'
   HIGHTEC_DIR='C:\HighTec\toolchains\tricore\v4.9.3.0-infineon-1.0\bin'
   BUILD_DIR='out'
   ELF_FILE=erika3app.elf
   ERIKA_DIR='erika'
   OUT_DIR='out'
```
  

 ```markdown
  # run in terminal
    1. cd TunnelMate/TC275
    2. make config
    3. make

  # flash program to TC275
    1. board configuration
    2. load program (TunnelMate/TC275/out/erika3app.elf)
```

</br>

---

## 💻 Software Logic
**All functionalities are scheduled and handled by the erika3 RTOS.**
```markdown
  # Sensor Data Acquisition and Transmission to Main ECU
    1. Collect data from two ultrasonic sensors and one photoresistor.  
    2. Format the collected data into a sensor packet.  
    3. Transmit the sensor packet to the Main ECU via UART.

  # Vehicle Comfort Feature Control via Dashboard
    1. Control various vehicle comfort features using dashboard buttons.  
    2. Generate a control packet based on the adjusted values.  
    3. Transmit the control packet to the Main ECU via UART.  
    4. Update the dashboard LCD to reflect the current settings.

  # Debugging Interface
    1. Monitor the board's operation via USB serial communication using a terminal.
```
</br>

---

## 📡 Hardware Specification
| Product Name      |  Model Name             |Role                    |
|-------------------|-------------------------|------------------------|
|TC275 ShieldBuddy  | KIT_AURIX_TC275_ARD_SB  | ZCU                    |
|Lcd KeyPad Shield  | DFR0009                 | Dashboard              |
|Photoresistor      | -                       | Night/Tunnel Detection |
|Ultrasonic Sensor 1| HC-SR04                 | Tunnel Detection       |
|Ultrasonic Sensor 2| HC-SR04                 | Forward Collision-Avoidance Assist|

</br>

---

## 📌 Hardware Pin Map
| Arduino Signal Name     | TC275T Pin Assignment | Assigned Function   | Description         |
|-------------------------|------------------------|---------------------|---------------------|
| Analog pin 0            | SAR4.7 / P32.3         | LCD Shield          | Button              |
| Analog pin 1            | SAR4.6 / P32.4         | Light Sensor        | -                   |
| Digital pin 0 (RX0)     | P15.3                  | UART RX             | TC275 <- STM MAIN   |
| Digital pin 1 (TX0)     | P15.2                  | UART TX             | TC275 -> STM MAIN   |
| Digital pin 2 (PWM)     | P2.0                   | LCD Shield          | Button (Interrupt)  |
| Digital pin 3 (PWM)     | P2.1                   | Front Ultrasonic    | TRIG                |
| Digital pin 5 (PWM)     | P2.3                   | LCD Shield          | Panel               |
| Digital pin 6 (PWM)     | P2.4                   | LCD Shield          | Panel               |
| Digital pin 7 (PWM)     | P2.5                   | LCD Shield          | Panel               |
| Digital pin 8 (PWM)     | P2.6                   | LCD Shield          | Panel (RS)          |
| Digital pin 9 (PWM)     | P2.7                   | LCD Shield          | Panel (EN)          |
| Digital pin 10 (PWM/SS) | P10.5                  | LCD Shield          | Panel (Backlight)   |
| Digital pin 11 (PWM/MOSI)| P10.3                 | Front Ultrasonic    | ECHO                |
| Digital pin 12 (PWM/MISO)| P10.1                 | Top Ultrasonic      | TRIG                |
| Digital pin 13 (PWM/SPCK)| P10.2                 | Top Ultrasonic      | ECHO                |

</br>

---



## lcd driver

### HW pin map
| Arduino Signal Name  |  TC275T Pin Assignment  |
|----------------------|-------------------------|
| Digital pin 5 (PWM)  |  P2.3                   |
| Digital pin 6 (PWM)  |  P2.4                   |
| Digital pin 7 (PWM)  |  P2.5                   |
| Digital pin 8 (PWM)  |  P2.6                   |
| Digital pin 9 (PWM)  |  P2.7                   |
| Digital pin 10 (PWM) |  P10.5                  |

</br>
</br>

### schematic diagram 
![image](https://github.com/user-attachments/assets/903882b2-ea99-4a42-974d-a38678a1c551)


### SW function
- lcd_init(void) : 가장 처음 lcd 디스플레이 출력
- lcd_clear(void) : 현재 적용되어있는 lcd 디스플레이 초기화
- lcd_print(const char *str) : str 에 들어있는 내용을 lcd 디스플레이에 출력
- lcd_goto(d1, d2) : d1 : 출력할 줄 , d2 : 출력 시작점
---

</br>
</br>

## button driver

### HW pin map
| Arduino Signal Name  |  TC275T Pin Assignment  |
|----------------------|-------------------------|
| Analog pin 0         |  SAR4.7/P32.3           |
| Digital pin 2 (PWM)  |  P2.0                   |

</br>
</br>

### schematic diagram 
![image](https://github.com/user-attachments/assets/e86b638a-d4fc-4b73-82d0-1e74b14e6183)



### conf.oil setting
```cpp
    ISR ButtonISR {
        CATEGORY = 2;
        SOURCE = "SCUERU0";
        PRIORITY = 10;
    };
```

### asw.c setting
```cpp
    ISR2(ButtonISR)
    {
        unsigned int buttonState;
        DisableAllInterrupts();
        osEE_tc_delay(5000);
        printfSerial("interuppt");
        buttonState = readLcdButtons();

        osEE_tc_delay(3000);
        EnableAllInterrupts();
    }
```

### SW function
- readLcdButtons(void) : A0 에서 읽은 핀에 대한 값을 버튼번호로 매핑하여 반환

### return value
| A0 value             |  return value           |
|----------------------|-------------------------|
| A0 < 100             |  btnUP     0            |
| A0 < 1000            |  btnDOWN   1            |
| A0 < 2500            |  btnLEFT   2            |
| A0 < 3500            |  btnRIGHT  3            |
| A0 >= 4000           |  btnNONE   4            |


---
## infotainment system



---
## ultrasonic driver

### HW pin map
| Arduino Signal Name  |  TC275T Pin Assignment  |  Role  |
|----------------------|-------------------------|-------------------------|
| Digital pin 12 (PWM/MISO)  |  P2.3                   | upperUltrasonic.TRIG        |
| Digital pin 13 (PWM/SPCK)  |  P2.4                   | upperUltrasonic.ECHO        |
| Digital pin 3 (PWM)        |  P2.1                   | frontUltrasonic.TRIG        |
| Digital pin 11 (PWM/MOSI)  |  P10.3                  | frontUltrasonic.ECHO        |

</br>
</br>



## 📡 Task scheduling diagram 
![TC275 Task Scheduling Diagram](./figure/esp32_arduino_settings.png)
---




## 📦 UART Packet Format

| Field            | Size (bytes) | Description                        |
|------------------|---------------|------------------------------------|
| `start_byte`     | 1             | Packet start marker (e.g. 0xAA)    |
| `packet_id`      | 1             | Packet identifier (e.g. 0x01)      |
| `led_rgb`        | 1             | 3-bit RGB value (bit flags), padded to 1 byte |
| `fan`            | 2 bits        | Fan speed (0–3)                    |
| `led`            | 1 bit         | Headlight on/off                   |
| `buzzer`         | 1 bit         | Buzzer on/off                      |
| `driving_mode`   | 4 bits        | Driving mode (0–15)                |
| `servo_chair`    | 2 bytes       | Chair angle (0–4095)               |
| `servo_window`   | 2 bytes       | Window position (0–4095)           |
| `servo_air`      | 2 bytes       | Air control (0–4095)               |
| `crc`            | 1 byte        | Checksum (optional, currently 0)   |

> 🔧 Total size: **11 bytes (packed)**



---

### 🧪 API Specification

#### 🔹 `GET /get?mac=XX:XX:XX:XX:XX:XX`

- **Description**: asd
- **Example**: asd

```c
nice c language box
```

---


---
