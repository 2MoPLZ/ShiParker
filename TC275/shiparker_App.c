#include "shiparker_App.h"

boolean g_isAppRunning;
static struct ParkingSystemPacket carStatusPacket = {};
static CAR_STATUS_TYPE carStatus;
static CAR_COMMAND_TYPE carCommand;
static struct Position currentPosition;
static struct Position targetPosition;

void startShiParkerApp(void)
{
    if (g_isAppRunning == TRUE)
    {
        printfSerial("restart ShiParker...\n");
    }
    else{
        printfSerial("start ShiParker...\n");
    }
    g_isAppRunning = TRUE;
    carStatus             = CAR_STATUS_READY;
    currentPosition.x = 0;
    currentPosition.y = 0;
    targetPosition.x  = -1; // NULL 값을 따로 정의해줘야함
    targetPosition.y  = -1; // NULL 값을 따로 정의해줘야함
    carCommand            = CAR_COMMAND_STOP;
    CancelAlarm(AppAlarm);
    SetRelAlarm(AppAlarm, 5, 1);
}

TASK (ShiParkerAppTask)
{
    if(g_isAppRunning==FALSE)
        TerminateTask();
    switch (carStatus)
    {
    case CAR_STATUS_READY:
        switch (carCommand)
        {
        case CAR_COMMAND_FORCESTOP:
            // READY일때 강제정지 -> 앱 종료
            carStatus = CAR_STATUS_TERMINATED;
            // 값들을 저장하고 앱을 나감 -> 제어권이 시스템에서 사람으로 넘어감
            break;
        case CAR_COMMAND_START:
            // READY일때 시작 -> 주차 시작
            carStatus = CAR_STATUS_RUNNING;
            carStatusPacket.car_status = carStatus;
            makePacket(&carStatusPacket);
            sendPacket(&carStatusPacket);
            //  2500ms 주기의 sendPacket 알람을 비활성화하는 코드를 여기에
            //  500ms 주기의 sendPacket 알람을 활성화하는 코드를 여기에
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
            carStatusPacket.car_status = carStatus;
            makePacket(&carStatusPacket);
            sendPacket(&carStatusPacket);
            // 값들을 저장하고 앱을 나감 -> 제어권이 시스템에서 사람으로 넘어감
            break;
        case CAR_COMMAND_START:
            // RUNNING일때 시작 -> 변화없음
            break;
        case CAR_COMMAND_STOP:
            // RUNNING일때 일시정지 -> 변화없음
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
            carStatusPacket.car_status = carStatus;
            makePacket(&carStatusPacket);
            sendPacket(&carStatusPacket);
            // 값들을 저장하고 앱을 나감 -> 제어권이 시스템에서 사람으로 넘어감
            break;
        case CAR_COMMAND_START:
            // STOP일때 시작 -> 주차 재개
            carStatus = CAR_STATUS_RUNNING;
            carStatusPacket.car_status = carStatus;
            makePacket(&carStatusPacket);
            sendPacket(&carStatusPacket);
            CancelAlarm(PacketSendAlarm);
            SetRelAlarm(PacketSendAlarm,10,10);//500ms
            //  2500ms 주기의 sendPacket 알람을 비활성화하는 코드를 여기에
            //  500ms 주기의 sendPacket 알람을 활성화하는 코드를 여기에
            break;
        case CAR_COMMAND_STOP:
            // STOP일때 일시정지 -> 변화없음
            break;
        default:
            break;
        }
        break;
    case CAR_STATUS_TERMINATED:
        //command에 상관없이 앱을 종료하고 차량 제어권을 사용자에게 넘긴다
        g_isAppRunning = FALSE;
        CancelAlarm(PacketSendAlarm);
        CancelAlarm(AppAlarm);
        TerminateTask();
        break;
    case CAR_STATUS_ERROR:
        switch (carCommand)
        {
        case CAR_COMMAND_FORCESTOP:
            // STOP일때 강제정지 -> 앱 종료
            carStatus = CAR_STATUS_TERMINATED;
            carStatusPacket.car_status = carStatus;
            makePacket(&carStatusPacket);
            sendPacket(&carStatusPacket);
            // 값들을 저장하고 앱을 나감 -> 제어권이 시스템에서 사람으로 넘어감
            break;
        case CAR_COMMAND_START:
            // ERROR일때 시작 -> 주차 재개
            carStatus = CAR_STATUS_RUNNING;
            carStatusPacket.car_status = carStatus;
            makePacket(&carStatusPacket);
            sendPacket(&carStatusPacket);
            CancelAlarm(PacketSendAlarm);
            SetRelAlarm(PacketSendAlarm,10,100);//2500ms
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

TASK(PacketSendTask){
    makePacket(&carStatusPacket);
    sendPacket(&carStatusPacket);
}

void makePacket(struct ParkingSystemPacket* dst){
    dst->car_status = carStatus;
    dst->car_command = carCommand;
    dst->car_current_position.x = currentPosition.x;
    dst->car_current_position.y = currentPosition.y;
    dst->car_target_position.x = targetPosition.x;
    dst->car_target_position.y = targetPosition.y;
}
void updateStatus(const struct ParkingSystemPacket* packet)
{
    carStatus=packet->car_status;
    carCommand=packet->car_command;
    currentPosition.x=packet->car_current_position.x;
    currentPosition.y=packet->car_current_position.y;
    targetPosition.x=packet->car_target_position.x;
    targetPosition.y=packet->car_target_position.y;
}

void handleError(ERROR_CODE_TYPE errorCode) {
    carStatus = CAR_STATUS_ERROR;
    if (errorCode < ERROR_CODE_MAX) {
        printfSerial("ERROR: %s (%d)\n",errorMessages[errorCode],errorCode);
        switch (errorCode)
        {
        case ERROR_CODE_USER_CONTROL:
            //ERROR HANDLING CODE
            break;
        case ERROR_CODE_OBSTACLE:
            //ERROR HANDLING CODE
            break;
        default:
            break;
        }
    }
    else {
        printfSerial("ERROR: Unknown error code (%d).\n", errorCode);
    }
}