#include "bsw.h"
#include "uart_Driver.h"
#include "ultrasonic_Driver.h"
#include "steering_Pid.h"
#include "hall_Driver.h"
#include "motor_driver.h"

extern volatile uint16 g_FRHallCnt;
extern volatile uint16 g_FLHallCnt;
extern volatile uint16 g_RRHallCnt;
extern volatile uint16 g_RLHallCnt;

volatile uint16 cnt=0;
struct ParkingSystemPacket testSendPacket = 
{
    .start_byte=0xAA,
    .car_status=1,
    .car_current_position.x=2,
    .car_current_position.y=3,
    .car_target_position.x=4,
    .car_target_position.y=5,
    .car_command=6,
    .crc=7
};

TASK(TestTask){
    // uint8 i=0;
    // if(cnt==4){
    //     cnt=0;
    // }
    // for(i=0;i<4;i++){
    //     if(i==cnt){
    //         set_motor_power(i,100);
    //     }
    //     else{
    //         set_motor_power(i,0);
    //     }
    // }
    // printDouble("FrontUltra",getUltrasonic(&g_Ultrasonic_FRONT));
    double FrontLeftUltra = getUltrasonic(&g_Ultrasonic_FL);
    double RearLeftUltra = getUltrasonic(&g_Ultrasonic_RL);
    printDouble("FrontLeftUltra",FrontLeftUltra);
    printDouble("RearLeftUltra",RearLeftUltra);
    // printDouble("RightUltra",getUltrasonic(&g_Ultrasonic_RIGHT));
    // printDouble("RearUltra",getUltrasonic(&g_Ultrasonic_REAR));
    DriveCommand cmd = wall_follow_control(FrontLeftUltra, RearLeftUltra);
    printfSerial("FRHall: %d FLHall: %d RRHall: %d RLHall: %d",g_FRHallCnt,g_FLHallCnt,g_RRHallCnt,g_RLHallCnt);

}

ISR2(FRHallISR)
{
    g_FRHallCnt++;
    IfxScuEru_clearEventFlag(IfxScuEru_InputChannel_2);
}
ISR2(FLHallISR)
{
    g_FLHallCnt++;
    IfxScuEru_clearEventFlag(IfxScuEru_InputChannel_3);
}
ISR2(RRHallISR)
{
    g_RRHallCnt++;
    // IfxScuEru_clearEventFlag(IfxScuEru_InputChannel_4);
    IfxScuEru_clearEventFlag(IfxScuEru_InputChannel_6);
}
ISR2(RLHallISR)
{
    g_RLHallCnt++;
    // IfxScuEru_clearEventFlag(IfxScuEru_InputChannel_0);
    IfxScuEru_clearEventFlag(IfxScuEru_InputChannel_7);
}

ISR2(TimerISR)
{
    static long c = -4;
    osEE_tc_stm_set_sr0_next_match(1000000U); //1초
    // osEE_tc_stm_set_sr0_next_match(250000U); //0.25초
    // osEE_tc_stm_set_sr0_next_match(100000U); //0.1초

    /************** ONE-TIME-TASK ********************/



    /************** basic-TASK (every 1s) ********************/
    ActivateTask(TestTask);
    cnt++;
    // if(c==0){
    //     startShiParkerApp();
    // }
    /************** basic-TASK for debugging ********************/
    
    printfSerial("\n%4ld: ", c++);
}
