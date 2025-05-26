/*
 * app.h
 *
 *  Created on: May 19, 2025
 *  Last modify: May 23, 2025
 *      Author: 오동걸
 * 
 *          시스템에 의한 제어가 가능한 상태
 *          정지상태일때 2.5s 마다 현재 상태를 알리는 패킷을 날림
 *          동작상태일때 0.5s 마다 현재 상태를 알리는 패킷을 날림
 * 
 *      TODO:
 *          asw.c에서 ButtonISR을 살리고, ButtonISR에 의해 App의 start/restart를 동작시킬 수 있도록 구현
 */

#ifndef SHIPARKER_APP_H_
#define SHIPARKER_APP_H_

/************** MAKE CHANGES HERE ********************/
#include "illd\src\ConfigurationIsr.h"
#include "illd\src\Configuration.h"
#include "hall_Driver.h"
#include "uart_Driver.h"
#include "motor_driver.h"
#include "ultrasonic_Driver.h"
#include "bsw.h"
#include "stdlib.h"
#include "steering_Pid.h"


#define APP_CYCLE_TICK 10                   //500ms
#define WALL_FOLLOW_CYCLE_TICK 4            //200ms
#define SENDPACKET_DEFAULT_CYCLE_TICK 50    //2500ms
#define SENDPACKET_RUNNING_CYCLE_TICK 10    //500ms
#define FRONT_OBSTACLE_DETECTION_TICK 6     //300ms
#define FRONT_OBSTACLE_THRESHOLD 7

#define POSITION_NULL -1000000000

#define ERROR_CODE_MAX 16

extern boolean g_isAppRunning;

/*******************************************     NO CHANGES AFTER THIS LINE      ****************************************************/
typedef enum CAR_STATUS_TYPE_T{
    CAR_STATUS_READY,
    CAR_STATUS_RUNNING,
    CAR_STATUS_STOP,
    CAR_STATUS_TERMINATED,
    CAR_STATUS_ERROR_OBSTACLE,
    CAR_STATUS_ERROR_BAD_CONNECTION,
    CAR_STATUS_ERROR_HARDWARE
}CAR_STATUS_TYPE;
typedef enum CAR_COMMAND_TYPE_T{
    CAR_COMMAND_FORCESTOP,
    CAR_COMMAND_START,
    CAR_COMMAND_STOP,
    CAR_COMMAND_RESERVED1,
    CAR_COMMAND_RESERVED2
}CAR_COMMAND_TYPE;
typedef enum ERROR_CODE_TYPE_T{
    ERROR_CODE_USER_CONTROL,
    ERROR_CODE_OBSTACLE,
    ERROR_CODE_CONNECTION_LOST,
    ERROR_CODE_UNDEFINED_STATUS,
    ERROR_CODE_4,
    ERROR_CODE_5,
    ERROR_CODE_6,
    ERROR_CODE_7,
    ERROR_CODE_8,
    ERROR_CODE_9,
    ERROR_CODE_10,
    ERROR_CODE_11,
    ERROR_CODE_12,
    ERROR_CODE_13,
    ERROR_CODE_14,
    ERROR_CODE_15
}ERROR_CODE_TYPE;
struct Position
{
    double x;
    double y;
};

static const char* errorMessages[ERROR_CODE_MAX] = {
    "User Control occured.",// 탑승자의 차량 조작 -> 자동 선적 앱 강제 종료
    "Obstacle detected.",   // 장애물 발견 -> STATUS == STOP
    "Connection Lost",      // 통신 장애 -> 재연결 시도(미구현)
    "Undefined Status",     // 
    "Hall_FL Error",
    "Hall_FR Error",
    "Hall_RL Error",
    "Hall_RR Error",
    "ULTRASONIC_FL Error",
    "ULTRASONIC_F Error",
    "ULTRASONIC_FR Error",
    "ULTRASONIC_SL Error",
    "ULTRASONIC_SR Error",
    "ULTRASONIC_RL Error",
    "ULTRASONIC_R Error",
    "ULTRASONIC_RR Error"
};


void initShiParkerApp(void);
void makePacket(struct ParkingSystemPacket* dst);
void updateStatus(const struct ParkingSystemPacket* packet);
void handleError(ERROR_CODE_TYPE errorCode);
void turn90(void);

#endif /* SHIPARKER_APP_H_ */
