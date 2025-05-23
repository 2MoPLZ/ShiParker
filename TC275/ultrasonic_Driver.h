/*
 * ultrasonic_Driver.h
 *
 *  Created on: May 19, 2025
 *  Last Modify: May 21, 2025
 *      Author: 오동걸
 *
 *      getUltrasonic 호출간 주기는 최소 60ms로 할 것
 *      3cm ~ 250cm 까지 측정 가능(스펙상으론 2~400cm), 측정면의 상태에 따라 TIMEOUT 자주 발생(-1)
 *      cm를 int으로 계산하던 것을 double로 리턴하도록 변경
 *      200틱당 1us로 계산되어 있는데, 전체 클럭이 달라지면 타임아웃 틱과 delay_ms delay_us 함수를 수정해야 함
 * 
 *      TODO:
 *          ultrasonic.c에 선언된 포트와 핀을 담당자가 수정해서 사용. 디지털핀 아무거나 써도 됨
 *
 */

#ifndef ULTRASONIC_DRIVER_H_
#define ULTRASONIC_DRIVER_H_


/************** MAKE CHANGES HERE ********************/
#include "illd\src\ConfigurationIsr.h"
#include "illd\src\Configuration.h"

// #define ECHO_TIMEOUT_TICK 7600000 //38ms
#define ECHO_TIMEOUT_TICK 1200000   //최대 감지 거리를 대략 1미터로
/*******************************************     NO CHANGES AFTER THIS LINE      ****************************************************/

struct __attribute__((__packed__)) Ultrasonic
{
    Ifx_P* TRIG_PORT;
    uint8 TRIG_PIN;
    Ifx_P* ECHO_PORT;
    uint8 ECHO_PIN;
};

extern struct Ultrasonic g_Ultrasonic_FL;
extern struct Ultrasonic g_Ultrasonic_FRONT;
extern struct Ultrasonic g_Ultrasonic_RL;
extern struct Ultrasonic g_Ultrasonic_FR;
extern struct Ultrasonic g_Ultrasonic_RR;


void initUltrasonic(struct Ultrasonic* ultrasonic);
double getUltrasonic(struct Ultrasonic* ultrasonic);

void sendTrigger(struct Ultrasonic* ultrasonic);
long measureEchoTick(struct Ultrasonic* ultrasonic);
double calculateDistanceCm(long elapsedTicks);

#endif /* INC_ULTRASONIC_DRIVER_H_ */
