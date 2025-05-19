#include "bsw.h"
#include "uart_Driver.h"
#include "ultrasonic_Driver.h"

struct ParkingSystemPacket testPacket=
{
    .start_byte=0xAA,
    .car_status=1,
    .car_current_position.x=2,
    .car_current_position.y=3,
    .car_target_position.x=4,
    .car_target_position.y=5,
    .car_command=1,
    .crc
};

TASK(SensorTask)
{
    double ultrasonicValue_FL = getUltrasonic(&g_Ultrasonic_FL);
    double ultrasonicValue_F = getUltrasonic(&g_Ultrasonic_F);
    double ultrasonicValue_FR = getUltrasonic(&g_Ultrasonic_FR);
    double ultrasonicValue_SL = getUltrasonic(&g_Ultrasonic_SL);
    double ultrasonicValue_SR = getUltrasonic(&g_Ultrasonic_SR);
    double ultrasonicValue_R = getUltrasonic(&g_Ultrasonic_R);
    printfSerial("FL:%lf,F:%lf,FR:%lf,SL:%lf,SR:%lf,R:%lf",
        ultrasonicValue_FL,ultrasonicValue_F,ultrasonicValue_FR,
        ultrasonicValue_SL,ultrasonicValue_SR,ultrasonicValue_R)
}

ISR2(TimerISR)
{
    static long c = -4;
    osEE_tc_stm_set_sr0_next_match(1000000U); //1초
    // osEE_tc_stm_set_sr0_next_match(250000U); //0.25초

    /************** ONE-TIME-TASK ********************/

    /************** basic-TASK (every 1s) ********************/
    
    // if(c==0){
    //     lcd_clear();
    //     printInfoDisplay();
    // }
    // ActivateTask(SensorTask);
    
    // serialize_actuator_packet(&testact,buf);
    // int i;
    // for (i = 0; i < 11; i++)
    // {
    //     printfSerial("%2x/",buf[i]);
    // }

    sendActuatorPacket(&testact);
    

    /************** basic-TASK for debugging ********************/
    
    printfSerial("\n%4ld: ", c++);
}
