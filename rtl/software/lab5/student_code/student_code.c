/*
 * student_code.c
 *
 *  Created on: Mar 7, 2017
 *      Author: user
 */

#include <system.h>
#include <io.h>
#include "sys/alt_irq.h"
#include "student_code.h"
#include "altera_avalon_pio_regs.h"

#ifdef ALT_ENHANCED_INTERRUPT_API_PRESENT
void handle_lfsr_interrupts(void* context)
#else
void handle_lfsr_interrupts(void* context, alt_u32 id)
#endif
{
	#ifdef LFSR_VAL_BASE
	#ifdef LFSR_CLK_INTERRUPT_GEN_BASE
	#ifdef DDS_INCREMENT_BASE

	volatile int LFSR; // variable value can be changed any time

	// (a) Read the LFSR value and check bit 0.
	LFSR = IORD_ALTERA_AVALON_PIO_DATA(LFSR_VAL_BASE);

	//printf("Done A");

	// (b) Set the frequency
	if (LFSR)
		IOWR_ALTERA_AVALON_PIO_DATA(DDS_INCREMENT_BASE, 430);
	else
		IOWR_ALTERA_AVALON_PIO_DATA(DDS_INCREMENT_BASE, 86);

	//printf("Done B");

	// (c) Reset the edge capture mechanism
	IOWR_ALTERA_AVALON_PIO_EDGE_CAP(LFSR_CLK_INTERRUPT_GEN_BASE, 0);
	IORD_ALTERA_AVALON_PIO_EDGE_CAP(LFSR_CLK_INTERRUPT_GEN_BASE);

	//printf("Done C");

	#endif
	#endif
	#endif
}

/* Initialize the button_pio. */

void init_lfsr_interrupt()
{
	#ifdef LFSR_VAL_BASE
	#ifdef LFSR_CLK_INTERRUPT_GEN_BASE
	#ifdef DDS_INCREMENT_BASE
	
	/* Enable interrupts */
	IOWR_ALTERA_AVALON_PIO_IRQ_MASK(LFSR_CLK_INTERRUPT_GEN_BASE, 0x1);
	/* Reset the edge capture register. */
	IOWR_ALTERA_AVALON_PIO_EDGE_CAP(LFSR_CLK_INTERRUPT_GEN_BASE, 0x0);
	/* Register the interrupt handler. */
#ifdef ALT_ENHANCED_INTERRUPT_API_PRESENT
	alt_ic_isr_register(LFSR_CLK_INTERRUPT_GEN_IRQ_INTERRUPT_CONTROLLER_ID, LFSR_CLK_INTERRUPT_GEN_IRQ, handle_lfsr_interrupts, 0x0, 0x0);
#else
	alt_irq_register( LFSR_CLK_INTERRUPT_GEN_IRQ, NULL,	handle_button_interrupts);
#endif
	
	#endif
	#endif
	#endif
}

