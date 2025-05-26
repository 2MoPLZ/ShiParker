#include "shiparker_App.h"
#include "bsw.h"

////////follow the wall용 각도 -> 모터출력 가중치, 0.1라디안 = 5.7296도
const volatile double motor_power_turn      = 100.0L;
const volatile double motor_power_normal    = 50.0L;
const volatile double Kp_rad_to_delta_power = 120.0L;
/// 바퀴 둘레 22cm -> 홀센서 값 5

boolean                           g_isAppRunning;
static struct ParkingSystemPacket carStatusPacket = {};
static CAR_STATUS_TYPE            carStatus;
static CAR_COMMAND_TYPE           carCommand;
static struct Position            currentPosition;
static struct Position            targetPosition;
static uint8                      currentDirection; // 0 : facing north, 1 : facing east ...

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
    currentDirection  = 0;
    currentPosition.x = 0;
    currentPosition.y = 0;
<<<<<<< Updated upstream
    targetPosition.x  = POSITION_NULL;
    targetPosition.y  = POSITION_NULL;
    carCommand        = CAR_COMMAND_START;
    SetRelAlarm(AppAlarm, 0, APP_CYCLE_TICK);
    SetRelAlarm(PacketSendAlarm, 0, SENDPACKET_DEFAULT_CYCLE_TICK);
=======
    targetPosition.x  = 40;
    targetPosition.y  = 40;
    carCommand        = CAR_COMMAND_STOP;
    set_motor_power(INDEX_FL, motor_power_normal);
    set_motor_power(INDEX_RL, motor_power_normal);
    set_motor_power(INDEX_FR, motor_power_normal);
    set_motor_power(INDEX_RR, motor_power_normal);
    motor_stop(INDEX_FL);
    motor_stop(INDEX_FR);
    motor_stop(INDEX_RL);
    motor_stop(INDEX_RR);
    SetRelAlarm(AppAlarm, 4, APP_CYCLE_TICK);
    SetRelAlarm(PacketSendAlarm, 5, SENDPACKET_DEFAULT_CYCLE_TICK);
>>>>>>> Stashed changes
}

void exitShiParkerApp(){
    printfSerial("Exit ShiParker...\n");
    motor_stop(INDEX_FL);
    motor_stop(INDEX_FR);
    motor_stop(INDEX_RL);
    motor_stop(INDEX_RR);

    carStatus = CAR_STATUS_TERMINATED;

    ActivateTask(PacketSendTask);
    CancelAlarm(AvoidObstacleAlarm);
    CancelAlarm(PacketSendAlarm);
    CancelAlarm(WallFollowAlarm);
    CancelAlarm(AppAlarm);

    g_isAppRunning = FALSE;
}

TASK(ShiParkerAppTask)
{
    printfSerial("[%d]",carStatus);
    if (g_isAppRunning == FALSE||g_isRecieved==FALSE)
        TerminateTask();
    g_isRecieved=FALSE;
    updateStatus(&g_RecievedParkingSystemPacket);
    switch (carStatus)
    {
    case CAR_STATUS_READY:
        switch (carCommand)
        {
        case CAR_COMMAND_FORCESTOP:
            // READY일때 강제정지 -> 앱 종료
            exitShiParkerApp();
            break;
        case CAR_COMMAND_START:
            // READY일때 시작 -> 주차 시작
            carStatus = CAR_STATUS_RUNNING;
            CancelAlarm(PacketSendAlarm);
            SetRelAlarm(WallFollowAlarm, 3, WALL_FOLLOW_CYCLE_TICK);
            SetRelAlarm(PacketSendAlarm, 1, SENDPACKET_RUNNING_CYCLE_TICK);
            SetRelAlarm(AvoidObstacleAlarm,
                        2,
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
            exitShiParkerApp();
            break;
        case CAR_COMMAND_START:
            // RUNNING일때 시작 -> 변화없음
            break;
        case CAR_COMMAND_STOP:
            // RUNNING일때 일시정지 -> 일시정지
            carStatus = CAR_STATUS_STOP;
            motor_stop(INDEX_FL);
            motor_stop(INDEX_FR);
            motor_stop(INDEX_RL);
            motor_stop(INDEX_RR);
            CancelAlarm(PacketSendAlarm);
            CancelAlarm(AvoidObstacleAlarm);
            CancelAlarm(WallFollowAlarm);
            SetRelAlarm(PacketSendAlarm, 1, SENDPACKET_DEFAULT_CYCLE_TICK);
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
            exitShiParkerApp();
            break;
        case CAR_COMMAND_START:
            // STOP일때 시작 -> 주차 재개
            carStatus = CAR_STATUS_RUNNING;
            CancelAlarm(PacketSendAlarm);
            SetRelAlarm(WallFollowAlarm, 3, WALL_FOLLOW_CYCLE_TICK);
            SetRelAlarm(PacketSendAlarm, 1, SENDPACKET_RUNNING_CYCLE_TICK);
            SetRelAlarm(AvoidObstacleAlarm, 2, FRONT_OBSTACLE_DETECTION_TICK);
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
        exitShiParkerApp();
        break;
    case CAR_STATUS_ERROR_OBSTACLE:
    case CAR_STATUS_ERROR_BAD_CONNECTION:
        switch (carCommand)
        {
        case CAR_COMMAND_FORCESTOP:
            // STOP일때 강제정지 -> 앱 종료
            exitShiParkerApp();
            break;
        case CAR_COMMAND_START:
            // ERROR일때 시작 -> 주차 재개
            carStatus = CAR_STATUS_RUNNING;
            CancelAlarm(PacketSendAlarm);
            SetRelAlarm(WallFollowAlarm, 3, WALL_FOLLOW_CYCLE_TICK);
            SetRelAlarm(PacketSendAlarm,
<<<<<<< Updated upstream
                        0,
                        SENDPACKET_DEFAULT_CYCLE_TICK); // 2500ms
            SetRelAlarm(AvoidObstacleAlarm, 0, FRONT_OBSTACLE_DETECTION_TICK);
=======
                        1,
                        SENDPACKET_RUNNING_CYCLE_TICK); // 500ms
            SetRelAlarm(AvoidObstacleAlarm, 2, FRONT_OBSTACLE_DETECTION_TICK);
>>>>>>> Stashed changes
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
    // printDouble("frontUltra:",dist);
    if (dist > 0 && dist < FRONT_OBSTACLE_THRESHOLD)
    {
        handleError(ERROR_CODE_OBSTACLE);
    }
}

void turn90(void)
{
    volatile double currentHallCntAvg = getHallCntAvg();
<<<<<<< Updated upstream
    volatile double targetHallCntAvg  = currentHallCntAvg + 4.5;
=======
    volatile double targetHallCntAvg  = currentHallCntAvg + (double)4.5;
>>>>>>> Stashed changes

    CancelAlarm(AvoidObstacleAlarm);

    motor_stop(INDEX_FL);
    motor_stop(INDEX_FR);
    motor_stop(INDEX_RL);
    motor_stop(INDEX_RR);

    motor_run_forward(INDEX_FL);
    motor_run_forward(INDEX_RL);
    motor_run_backward(INDEX_FR);
    motor_run_backward(INDEX_RR);

    set_motor_power(INDEX_FL, motor_power_turn);
    set_motor_power(INDEX_FR, motor_power_turn);
    set_motor_power(INDEX_RL, motor_power_turn);
    set_motor_power(INDEX_RR, motor_power_turn);
 
    for (currentHallCntAvg; currentHallCntAvg < targetHallCntAvg;currentHallCntAvg=getHallCntAvg())
    {
        delay_ms(10);
        printDouble("asd:",currentHallCntAvg);
    }
    
    currentDirection = (currentDirection + 1) % 4;
    
    g_FLHallCnt = 0;
    g_FRHallCnt = 0;
    g_RLHallCnt = 0; 
    g_RRHallCnt = 0;

    set_motor_power(INDEX_FL, motor_power_normal);
    set_motor_power(INDEX_FR, motor_power_normal);
    set_motor_power(INDEX_RL, motor_power_normal);
    set_motor_power(INDEX_RR, motor_power_normal);

<<<<<<< Updated upstream
    SetRelAlarm(PacketSendAlarm, 0, SENDPACKET_DEFAULT_CYCLE_TICK);
=======
    SetRelAlarm(AvoidObstacleAlarm, 1, WALL_FOLLOW_CYCLE_TICK);
>>>>>>> Stashed changes
}

void calculateCurrentPos() {
    switch (currentDirection) 
    {
        case 0: 
            currentPosition.y = CM_PER_HALLCNT * getHallCntAvg();
            break;
        case 1: 
            currentPosition.x = CM_PER_HALLCNT * getHallCntAvg();
            break;
        case 2:
            currentPosition.y = CM_PER_HALLCNT * getHallCntAvg();
            break;
        case 3:
            currentPosition.x = CM_PER_HALLCNT * getHallCntAvg();
            break;
        default:
            break;
    }
}
volatile double FrontUltra;
volatile double RearUltra;
TASK(WallFollowTask)
{
    if (g_isAppRunning && (carStatus == CAR_STATUS_RUNNING))
    {
<<<<<<< Updated upstream
        if(currentDirection == 0)
        {
            min_dist_left = 20; 
            FrontUltra = getUltrasonic(&g_Ultrasonic_FL);
            RearUltra = getUltrasonic(&g_Ultrasonic_RL);
        }
        else if(currentDirection==1)
        {
            min_dist_left = targetPosition.y;
            FrontUltra = getUltrasonic(&g_Ultrasonic_FL);
            RearUltra = getUltrasonic(&g_Ultrasonic_RL);
=======
        // volatile int32_t tmpdir = 1;
        min_dist_left = 20; 
        FrontUltra = getUltrasonic(&g_Ultrasonic_FL);
        RearUltra = getUltrasonic(&g_Ultrasonic_RL);
        printDouble("g_Ultrasonic_FL : ", FrontUltra);
        printDouble("g_Ultrasonic_RL : ", RearUltra);
        
        // if(currentDirection == 0)
        // {
        //     min_dist_left = 20; 
        //     FrontUltra = getUltrasonic(&g_Ultrasonic_FL);
        //     RearUltra = getUltrasonic(&g_Ultrasonic_RL);
        // }
        // else if(currentDirection==1)
        // {
        //     min_dist_left = targetPosition.y;
        //     tmpdir=-1;
        //     FrontUltra = getUltrasonic(&g_Ultrasonic_FR);
        //     RearUltra = getUltrasonic(&g_Ultrasonic_RR);
>>>>>>> Stashed changes
            
        // }
        DriveCommand cmd = wall_follow_control(FrontUltra, RearUltra);
        printDouble("steering :", cmd.steering_angle);
        double       delta_p = cmd.steering_angle * Kp_rad_to_delta_power;
        set_motor_power(INDEX_FL, motor_power_normal + (delta_p / 2));
        set_motor_power(INDEX_RL, motor_power_normal + (delta_p / 2));
        set_motor_power(INDEX_FR, motor_power_normal - (delta_p / 2));
        set_motor_power(INDEX_RR, motor_power_normal - (delta_p / 2));
        motor_run_forward(INDEX_FL);
        motor_run_forward(INDEX_FR);
        motor_run_forward(INDEX_RL);
        motor_run_forward(INDEX_RR);

        
        calculateCurrentPos();

        if (currentDirection == 0 && currentPosition.y >= targetPosition.y) 
        {
            motor_stop(INDEX_FL);
            motor_stop(INDEX_FR);
            motor_stop(INDEX_RL);
            motor_stop(INDEX_RR);

            turn90();
        } 

        else if (currentDirection == 1 && currentPosition.x >= targetPosition.x) 
        {
            motor_stop(INDEX_FL);
            motor_stop(INDEX_FR);
            motor_stop(INDEX_RL);
            motor_stop(INDEX_RR);

            carStatus = CAR_STATUS_TERMINATED;
        }
    }
}


TASK(PacketSendTask)
{
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
    carCommand        = packet->car_command;
    targetPosition.x  = packet->car_target_position.x;
    targetPosition.y  = packet->car_target_position.y;
}

void handleError(ERROR_CODE_TYPE errorCode)
{
    carCommand=CAR_COMMAND_STOP;
    CancelAlarm(AvoidObstacleAlarm);
    CancelAlarm(WallFollowAlarm);
    motor_stop(INDEX_FL);
    motor_stop(INDEX_FR);
    motor_stop(INDEX_RL);
    motor_stop(INDEX_RR);
    if (errorCode < ERROR_CODE_MAX)
    {
        printfSerial("ERROR: %s (%d)\n", errorMessages[errorCode], errorCode);
        switch (errorCode)
        {
        case ERROR_CODE_USER_CONTROL:
            carStatus = CAR_STATUS_ERROR_HARDWARE;
            ActivateTask(PacketSendTask);
            exitShiParkerApp();
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
        exitShiParkerApp();
    }
    ActivateTask(PacketSendTask);
}
