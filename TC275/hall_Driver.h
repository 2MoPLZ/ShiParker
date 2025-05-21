#ifndef HALL_DRIVER_H_
#define HALL_DRIVER_H_
#include "illd\Libraries\iLLD\TC27D\Tricore\Cpu\Std/Ifx_Types.h"
#include "illd\Libraries\iLLD\TC27D\Tricore\Scu\Std\IfxScuEru.h"
#include "illd\Libraries\iLLD\TC27D\Tricore\Src\Std\IfxSrc.h"

void initHall(void);
uint16 getFRHallCnt(void);
void resetFRHallCnt(void);

#endif /* HALL_DRIVER_H_ */