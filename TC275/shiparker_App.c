#include "shiparker_App.h"

#include "bsw.h"
#include "stdlib.h"

uint8           carStatus       = 0;
struct Position currentPosition = {x = 0, y = 0};
struct Position targetPosition  = {x = 0, y = 0};
uint8           carCommand      = 0;
// command는 인터럽트로 들어올예정

int app(void)
{ // APP_TIME 당 1번의 app 실행
    static uint8 cnt;
    uint64       startTick = 0, elapsedTick = 0;
    startTick = IfxStm_get(&MODULE_STM0);
    switch (carStatus)
    {
    case CAR_STATUS_READY:
        while (carCommand != CAR_COMMAND_START)
        {
            elapsedTick = IfxStm_get(&MODULE_STM0) - startTick;
            if (elapsedTick >= (uint64)APP_TIME)
                return 0; // 아무일없이 APP_TIME 지나면 정상종료
        }
        // START를 받았다면
        carStatus = CAR_STATUS_RUNNING;
        // 2500ms 주기의 sendPacket 알람을 비활성화하는 코드를 여기에
        // 500ms 주기의 sendPacket 알람을 활성화하는 코드를 여기에
        cnt = 0;
        break;
    case CAR_STATUS_RUNNING:
        double xDifference     = abs(currentPosition.x - targetPosition.x);
        double yDifference     = abs(currentPosition.y - targetPosition.y);
        double xAllowableError = xDifference * 0.05;
        double yAllowableError = yDifference * 0.05;

        while ((carCommand == CAR_COMMAND_START)
               && (currentPosition.y < (targetPosition.y - yAllowableError)
                   || currentPosition.y > (targetPosition.y + yAllowableError)))
        {
            elapsedTick = IfxStm_get(&MODULE_STM0) - startTick;
            if (elapsedTick >= (uint64)APP_TIME)
                return 0; // 아무일없이 APP_TIME 지나면 정상종료
            moveCar(dir);
        }

        while ((carCommand == CAR_COMMAND_START)
               && (currentDegree != targetDegree))
        {
            elapsedTick = IfxStm_get(&MODULE_STM0) - startTick;
            if (elapsedTick >= (uint64)APP_TIME)
                return 0; // 아무일없이 APP_TIME 지나면 정상종료
            rotateCar(dir);
        }

        while (
            (carCommand == CAR_COMMAND_START)
            && (currentPosition.x >= (targetPosition.x - xAllowableError)
                || currentPosition.x <= (targetPosition.x + xAllowableError)
                || currentPosition.y >= (targetPosition.y - yAllowableError)
                || currentPosition.y <= (targetPosition.y + yAllowableError)))
        {
            elapsedTick = IfxStm_get(&MODULE_STM0) - startTick;
            if (elapsedTick >= (uint64)APP_TIME)
                return 0; // 아무일없이 APP_TIME 지나면 정상종료
            moveCar();
        }

        carStatus = CAR_STATUS_TERMINATED;
        sendPacket();
        cnt = 0;
        break;
    case CAR_STATUS_STOP:
        while (carCommand != CAR_COMMAND_START)
        {
            elapsedTick = IfxStm_get(&MODULE_STM0) - startTick;
            if (elapsedTick >= (uint64)APP_TIME)
                return 0; // 아무일없이 APP_TIME 지나면 정상종료
        }
        // START를 받았다면
        carStatus = CAR_STATUS_RUNNING;
        // 2500ms 주기의 sendPacket 알람을 비활성화하는 코드를 여기에
        // 500ms 주기의 sendPacket 알람을 활성화하는 코드를 여기에
        cnt = 0;
        break;
    case CAR_STATUS_TERMINATED:
        while (carCommand != CAR_COMMAND_FORCESTOP)//이거맞냐?
        {
            elapsedTick = IfxStm_get(&MODULE_STM0) - startTick;
            if (elapsedTick >= (uint64)APP_TIME)
                return 0; // 아무일없이 APP_TIME 지나면 정상종료
        }
        // FORCESTOP를 받았다면
        carStatus = CAR_STATUS_READY;
        // 2500ms 주기의 sendPacket 알람을 활성화하는 코드를 여기에
        // 500ms 주기의 sendPacket 알람을 비활성화하는 코드를 여기에
        break;
    case CAR_STATUS_ERROR:
        //에러핸들링이 될 때까지 자동차 운행 정지
        //핸들링이 완료되면 READY상태가 됨
        // 2500ms 주기의 sendPacket 알람을 활성화하는 코드를 여기에
        // 500ms 주기의 sendPacket 알람을 비활성화하는 코드를 여기에
        break;
    default:
        break;
    }
}