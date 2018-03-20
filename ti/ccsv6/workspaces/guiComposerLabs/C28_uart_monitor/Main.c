#include "UART_Comm.h"
#include "Serial_Cmd_Monitor.h"

// Global counts used in this example
Uint16 LoopCount;
Uint16 ErrorCount;
Uint16 testArray[32];

void MainTask(); //execute your business logic here

void main(void)
{
	// Step 1. Initialize System Control:
	// PLL, WatchDog, enable Peripheral Clocks
	// This example function is found in the F2806x_SysCtrl.c file.
	InitSysCtrl();

	// Step 2. Initalize GPIO:
	// This example function is found in the F2806x_Gpio.c file and
	// illustrates how to set the GPIO to its default state.
	// InitGpio(); Skipped for this example

	// For this example, only init the pins for the SCI-A port.
	// This function is found in the F2806x_Sci.c file.
	InitSciaGpio();

	// Step 3. Clear all interrupts and initialize PIE vector table:
	// Disable CPU interrupts
	DINT;

	// Initialize PIE control registers to their default state.
	// The default state is all PIE interrupts disabled and flags
	// are cleared.
	// This function is found in the F2806x_PieCtrl.c file.
	InitPieCtrl();

	// Disable CPU interrupts and clear all CPU interrupt flags:
	IER = 0x0000;
	IFR = 0x0000;

	// Initialize the PIE vector table with pointers to the shell Interrupt
	// Service Routines (ISR).
	// This will populate the entire table, even if the interrupt
	// is not used in this example.  This is useful for debug purposes.
	// The shell ISR routines are found in F2806x_DefaultIsr.c.
	// This function is found in F2806x_PieVect.c.
	InitPieVectTable();

	setup_scia_interrupt();

	// Step 4. Initialize all the Device Peripherals:
	// This function is found in F2806x_InitPeripherals.c
	// InitPeripherals(); // Not required for this example

	// Step 5. User specific code:

	LoopCount = 0;
	ErrorCount = 0;

	scia_echoback_init();  // Initalize SCI for echoback
	ClearBufferRelatedParam();
	// Enable interrupts required for this example
	PieCtrlRegs.PIEIER9.bit.INTx1=1;     // PIE Group 9, INT1
	//   PieCtrlRegs.PIEIER9.bit.INTx2=1;     // PIE Group 9, INT2
	IER = 0x100; // Enable CPU INT
	EINT;

	for(;;)
	{
		if( getNewCharCount() )
		{
			receivedDataCommand(getReceivedChar());
			LoopCount++;
		}

		MainTask();

	}

}

void MainTask()
{
	ErrorCount++;
}
