#ifndef BSW_H_
#define BSW_H_

#include "illd\Libraries\iLLD\TC27D\Tricore\Cpu\Std/Ifx_Types.h"
#include "ee.h"
#include "illd\src\Configuration.h"
/******************************************************************************/
/*------------------------------FUNCTION------------------------------*/
/*****************************************************************************/

void delay_ms(unsigned long delay);
void delay_us(unsigned long delay);
void UART_init(void);
void printfSerial(const char *fmt,...);
void initPeripheralsAndERU(void);
void initADC(void);                         /* Function to initialize the VADC module                               */
uint16 readADCValue(uint8 channel);         /* Function to read the VADC measurement */
#endif /* BSW_H_ */