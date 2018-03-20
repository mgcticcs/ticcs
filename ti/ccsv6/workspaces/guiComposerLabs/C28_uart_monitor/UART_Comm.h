#ifndef UART_COMM_H_
#define UART_COMM_H_

#include "DSP28x_Project.h"     // Device Headerfile and Examples Include File

Uint16 getReceivedChar();
Uint16 getNewCharCount();
void setup_scia_interrupt(void);
void scia_echoback_init(void);
void scia_fifo_init(void);
void scia_xmit(int a);
__interrupt void sciaRxFifoIsr(void);

#endif
