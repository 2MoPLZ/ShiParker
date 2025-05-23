#include "shiparker_App.h"

#include "bsw.h"
#include "hall_Driver.h"
#include "motor_Driver.h"
#include "steering_Pid.h"
#include "uart_Driver.h"
#include "ultrasonic_Driver.h"

////////follow the wall용 각도 -> 모터출력 가중치, 0.1라디안 = 5.7296도
const volatile double motor_power_normal    = 50.0L;
const volatile double Kp_rad_to_delta_power = 120.0L;
/// 바퀴 둘레 22cm -> 홀센서 값 5

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
    targetPosition.x  = POSITION_NULL;
    targetPosition.y  = POSITION_NULL;
    carCommand        = CAR_COMMAND_START;
    SetRelAlarm(AppAlarm, 0, APP_CYCLE_TICK);
    SetRelAlarm(PacketSendAlarm, 0, SENDPACKET_DEFAULT_CYCLE_TICK);
}

TASK(ShiParkerAppTask)
{
    printfSerial("app");
    if (g_isAppRunning == FALSE)
        TerminateTask();
    // updateStatus(&g_RecievedParkingSystemPacket);
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
            SetRelAlarm(WallFollowAlarm, 0, WALL_FOLLOW_CYCLE_TICK);
            SetRelAlarm(PacketSendAlarm, 0, SENDPACKET_RUNNING_CYCLE_TICK);
            SetRelAlarm(AvoidObstacleAlarm,
                        0,
                        FRONT_OBSTACLE_DETECTION_TICK); // 100ms
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
            CancelAlarm(WallFollowAlarm);
            SetRelAlarm(PacketSendAlarm, 0, SENDPACKET_DEFAULT_CYCLE_TICK);
            break;
        default:
            break;
        }
        break;
    case CAR_STATUS_STOP:
        motor_stop(0);
        motor_stop(1);
        motor_stop(2);
        motor_stop(3);
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
            SetRelAlarm(WallFollowAlarm, 0, WALL_FOLLOW_CYCLE_TICK);
            SetRelAlarm(PacketSendAlarm, 0, SENDPACKET_RUNNING_CYCLE_TICK);
            SetRelAlarm(AvoidObstacleAlarm, 0, FRONT_OBSTACLE_DETECTION_TICK);
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
        motor_stop(0);
        motor_stop(1);
        motor_stop(2);
        motor_stop(3);
        printfSerial("Terminate ShiParker...\n");
        ActivateTask(PacketSendTask);
        g_isAppRunning = FALSE;
        CancelAlarm(AvoidObstacleAlarm);
        CancelAlarm(PacketSendAlarm);
        CancelAlarm(WallFollowAlarm);
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
            SetRelAlarm(WallFollowAlarm, 0, WALL_FOLLOW_CYCLE_TICK);
            SetRelAlarm(PacketSendAlarm,
                        0,
                        SENDPACKET_DEFAULT_CYCLE_TICK); // 2500ms
            SetRelAlarm(AvoidObstacleAlarm, 0, FRONT_OBSTACLE_DETECTION_TICK);
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
    double dist = getUltrasonic(&g_Ultrasonic_FRONT);
    printDouble("frontUltra:",dist);
    if (dist > 0 && dist < FRONT_OBSTACLE_THRESHOLD)
    {
        handleError(ERROR_CODE_OBSTACLE);
    }
}

void turn90()
{
    double currentHallCntAvg = getHallCntAvg();
    double targetHallCntAvg  = currentHallCntAvg + 3;

    CancelAlarm(AvoidObstacleAlarm);

    motor_stop(INDEX_FL);
    motor_stop(INDEX_FR);
    motor_stop(INDEX_RL);
    motor_stop(INDEX_RR);

    set_motor_power(INDEX_FL, motor_power_normal);
    set_motor_power(INDEX_FR, motor_power_normal);
    set_motor_power(INDEX_RL, motor_power_normal);
    set_motor_power(INDEX_RR, motor_power_normal);

    while (getHallCntAvg() < targetHallCntAvg)
    {
        delay_ms(10);
    }
    SetRelAlarm(PacketSendAlarm, 0, SENDPACKET_DEFAULT_CYCLE_TICK);
}

TASK(WallFollowTask)
{
    if (g_isAppRunning && (carStatus == CAR_STATUS_RUNNING))
    {
        double       FrontLeftUltra = getUltrasonic(&g_Ultrasonic_FL);
        double       RearLeftUltra  = getUltrasonic(&g_Ultrasonic_RL);
        // printDouble("frontleft:",FrontLeftUltra);
        // printDouble("Rearleft:",RearLeftUltra);
        DriveCommand cmd = wall_follow_control(FrontLeftUltra, RearLeftUltra);
        double       delta_p = cmd.steering_angle * Kp_rad_to_delta_power;
        printDouble("delta:",delta_p);
        set_motor_power(INDEX_FL, motor_power_normal + (delta_p / 2));
        set_motor_power(INDEX_RL, motor_power_normal + (delta_p / 2));
        set_motor_power(INDEX_FR, motor_power_normal - (delta_p / 2));
        set_motor_power(INDEX_RR, motor_power_normal - (delta_p / 2));
    }
}

TASK(PacketSendTask)
{
    printfSerial("sendpacket:status=%d,cmd=%d",carStatus,carCommand);
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
    CancelAlarm(WallFollowAlarm);
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
            ActivateTask(PacketSendTask);
            carStatus = CAR_STATUS_TERMINATED;
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
