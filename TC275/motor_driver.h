/**********************************************************************************************************************
 * \file motor_driver.h
 * \copyright Copyright (C) Infineon Technologies AG 2019
 *********************************************************************************************************************/
#ifndef DRIVER_MOTOR_H_
#define DRIVER_MOTOR_H_
/*********************************************************************************************************************/
/*-----------------------------------------------------Includes------------------------------------------------------*/
/*********************************************************************************************************************/
#include "illd\src\ConfigurationIsr.h"
#include "illd\src\Configuration.h"
#include "bsw.h"

/*********************************************************************************************************************/
/*------------------------------------------------------Macros-------------------------------------------------------*/
/*********************************************************************************************************************/
//각 모터의 en과 연결되는 pwm
#define MOTOR_FL IfxGtm_TOM0_2_TOUT104_P10_2_OUT
#define MOTOR_FR IfxGtm_TOM0_1_TOUT103_P10_1_OUT
#define MOTOR_RL IfxGtm_TOM0_3_TOUT21_P00_12_OUT
#define MOTOR_RR IfxGtm_TOM0_4_TOUT30_P33_8_OUT

#define MOTOR_COUNT 4

// 정속
// 3100
#define MOTOR_PERIOD 5000
#define MOTOR_DUTY_MAX 4000
#define MOTOR_DUTY_MIN 2200
#define MOTOR_DUTY_DEFAULT 0
#define MOTOR_DUTY_UNIT ((MOTOR_DUTY_MAX - MOTOR_DUTY_MIN) / 100)
//모터 출력은 0-100
//정속주행시 출력 25
//제자리 회전 시 출력 50 필요.

//방향 설정용 디지털output 핀, 모터당 2개 - IN1, IN2
#define IN1_FL IfxPort_P14_0
#define IN2_FL IfxPort_P14_1

#define IN1_FR IfxPort_P15_6
#define IN2_FR IfxPort_P00_0

#define IN1_RL IfxPort_P00_8
#define IN2_RL IfxPort_P00_1

#define IN1_RR IfxPort_P00_9
#define IN2_RR IfxPort_P00_2

/*********************************************************************************************************************/
/*-------------------------------------------------Data Structures---------------------------------------------------*/
/*********************************************************************************************************************/
typedef enum motor_index{
    INDEX_FL = 0,
    INDEX_FR = 1,
    INDEX_RL = 2,
    INDEX_RR = 3
}motor_index_t;

/*********************************************************************************************************************/
/*------------------------------------------------Function Prototypes------------------------------------------------*/
/*********************************************************************************************************************/
void initMotor(void);
void init_pwms(IfxGtm_Tom_Pwm_Driver* drivers[] , IfxGtm_Tom_Pwm_Config* configs[], int pwm_count);
void motor_run_forward(motor_index_t motor_index);
void motor_run_backward(motor_index_t motor_index);
void motor_stop(motor_index_t motor_index);
void set_motor_power(motor_index_t motor_index, double dutyPercent);
void _setDutyCycle(IfxGtm_Tom_Pwm_Driver* driver , IfxGtm_Tom_Pwm_Config* config, uint32 _dutyCycle);

#endif /* DRIVER_MOTOR_H_ */
