#include "bsw.h"
#include "uart_Driver.h"
#include "ultrasonic_Driver.h"
#include "steering_Pid.h"
#include "hall_Driver.h"
#include "motor_driver.h"



TASK(TestTask){
    // // uint8 i=0;
    // // if(cnt==4){
    // //     cnt=0;
    // // }
    //set_motor_power(0,100);
    // for(i=0;i<4;i++){
    //     if(i==cnt){
    //         set_motor_power(i,100);
    //     }
    //     else{
    //         set_motor_power(i,0);
    //     }
    // }
    // // printDouble("FrontUltra",getUltrasonic(&g_Ultrasonic_FRONT));
    // double FrontLeftUltra = getUltrasonic(&g_Ultrasonic_FL);
    // double RearLeftUltra = getUltrasonic(&g_Ultrasonic_RL);
    // printDouble("FrontLeftUltra",FrontLeftUltra);
    // printDouble("RearLeftUltra",RearLeftUltra);
    // // printDouble("RightUltra",getUltrasonic(&g_Ultrasonic_RIGHT));
    // // printDouble("RearUltra",getUltrasonic(&g_Ultrasonic_REAR));
    // DriveCommand cmd = wall_follow_control(FrontLeftUltra, RearLeftUltra);

    // // //모터 출력 조정
    // // //각도는 double 타입 라디안 값, 왼쪽으로 가야하면 -, 오른쪽으로 가야하면 +
    // double delta_p = cmd.steering_angle * Kp_rad_to_delta_power;
    // // //델타p 양수 -> fl, rl 출력 상승
    // printDouble("power_left : ",motor_power_normal + (delta_p / 2));
    // printDouble("power_right : ",motor_power_normal - (delta_p / 2));

    // set_motor_power(INDEX_FL, motor_power_normal + (delta_p / 2));
    // set_motor_power(INDEX_RL, motor_power_normal + (delta_p / 2));
    // set_motor_power(INDEX_FR, motor_power_normal - (delta_p / 2));
    // set_motor_power(INDEX_RR, motor_power_normal - (delta_p / 2));

    // // //printfSerial("FRHall: %d FLHall: %d RRHall: %d RLHall: %d",g_FRHallCnt,g_FLHallCnt,g_RRHallCnt,g_RLHallCnt);
    
}


ISR2(TimerISR)
{
    static long c = -4;
    // osEE_tc_stm_set_sr0_next_match(1000000U); //1초
    // osEE_tc_stm_set_sr0_next_match(250000U); //0.25초
    // osEE_tc_stm_set_sr0_next_match(100000U); //0.1초

    /************** ONE-TIME-TASK ********************/



    /************** basic-TASK (every 1s) ********************/
    // if(c > -2){
    //     ActivateTask(TestTask);
    // }
    
    // cnt++;
    if(c==-2){
        startShiParkerApp();
        // ActivateTask(TestTask);
    }
    /************** basic-TASK for debugging ********************/
    
    printfSerial("\n%4ld: ", c++);
}
