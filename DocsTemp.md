# [Board Name] - [Short Role Description]
> Example: STM32F407 - Motor Controller for Rear Wheels

## 📋 Table of Contents
1. [Overview](#overview)
2. [Pin Mapping](#pin-mapping)
3. [Dependencies](#dependencies)
4. [How to Run](#how-to-run)
5. [Communication Protocol](#communication-protocol)
6. [Maintainers](#maintainers)

---

## 🧩 Overview
A brief summary of the board and its responsibility within the autonomous system.

- **Board Model:** STM32F407 / Arduino Mega / ESP32 / etc.
- **Firmware Language:** C / Arduino / MicroPython / etc.
- **Communication:** UART / SPI / CAN / BLE

---

## 🧷 Pin Mapping

| Function            | Pin Number | Note                      |
|---------------------|------------|---------------------------|
| Motor PWM (Left)    | PA8        | TIM1_CH1                  |
| Motor PWM (Right)   | PA9        | TIM1_CH2                  |
| UART RX             | PB7        | Communication with ESP32  |
| UART TX             | PB6        | Communication with ESP32  |
| Encoder A           | PC6        | External interrupt        |
| Encoder B           | PC7        | External interrupt        |

> Include schematic diagrams if necessary

---

## 📦 Dependencies

List any software, drivers, or libraries needed before building or running the firmware.

- STM32CubeMX 6.9.0+
- STM32 HAL Library
- OpenOCD / ST-Link Utility
- Python 3.10 (for upload tool)
- [Optional] Custom CAN library

---

## 🔧 How to Run

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-org/your-project.git
   cd your-project/board-[name]

---

## 🛰️ Communication Protocol

Explain how this board communicates with others.

- **Protocol:** UART (115200 baud)
- **Message Format:**
    ```
    [Header][Command][Payload][CRC]
    Example: 0xAA 0x01 0x64 0xB2
    ```
- **Commands:**
    - `0x01`: Set Motor Speed
    - `0x02`: Request Encoder Data
    - `0x03`: Emergency Stop

---

## 👨‍🔧 Maintainers

- **Name**: [Your Name]
- **Email**: [your.email@example.com]
- **GitHub**: @[your-handle]

---
