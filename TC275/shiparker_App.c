#include "shiparker_App.h"

#include "ultrasonic_Driver.h"

boolean                           g_isAppRunning;
static struct ParkingSystemPacket carStatusPacket = {};
static CAR_STATUS_TYPE            carStatus;
static CAR_COMMAND_TYPE           carCommand;
static struct Position            currentPosition;
static struct Position            targetPosition;

ISR2(AppTimerISR)
{
    osEE_tc_stm_set_sr1_next_match(50000U);
    IncrementCounter(AppCounter);
}

void startShiParkerApp(void)
{
    if (g_isAppRunning == TRUE)
    {
        printfSerial("restart ShiParker...\n");
        CancelAlarm(PacketSendAlarm);
        CancelAlarm(AppAlarm);
    }
    else
    {
        printfSerial("start ShiParker...\n");
    }
    g_isAppRunning    = TRUE;
    carStatus         = CAR_STATUS_READY;
    currentPosition.x = 0;
    currentPosition.y = 0;
    targetPosition.x  = -1; // NULL 값을 따로 정의해줘야함
    targetPosition.y  = -1; // NULL 값을 따로 정의해줘야함
    carCommand        = CAR_COMMAND_STOP;
    SetRelAlarm(AppAlarm, 1, 10);
    SetRelAlarm(PacketSendAlarm, 2, 50);
}

TASK(ShiParkerAppTask)
{
    printfSerial("app");
    if (g_isAppRunning == FALSE)
        TerminateTask();
    updateStatus(&g_RecievedParkingSystemPacket);
    switch (carStatus)
    {
    case CAR_STATUS_READY:
        switch (carCommand)
        {
        case CAR_COMMAND_FORCESTOP:
            // READY일때 강제정지 -> 앱 종료
            carStatus = CAR_STATUS_TERMINATED;
            break;
        case CAR_COMMAND_START:
            // READY일때 시작 -> 주차 시작
            carStatus = CAR_STATUS_RUNNING;
            CancelAlarm(PacketSendAlarm);
            SetRelAlarm(PacketSendAlarm, 0, 10);
            SetRelAlarm(AvoidObstacleAlarm, 0, 2); // 100ms
            break;
        case CAR_COMMAND_STOP:
            // READY일때 일시정지 -> 변화없음
            break;
        default:
            break;
        }
        break;
    case CAR_STATUS_RUNNING:
        switch (carCommand)
        {
        case CAR_COMMAND_FORCESTOP:
            // RUNNING일때 강제정지 -> 앱 종료
            carStatus = CAR_STATUS_TERMINATED;
            break;
        case CAR_COMMAND_START:
            // RUNNING일때 시작 -> 변화없음
            break;
        case CAR_COMMAND_STOP:
            // RUNNING일때 일시정지 -> 일시정지
            CancelAlarm(PacketSendAlarm);
            CancelAlarm(AvoidObstacleAlarm);
            SetRelAlarm(PacketSendAlarm, 0, 50);
            break;
        default:
            break;
        }
        break;
    case CAR_STATUS_STOP:
        switch (carCommand)
        {
        case CAR_COMMAND_FORCESTOP:
            // STOP일때 강제정지 -> 앱 종료
            carStatus = CAR_STATUS_TERMINATED;
            break;
        case CAR_COMMAND_START:
            // STOP일때 시작 -> 주차 재개
            carStatus = CAR_STATUS_RUNNING;
            CancelAlarm(PacketSendAlarm);
            SetRelAlarm(PacketSendAlarm, 0, 10);
            SetRelAlarm(AvoidObstacleAlarm, 0, 2);
            break;
        case CAR_COMMAND_STOP:
            // STOP일때 일시정지 -> 변화없음
            break;
        default:
            break;
        }
        break;
    case CAR_STATUS_TERMINATED:
        // 앱을 종료하고 차량 제어권을 사용자에게 넘긴다
        printfSerial("Terminate ShiParker...\n");
        ActivateTask(PacketSendTask);
        g_isAppRunning = FALSE;
        CancelAlarm(AvoidObstacleAlarm);
        CancelAlarm(PacketSendAlarm);
        CancelAlarm(AppAlarm);
        TerminateTask();
        break;
    case CAR_STATUS_ERROR_OBSTACLE:
    case CAR_STATUS_ERROR_BAD_CONNECTION:
        switch (carCommand)
        {
        case CAR_COMMAND_FORCESTOP:
            // STOP일때 강제정지 -> 앱 종료
            carStatus = CAR_STATUS_TERMINATED;
            break;
        case CAR_COMMAND_START:
            // ERROR일때 시작 -> 주차 재개
            carStatus = CAR_STATUS_RUNNING;
            CancelAlarm(PacketSendAlarm);
            SetRelAlarm(PacketSendAlarm, 0, 50); // 2500ms
            SetRelAlarm(AvoidObstacleAlarm, 0, 2);
            break;
        case CAR_COMMAND_STOP:
            // ERROR일때 일시정지 -> 변화없음
            break;
        default:
            // UNDEFINED COMMAND FROM SYSTEM -> ERROR
            break;
        }
        break;
    default:
        // UNDEFINED CAR STATUS -> FATAL ERROR
        handleError(ERROR_CODE_UNDEFINED_STATUS);
        break;
    }
}

TASK(AvoidObstacleTask)
{
    if (g_isAppRunning == FALSE)
        TerminateTask();
    if (getUltrasonic(&g_Ultrasonic_FRONT) < FRONT_OBSTACLE_THRESHOLD)
    {
        handleError(ERROR_CODE_OBSTACLE);
    }
}

// TASK(WallFollowTask){
//     //RUNNING 중이고, (목표위치-현재위치)>허용오차 이고, 긴급정지플래그 ==
//     // false 인 동안 double allowableXDifference = 3.00; double
//     // allowableYDifference = 3.00; if()
// }

TASK(PacketSendTask)
{
    printfSerial("sendpacket");
    makePacket(&carStatusPacket);
    sendPacket(&carStatusPacket);
}

void makePacket(struct ParkingSystemPacket *dst)
{
    dst->start_byte             = 0xAA;
    dst->car_status             = carStatus;
    dst->car_command            = carCommand;
    dst->car_current_position.x = currentPosition.x;
    dst->car_current_position.y = currentPosition.y;
    dst->car_target_position.x  = targetPosition.x;
    dst->car_target_position.y  = targetPosition.y;
}
void updateStatus(const struct ParkingSystemPacket *packet)
{
    carStatus         = packet->car_status;
    carCommand        = packet->car_command;
    currentPosition.x = packet->car_current_position.x;
    currentPosition.y = packet->car_current_position.y;
    targetPosition.x  = packet->car_target_position.x;
    targetPosition.y  = packet->car_target_position.y;
}

void handleError(ERROR_CODE_TYPE errorCode)
{
    CancelAlarm(AvoidObstacleAlarm);
    motor_stop(0);
    motor_stop(1);
    motor_stop(2);
    motor_stop(3);
    if (errorCode < ERROR_CODE_MAX)
    {
        printfSerial("ERROR: %s (%d)\n", errorMessages[errorCode], errorCode);
        switch (errorCode)
        {
        case ERROR_CODE_USER_CONTROL:
            carStatus = CAR_STATUS_ERROR_HARDWARE;
            break;
        case ERROR_CODE_OBSTACLE:
            carStatus = CAR_STATUS_ERROR_OBSTACLE;
            break;
        case ERROR_CODE_CONNECTION_LOST:
            carStatus = CAR_STATUS_ERROR_BAD_CONNECTION;
            break;
        default:
            break;
        }
    }
    else
    {
        printfSerial("ERROR: Unknown error code (%d).\n", errorCode);
    }
    ActivateTask(PacketSendTask);
}