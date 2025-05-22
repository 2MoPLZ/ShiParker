#ifndef HALL_DRIVER_H_
#define HALL_DRIVER_H_

#include "illd\src\ConfigurationIsr.h"
#include "illd\src\Configuration.h"

/* 매크로 정의 */
#define ISR_PRIORITY_SCUERU_INT0 10
#define ISR_PRIORITY_SCUERU_INT1 11
#define ISR_PRIORITY_SCUERU_INT2 12
#define ISR_PRIORITY_SCUERU_INT3 15

#define REQ_IN0   &IfxScu_REQ14_P02_1_IN   // 첫 번째 홀 센서 (P02.1)
#define REQ_IN1   &IfxScu_REQ3_P10_3_IN   // 두 번째 홀 센서 (P10.3)
#define REQ_IN2   &IfxScu_REQ13_P15_5_IN   // 세 번째 홀 센서 (P15.5)
#define REQ_IN3   &IfxScu_REQ0_P15_4_IN  // 네 번째 홀 센서 (P15.4)


#define TRIGGER_PIN0 &MODULE_P02, 1
#define TRIGGER_PIN1 &MODULE_P10, 3
#define TRIGGER_PIN2 &MODULE_P15, 5
#define TRIGGER_PIN3 &MODULE_P15, 4

void initHall(void);
uint16 getFRHallCnt(void);
void resetFRHallCnt(void);

#endif /* HALL_DRIVER_H_ */