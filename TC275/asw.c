#include "bsw.h"
#include "uart_Driver.h"
#include "ultrasonic_Driver.h"
#include "steering_Pid.h"
#include "hall_Driver.h"

extern volatile uint16 g_FRHallCnt;
extern volatile uint16 g_FLHallCnt;
extern volatile uint16 g_RRHallCnt;
extern volatile uint16 g_RLHallCnt;

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
    testSendPacket.car_status++;
    testSendPacket.car_status%=4;
    sendPacket(&testSendPacket);
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
    DisableAllInterrupts();
    osEE_tc_delay(5000);
    g_RRHallCnt++;
    osEE_tc_delay(3000);
    EnableAllInterrupts();
}
ISR2(RLHallISR)
{
    DisableAllInterrupts();
    osEE_tc_delay(5000);
    g_RLHallCnt++;
    osEE_tc_delay(3000);
    EnableAllInterrupts();
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

    /************** basic-TASK for debugging ********************/
    
    printfSerial("\n%4ld: ", c++);
}
