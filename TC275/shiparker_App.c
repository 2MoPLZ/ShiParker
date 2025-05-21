#include "shiparker_App.h"

static struct ParkingSystemPacket carStatusPacket = {};
static CAR_STATUS_TYPE carStatus;
static CAR_COMMAND_TYPE carCommand;
static struct Position currentPosition;
static struct Position targetPosition;

void initShiParkerApp(void)
{
    carStatus             = CAR_STATUS_READY;
    currentPosition.x = 0;
    currentPosition.y = 0;
    targetPosition.x  = -1; // NULL 값을 따로 정의해줘야함
    targetPosition.y  = -1; // NULL 값을 따로 정의해줘야함
    carCommand            = CAR_COMMAND_STOP;
}

int shiParkerApp(void)
{
    uint64 startTick = 0, elapsedTick = 0;
    startTick = IfxStm_get(&MODULE_STM0);
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
            sendPacket(&carStatusPacket);
            // 값들을 저장하고 앱을 나감 -> 제어권이 시스템에서 사람으로 넘어감
            break;
        case CAR_COMMAND_START:
            // STOP일때 시작 -> 주차 재개
            carStatus = CAR_STATUS_RUNNING;
            carStatusPacket.car_status = carStatus;
            sendPacket(&carStatusPacket);
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
        switch (carCommand)
        {
        case CAR_COMMAND_FORCESTOP:
            // TERMINATED일때 강제정지 -> 변화없음

            // 값들을 저장하고 앱을 나가는 코드를 여기 작성
            break;
        case CAR_COMMAND_START:
            // TERMINATED일때 시작 -> 변화없음
            break;
        case CAR_COMMAND_STOP:
            // TERMINATED일때 일시정지 -> 변화없음
            break;
        default:
            break;
        }
        break;
    case CAR_STATUS_ERROR:
        switch (carCommand)
        {
        case CAR_COMMAND_FORCESTOP:
            // STOP일때 강제정지 -> 앱 종료
            carStatus = CAR_STATUS_TERMINATED;
            carStatusPacket.car_status = carStatus;
            sendPacket(&carStatusPacket);
            // 값들을 저장하고 앱을 나감 -> 제어권이 시스템에서 사람으로 넘어감
            break;
        case CAR_COMMAND_START:
            // ERROR일때 시작 -> 주차 재개
            carStatus = CAR_STATUS_RUNNING;
            carStatusPacket.car_status = carStatus;
            sendPacket(&carStatusPacket);
            //  2500ms 주기의 sendPacket 알람을 비활성화하는 코드를 여기에
            //  500ms 주기의 sendPacket 알람을 활성화하는 코드를 여기에
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
        break;
    }
}

void handleError(ERROR_CODE_TYPE errorCode) {
    if (errorCode < ERROR_CODE_MAX) {
        printfSerial("ERRORCODE %d: %s\n",errorCode,errorMessages[errorCode]);
        switch (errorCode)
        {
        case ERROR_CODE_FORCESTOP:
            carStatus = CAR_STATUS_ERROR;
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