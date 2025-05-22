/*
 * steering_Pid.h
 *
 *  Created on: May 21, 2025
 *      Author: 김민
 *
 *      
 * 
 *      TODO:
 *          
 *
 */

#ifndef STEERING_PID_H_
#define STEERING_PID_H_

#include <math.h>
#include <time.h>

// 제어 상수
#define KP 0.1
#define KD 0.001
#define KI 0.005
#define L 10
#define SENSOR_DISTANCE 11.5
#define MIN_DIST_LEFT 10
#define PI 3.14159265359
#define STM_FREQUENCY 100000000UL  // STM 주파수 (Hz) → 100 MHz이면 1초 = 100,000,000 ticks


// PID 변수
static double pid_prev_error = 0.0;
static double pid_integral = 0.0;
static clock_t pid_last_time = 0;

// 주행 명령 구조체
typedef struct{
    double steering_angle;  // 라디안
    double speed;           // m/s
} DriveCommand;

double get_delta_time(void);
double get_position(double adjusted_dist_a, double adjusted_dist_b);
DriveCommand  wall_follow_control(double dist_a, double dist_b);

#endif /* STEERING_PID_H_ */