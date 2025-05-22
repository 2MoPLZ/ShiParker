#include "steering_Pid.h"
#include <time.h>
#include "bsw.h"

 get_time_us()
{
    return IfxStm_get(&MODULE_STM0) / (STM_FREQUENCY / 1000000UL);  // ex: 100MHz → /100
}


double get_delta_time(void){
    uint64_t now = get_time_us();  
    double delta = (double)(now - pid_last_time) / 1000000;
    /*프로그램 수행 시간부터 현재 까지의 시간 - 프로그램 수행시간부터 아까 start 변수까지의 시간     
     = start 변수에서 부터 ~ 지금 printf 라인까지 걸린시간이 됩니다.      
    이를 CLOCK_PER_SEC으로 나누면 됩니다.   
     */
    pid_last_time = now;
    return delta;
}

double get_position(double adjusted_dist_a, double adjusted_dist_b){
    double alpha = atan((adjusted_dist_a-adjusted_dist_b)/SENSOR_DISTANCE);
    return alpha;
}

DriveCommand  wall_follow_control(double dist_a, double dist_b){
    // 센서 각도 (라디안): A = 45도, B = 90도
    // double ang_a = 63.0 * (PI / 180.0);
    // double ang_b = 90.0 * (PI / 180.0);

    dist_a += 4.0;
    dist_b += 4.0;

    
    // 벽 각도 계산
    double alpha = get_position(dist_a, dist_b);

    // 벽 각도 계산
    // double alpha = atanf((dist_a * cosf(ang_b - ang_a) - dist_b) / (dist_a * sinf(ang_b - ang_a)));



    printDouble("alpha: ", alpha);
    // 차량과 벽 사이 거리 계산
    double dt = dist_b * cosf(alpha);
    double dt1 = dt + L * sinf(alpha);
    printDouble("MIN_DIST_LEFT: ", MIN_DIST_LEFT);
    printDouble("dt1: ", dt1);
    // 목표 거리와의 오차
    double error =  MIN_DIST_LEFT - dt1;

    // 시간 간격
    double delta_time = get_delta_time();

    // PID 제어 계산
    pid_integral += error * delta_time;
    float derivative = (error - pid_prev_error) / delta_time;
    pid_prev_error = error;

    // 조향 각도 계산 (부호 반영)
    double steering_angle = (KP * error + KD * derivative /*+ KI * pid_integral*/ );
    // 속도 결정
    double speed;
    if (fabsf(steering_angle) > 20.0f * (PI / 180.0f))
        speed = 0.5f;
    else if (fabsf(steering_angle) > 10.0f * (PI / 180.0f))
        speed = 1.0f;
    else
        speed = 1.5f;

    DriveCommand cmd = { steering_angle, speed };
    printDouble("steering_angle: ", cmd.steering_angle);
    return cmd;

}