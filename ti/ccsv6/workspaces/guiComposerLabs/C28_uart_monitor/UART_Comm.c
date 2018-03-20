#include "UART_Comm.h"

Uint16 g_ReceivedChar = 0;
Uint16 g_newChar = 0;

//returns the number of new Chars available in the fifo
Uint16 getNewCharCount()
{
	return g_newChar;
}

//return the next Char in the fifo, reduce the g_newChar by 1
Uint16 getReceivedChar()
{
	g_newChar--;
	return g_ReceivedChar;
}

void setup_scia_interrupt()
{
	// Interrupts that are used in this example are re-mapped to
	// ISR functions found within this file.
	EALLOW;  // This is needed to write to EALLOW protected registers
	PieVectTable.SCIRXINTA = &sciaRxFifoIsr;
	EDIS;   // This is needed to disable write to EALLOW protected registers
}

void scia_echoback_init()
{
    // Note: Clocks were turned on to the SCIA peripheral
    // in the InitSysCtrl() function

 	SciaRegs.SCICCR.all =0x0007;   // 1 stop bit,  No loopback
                                   // No parity,8 char bits,
                                   // async mode, idle-line protocol
	SciaRegs.SCICTL1.all =0x0003;  // enable TX, RX, internal SCICLK,
                                   // Disable RX ERR, SLEEP, TXWAKE
	SciaRegs.SCIPRI.bit.FREE = 1;

	SciaRegs.SCICTL2.bit.TXINTENA =1;
	SciaRegs.SCICTL2.bit.RXBKINTENA =1;

	SciaRegs.SCIHBAUD    =0x0001;  // 9600 baud @LSPCLK = 22.5MHz (90 MHz SYSCLK).
    SciaRegs.SCILBAUD    =0x0024;

    SciaRegs.SCIFFTX.all=0xC020;
    SciaRegs.SCIFFRX.all=0x0021;
    SciaRegs.SCIFFCT.all=0x00;

    SciaRegs.SCICTL1.all =0x0023;//0x0023;     // Relinquish SCI from Reset
    SciaRegs.SCIFFTX.bit.TXFIFOXRESET=1;
    SciaRegs.SCIFFRX.bit.RXFIFORESET=1;
}

// Transmit a character from the SCI
void scia_xmit(int a)
{
    while (SciaRegs.SCIFFTX.bit.TXFFST != 0) {}
    SciaRegs.SCITXBUF=a;
}

__interrupt void sciaRxFifoIsr(void)
{
    // Get character
    g_ReceivedChar = SciaRegs.SCIRXBUF.all;
    g_newChar++;

    SciaRegs.SCIFFRX.bit.RXFFOVRCLR=1;   // Clear Overflow flag
    SciaRegs.SCIFFRX.bit.RXFFINTCLR=1;   // Clear Interrupt flag

    PieCtrlRegs.PIEACK.all|=0x100;       // Issue PIE ack
}
