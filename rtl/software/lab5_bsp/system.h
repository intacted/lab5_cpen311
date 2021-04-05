/*
 * system.h - SOPC Builder system and BSP software package information
 *
 * Machine generated for CPU 'cpu' in SOPC Builder design 'DE1_SoC_QSYS'
 * SOPC Builder design path: ../../DE1_SoC_QSYS.sopcinfo
 *
 * Generated: Mon Apr 05 00:50:37 PDT 2021
 */

/*
 * DO NOT MODIFY THIS FILE
 *
 * Changing this file will have subtle consequences
 * which will almost certainly lead to a nonfunctioning
 * system. If you do modify this file, be aware that your
 * changes will be overwritten and lost when this file
 * is generated again.
 *
 * DO NOT MODIFY THIS FILE
 */

/*
 * License Agreement
 *
 * Copyright (c) 2008
 * Altera Corporation, San Jose, California, USA.
 * All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * This agreement shall be governed in all respects by the laws of the State
 * of California and by the laws of the United States of America.
 */

#ifndef __SYSTEM_H_
#define __SYSTEM_H_

/* Include definitions from linker script generator */
#include "linker.h"


/*
 * CPU configuration
 *
 */

#define ALT_CPU_ARCHITECTURE "altera_nios2_qsys"
#define ALT_CPU_BIG_ENDIAN 0
#define ALT_CPU_BREAK_ADDR 0x08000820
#define ALT_CPU_CPU_FREQ 50000000u
#define ALT_CPU_CPU_ID_SIZE 1
#define ALT_CPU_CPU_ID_VALUE 0x00000000
#define ALT_CPU_CPU_IMPLEMENTATION "fast"
#define ALT_CPU_DATA_ADDR_WIDTH 0x1c
#define ALT_CPU_DCACHE_LINE_SIZE 32
#define ALT_CPU_DCACHE_LINE_SIZE_LOG2 5
#define ALT_CPU_DCACHE_SIZE 2048
#define ALT_CPU_EXCEPTION_ADDR 0x0457e420
#define ALT_CPU_FLUSHDA_SUPPORTED
#define ALT_CPU_FREQ 50000000
#define ALT_CPU_HARDWARE_DIVIDE_PRESENT 0
#define ALT_CPU_HARDWARE_MULTIPLY_PRESENT 1
#define ALT_CPU_HARDWARE_MULX_PRESENT 0
#define ALT_CPU_HAS_DEBUG_CORE 1
#define ALT_CPU_HAS_DEBUG_STUB
#define ALT_CPU_HAS_JMPI_INSTRUCTION
#define ALT_CPU_ICACHE_LINE_SIZE 32
#define ALT_CPU_ICACHE_LINE_SIZE_LOG2 5
#define ALT_CPU_ICACHE_SIZE 4096
#define ALT_CPU_INITDA_SUPPORTED
#define ALT_CPU_INST_ADDR_WIDTH 0x1c
#define ALT_CPU_NAME "cpu"
#define ALT_CPU_NUM_OF_SHADOW_REG_SETS 0
#define ALT_CPU_RESET_ADDR 0x04000000


/*
 * CPU configuration (with legacy prefix - don't use these anymore)
 *
 */

#define NIOS2_BIG_ENDIAN 0
#define NIOS2_BREAK_ADDR 0x08000820
#define NIOS2_CPU_FREQ 50000000u
#define NIOS2_CPU_ID_SIZE 1
#define NIOS2_CPU_ID_VALUE 0x00000000
#define NIOS2_CPU_IMPLEMENTATION "fast"
#define NIOS2_DATA_ADDR_WIDTH 0x1c
#define NIOS2_DCACHE_LINE_SIZE 32
#define NIOS2_DCACHE_LINE_SIZE_LOG2 5
#define NIOS2_DCACHE_SIZE 2048
#define NIOS2_EXCEPTION_ADDR 0x0457e420
#define NIOS2_FLUSHDA_SUPPORTED
#define NIOS2_HARDWARE_DIVIDE_PRESENT 0
#define NIOS2_HARDWARE_MULTIPLY_PRESENT 1
#define NIOS2_HARDWARE_MULX_PRESENT 0
#define NIOS2_HAS_DEBUG_CORE 1
#define NIOS2_HAS_DEBUG_STUB
#define NIOS2_HAS_JMPI_INSTRUCTION
#define NIOS2_ICACHE_LINE_SIZE 32
#define NIOS2_ICACHE_LINE_SIZE_LOG2 5
#define NIOS2_ICACHE_SIZE 4096
#define NIOS2_INITDA_SUPPORTED
#define NIOS2_INST_ADDR_WIDTH 0x1c
#define NIOS2_NUM_OF_SHADOW_REG_SETS 0
#define NIOS2_RESET_ADDR 0x04000000


/*
 * Define for each module class mastered by the CPU
 *
 */

#define __ALTERA_AVALON_JTAG_UART
#define __ALTERA_AVALON_NEW_SDRAM_CONTROLLER
#define __ALTERA_AVALON_PIO
#define __ALTERA_AVALON_SYSID_QSYS
#define __ALTERA_AVALON_TIMER
#define __ALTERA_NIOS2_QSYS
#define __ALT_VIP_VFR


/*
 * System configuration
 *
 */

#define ALT_DEVICE_FAMILY "Cyclone V"
#define ALT_ENHANCED_INTERRUPT_API_PRESENT
#define ALT_IRQ_BASE NULL
#define ALT_LOG_PORT "/dev/null"
#define ALT_LOG_PORT_BASE 0x0
#define ALT_LOG_PORT_DEV null
#define ALT_LOG_PORT_TYPE ""
#define ALT_NUM_EXTERNAL_INTERRUPT_CONTROLLERS 0
#define ALT_NUM_INTERNAL_INTERRUPT_CONTROLLERS 1
#define ALT_NUM_INTERRUPT_CONTROLLERS 1
#define ALT_STDERR "/dev/jtag_uart"
#define ALT_STDERR_BASE 0x80011d8
#define ALT_STDERR_DEV jtag_uart
#define ALT_STDERR_IS_JTAG_UART
#define ALT_STDERR_PRESENT
#define ALT_STDERR_TYPE "altera_avalon_jtag_uart"
#define ALT_STDIN "/dev/jtag_uart"
#define ALT_STDIN_BASE 0x80011d8
#define ALT_STDIN_DEV jtag_uart
#define ALT_STDIN_IS_JTAG_UART
#define ALT_STDIN_PRESENT
#define ALT_STDIN_TYPE "altera_avalon_jtag_uart"
#define ALT_STDOUT "/dev/jtag_uart"
#define ALT_STDOUT_BASE 0x80011d8
#define ALT_STDOUT_DEV jtag_uart
#define ALT_STDOUT_IS_JTAG_UART
#define ALT_STDOUT_PRESENT
#define ALT_STDOUT_TYPE "altera_avalon_jtag_uart"
#define ALT_SYSTEM_NAME "DE1_SoC_QSYS"


/*
 * audio_DATA_FREGEN configuration
 *
 */

#define ALT_MODULE_CLASS_audio_DATA_FREGEN altera_avalon_pio
#define AUDIO_DATA_FREGEN_BASE 0x80011c0
#define AUDIO_DATA_FREGEN_BIT_CLEARING_EDGE_REGISTER 0
#define AUDIO_DATA_FREGEN_BIT_MODIFYING_OUTPUT_REGISTER 0
#define AUDIO_DATA_FREGEN_CAPTURE 0
#define AUDIO_DATA_FREGEN_DATA_WIDTH 32
#define AUDIO_DATA_FREGEN_DO_TEST_BENCH_WIRING 0
#define AUDIO_DATA_FREGEN_DRIVEN_SIM_VALUE 0
#define AUDIO_DATA_FREGEN_EDGE_TYPE "NONE"
#define AUDIO_DATA_FREGEN_FREQ 142857142
#define AUDIO_DATA_FREGEN_HAS_IN 0
#define AUDIO_DATA_FREGEN_HAS_OUT 1
#define AUDIO_DATA_FREGEN_HAS_TRI 0
#define AUDIO_DATA_FREGEN_IRQ -1
#define AUDIO_DATA_FREGEN_IRQ_INTERRUPT_CONTROLLER_ID -1
#define AUDIO_DATA_FREGEN_IRQ_TYPE "NONE"
#define AUDIO_DATA_FREGEN_NAME "/dev/audio_DATA_FREGEN"
#define AUDIO_DATA_FREGEN_RESET_VALUE 0
#define AUDIO_DATA_FREGEN_SPAN 16
#define AUDIO_DATA_FREGEN_TYPE "altera_avalon_pio"


/*
 * audio_EMPTY configuration
 *
 */

#define ALT_MODULE_CLASS_audio_EMPTY altera_avalon_pio
#define AUDIO_EMPTY_BASE 0x80011b0
#define AUDIO_EMPTY_BIT_CLEARING_EDGE_REGISTER 0
#define AUDIO_EMPTY_BIT_MODIFYING_OUTPUT_REGISTER 0
#define AUDIO_EMPTY_CAPTURE 0
#define AUDIO_EMPTY_DATA_WIDTH 1
#define AUDIO_EMPTY_DO_TEST_BENCH_WIRING 0
#define AUDIO_EMPTY_DRIVEN_SIM_VALUE 0
#define AUDIO_EMPTY_EDGE_TYPE "NONE"
#define AUDIO_EMPTY_FREQ 142857142
#define AUDIO_EMPTY_HAS_IN 1
#define AUDIO_EMPTY_HAS_OUT 0
#define AUDIO_EMPTY_HAS_TRI 0
#define AUDIO_EMPTY_IRQ -1
#define AUDIO_EMPTY_IRQ_INTERRUPT_CONTROLLER_ID -1
#define AUDIO_EMPTY_IRQ_TYPE "NONE"
#define AUDIO_EMPTY_NAME "/dev/audio_EMPTY"
#define AUDIO_EMPTY_RESET_VALUE 0
#define AUDIO_EMPTY_SPAN 16
#define AUDIO_EMPTY_TYPE "altera_avalon_pio"


/*
 * audio_FIFO_FULL configuration
 *
 */

#define ALT_MODULE_CLASS_audio_FIFO_FULL altera_avalon_pio
#define AUDIO_FIFO_FULL_BASE 0x80011a0
#define AUDIO_FIFO_FULL_BIT_CLEARING_EDGE_REGISTER 0
#define AUDIO_FIFO_FULL_BIT_MODIFYING_OUTPUT_REGISTER 0
#define AUDIO_FIFO_FULL_CAPTURE 0
#define AUDIO_FIFO_FULL_DATA_WIDTH 1
#define AUDIO_FIFO_FULL_DO_TEST_BENCH_WIRING 0
#define AUDIO_FIFO_FULL_DRIVEN_SIM_VALUE 0
#define AUDIO_FIFO_FULL_EDGE_TYPE "NONE"
#define AUDIO_FIFO_FULL_FREQ 142857142
#define AUDIO_FIFO_FULL_HAS_IN 1
#define AUDIO_FIFO_FULL_HAS_OUT 0
#define AUDIO_FIFO_FULL_HAS_TRI 0
#define AUDIO_FIFO_FULL_IRQ -1
#define AUDIO_FIFO_FULL_IRQ_INTERRUPT_CONTROLLER_ID -1
#define AUDIO_FIFO_FULL_IRQ_TYPE "NONE"
#define AUDIO_FIFO_FULL_NAME "/dev/audio_FIFO_FULL"
#define AUDIO_FIFO_FULL_RESET_VALUE 0
#define AUDIO_FIFO_FULL_SPAN 16
#define AUDIO_FIFO_FULL_TYPE "altera_avalon_pio"


/*
 * audio_OUT_DATA_AUDIO configuration
 *
 */

#define ALT_MODULE_CLASS_audio_OUT_DATA_AUDIO altera_avalon_pio
#define AUDIO_OUT_DATA_AUDIO_BASE 0x8001180
#define AUDIO_OUT_DATA_AUDIO_BIT_CLEARING_EDGE_REGISTER 0
#define AUDIO_OUT_DATA_AUDIO_BIT_MODIFYING_OUTPUT_REGISTER 0
#define AUDIO_OUT_DATA_AUDIO_CAPTURE 0
#define AUDIO_OUT_DATA_AUDIO_DATA_WIDTH 32
#define AUDIO_OUT_DATA_AUDIO_DO_TEST_BENCH_WIRING 0
#define AUDIO_OUT_DATA_AUDIO_DRIVEN_SIM_VALUE 0
#define AUDIO_OUT_DATA_AUDIO_EDGE_TYPE "NONE"
#define AUDIO_OUT_DATA_AUDIO_FREQ 142857142
#define AUDIO_OUT_DATA_AUDIO_HAS_IN 0
#define AUDIO_OUT_DATA_AUDIO_HAS_OUT 1
#define AUDIO_OUT_DATA_AUDIO_HAS_TRI 0
#define AUDIO_OUT_DATA_AUDIO_IRQ -1
#define AUDIO_OUT_DATA_AUDIO_IRQ_INTERRUPT_CONTROLLER_ID -1
#define AUDIO_OUT_DATA_AUDIO_IRQ_TYPE "NONE"
#define AUDIO_OUT_DATA_AUDIO_NAME "/dev/audio_OUT_DATA_AUDIO"
#define AUDIO_OUT_DATA_AUDIO_RESET_VALUE 0
#define AUDIO_OUT_DATA_AUDIO_SPAN 16
#define AUDIO_OUT_DATA_AUDIO_TYPE "altera_avalon_pio"


/*
 * audio_OUT_PAUSE configuration
 *
 */

#define ALT_MODULE_CLASS_audio_OUT_PAUSE altera_avalon_pio
#define AUDIO_OUT_PAUSE_BASE 0x8001170
#define AUDIO_OUT_PAUSE_BIT_CLEARING_EDGE_REGISTER 0
#define AUDIO_OUT_PAUSE_BIT_MODIFYING_OUTPUT_REGISTER 0
#define AUDIO_OUT_PAUSE_CAPTURE 0
#define AUDIO_OUT_PAUSE_DATA_WIDTH 1
#define AUDIO_OUT_PAUSE_DO_TEST_BENCH_WIRING 0
#define AUDIO_OUT_PAUSE_DRIVEN_SIM_VALUE 0
#define AUDIO_OUT_PAUSE_EDGE_TYPE "NONE"
#define AUDIO_OUT_PAUSE_FREQ 142857142
#define AUDIO_OUT_PAUSE_HAS_IN 0
#define AUDIO_OUT_PAUSE_HAS_OUT 1
#define AUDIO_OUT_PAUSE_HAS_TRI 0
#define AUDIO_OUT_PAUSE_IRQ -1
#define AUDIO_OUT_PAUSE_IRQ_INTERRUPT_CONTROLLER_ID -1
#define AUDIO_OUT_PAUSE_IRQ_TYPE "NONE"
#define AUDIO_OUT_PAUSE_NAME "/dev/audio_OUT_PAUSE"
#define AUDIO_OUT_PAUSE_RESET_VALUE 0
#define AUDIO_OUT_PAUSE_SPAN 16
#define AUDIO_OUT_PAUSE_TYPE "altera_avalon_pio"


/*
 * audio_OUT_STOP configuration
 *
 */

#define ALT_MODULE_CLASS_audio_OUT_STOP altera_avalon_pio
#define AUDIO_OUT_STOP_BASE 0x8001160
#define AUDIO_OUT_STOP_BIT_CLEARING_EDGE_REGISTER 0
#define AUDIO_OUT_STOP_BIT_MODIFYING_OUTPUT_REGISTER 0
#define AUDIO_OUT_STOP_CAPTURE 0
#define AUDIO_OUT_STOP_DATA_WIDTH 1
#define AUDIO_OUT_STOP_DO_TEST_BENCH_WIRING 0
#define AUDIO_OUT_STOP_DRIVEN_SIM_VALUE 0
#define AUDIO_OUT_STOP_EDGE_TYPE "NONE"
#define AUDIO_OUT_STOP_FREQ 142857142
#define AUDIO_OUT_STOP_HAS_IN 0
#define AUDIO_OUT_STOP_HAS_OUT 1
#define AUDIO_OUT_STOP_HAS_TRI 0
#define AUDIO_OUT_STOP_IRQ -1
#define AUDIO_OUT_STOP_IRQ_INTERRUPT_CONTROLLER_ID -1
#define AUDIO_OUT_STOP_IRQ_TYPE "NONE"
#define AUDIO_OUT_STOP_NAME "/dev/audio_OUT_STOP"
#define AUDIO_OUT_STOP_RESET_VALUE 0
#define AUDIO_OUT_STOP_SPAN 16
#define AUDIO_OUT_STOP_TYPE "altera_avalon_pio"


/*
 * audio_WRCLK configuration
 *
 */

#define ALT_MODULE_CLASS_audio_WRCLK altera_avalon_pio
#define AUDIO_WRCLK_BASE 0x80010b0
#define AUDIO_WRCLK_BIT_CLEARING_EDGE_REGISTER 0
#define AUDIO_WRCLK_BIT_MODIFYING_OUTPUT_REGISTER 0
#define AUDIO_WRCLK_CAPTURE 0
#define AUDIO_WRCLK_DATA_WIDTH 1
#define AUDIO_WRCLK_DO_TEST_BENCH_WIRING 0
#define AUDIO_WRCLK_DRIVEN_SIM_VALUE 0
#define AUDIO_WRCLK_EDGE_TYPE "NONE"
#define AUDIO_WRCLK_FREQ 142857142
#define AUDIO_WRCLK_HAS_IN 0
#define AUDIO_WRCLK_HAS_OUT 1
#define AUDIO_WRCLK_HAS_TRI 0
#define AUDIO_WRCLK_IRQ -1
#define AUDIO_WRCLK_IRQ_INTERRUPT_CONTROLLER_ID -1
#define AUDIO_WRCLK_IRQ_TYPE "NONE"
#define AUDIO_WRCLK_NAME "/dev/audio_WRCLK"
#define AUDIO_WRCLK_RESET_VALUE 0
#define AUDIO_WRCLK_SPAN 16
#define AUDIO_WRCLK_TYPE "altera_avalon_pio"


/*
 * audio_WRREQ configuration
 *
 */

#define ALT_MODULE_CLASS_audio_WRREQ altera_avalon_pio
#define AUDIO_WRREQ_BASE 0x80010a0
#define AUDIO_WRREQ_BIT_CLEARING_EDGE_REGISTER 0
#define AUDIO_WRREQ_BIT_MODIFYING_OUTPUT_REGISTER 0
#define AUDIO_WRREQ_CAPTURE 0
#define AUDIO_WRREQ_DATA_WIDTH 1
#define AUDIO_WRREQ_DO_TEST_BENCH_WIRING 0
#define AUDIO_WRREQ_DRIVEN_SIM_VALUE 0
#define AUDIO_WRREQ_EDGE_TYPE "NONE"
#define AUDIO_WRREQ_FREQ 142857142
#define AUDIO_WRREQ_HAS_IN 0
#define AUDIO_WRREQ_HAS_OUT 1
#define AUDIO_WRREQ_HAS_TRI 0
#define AUDIO_WRREQ_IRQ -1
#define AUDIO_WRREQ_IRQ_INTERRUPT_CONTROLLER_ID -1
#define AUDIO_WRREQ_IRQ_TYPE "NONE"
#define AUDIO_WRREQ_NAME "/dev/audio_WRREQ"
#define AUDIO_WRREQ_RESET_VALUE 0
#define AUDIO_WRREQ_SPAN 16
#define AUDIO_WRREQ_TYPE "altera_avalon_pio"


/*
 * audio_fifo_used configuration
 *
 */

#define ALT_MODULE_CLASS_audio_fifo_used altera_avalon_pio
#define AUDIO_FIFO_USED_BASE 0x8001190
#define AUDIO_FIFO_USED_BIT_CLEARING_EDGE_REGISTER 0
#define AUDIO_FIFO_USED_BIT_MODIFYING_OUTPUT_REGISTER 0
#define AUDIO_FIFO_USED_CAPTURE 0
#define AUDIO_FIFO_USED_DATA_WIDTH 12
#define AUDIO_FIFO_USED_DO_TEST_BENCH_WIRING 0
#define AUDIO_FIFO_USED_DRIVEN_SIM_VALUE 0
#define AUDIO_FIFO_USED_EDGE_TYPE "NONE"
#define AUDIO_FIFO_USED_FREQ 142857142
#define AUDIO_FIFO_USED_HAS_IN 1
#define AUDIO_FIFO_USED_HAS_OUT 0
#define AUDIO_FIFO_USED_HAS_TRI 0
#define AUDIO_FIFO_USED_IRQ -1
#define AUDIO_FIFO_USED_IRQ_INTERRUPT_CONTROLLER_ID -1
#define AUDIO_FIFO_USED_IRQ_TYPE "NONE"
#define AUDIO_FIFO_USED_NAME "/dev/audio_fifo_used"
#define AUDIO_FIFO_USED_RESET_VALUE 0
#define AUDIO_FIFO_USED_SPAN 16
#define AUDIO_FIFO_USED_TYPE "altera_avalon_pio"


/*
 * audio_sel configuration
 *
 */

#define ALT_MODULE_CLASS_audio_sel altera_avalon_pio
#define AUDIO_SEL_BASE 0x80010f0
#define AUDIO_SEL_BIT_CLEARING_EDGE_REGISTER 0
#define AUDIO_SEL_BIT_MODIFYING_OUTPUT_REGISTER 0
#define AUDIO_SEL_CAPTURE 0
#define AUDIO_SEL_DATA_WIDTH 1
#define AUDIO_SEL_DO_TEST_BENCH_WIRING 0
#define AUDIO_SEL_DRIVEN_SIM_VALUE 0
#define AUDIO_SEL_EDGE_TYPE "NONE"
#define AUDIO_SEL_FREQ 50000000
#define AUDIO_SEL_HAS_IN 0
#define AUDIO_SEL_HAS_OUT 1
#define AUDIO_SEL_HAS_TRI 0
#define AUDIO_SEL_IRQ -1
#define AUDIO_SEL_IRQ_INTERRUPT_CONTROLLER_ID -1
#define AUDIO_SEL_IRQ_TYPE "NONE"
#define AUDIO_SEL_NAME "/dev/audio_sel"
#define AUDIO_SEL_RESET_VALUE 0
#define AUDIO_SEL_SPAN 16
#define AUDIO_SEL_TYPE "altera_avalon_pio"


/*
 * dds_increment configuration
 *
 */

#define ALT_MODULE_CLASS_dds_increment altera_avalon_pio
#define DDS_INCREMENT_BASE 0x80010c0
#define DDS_INCREMENT_BIT_CLEARING_EDGE_REGISTER 0
#define DDS_INCREMENT_BIT_MODIFYING_OUTPUT_REGISTER 0
#define DDS_INCREMENT_CAPTURE 0
#define DDS_INCREMENT_DATA_WIDTH 32
#define DDS_INCREMENT_DO_TEST_BENCH_WIRING 0
#define DDS_INCREMENT_DRIVEN_SIM_VALUE 0
#define DDS_INCREMENT_EDGE_TYPE "NONE"
#define DDS_INCREMENT_FREQ 50000000
#define DDS_INCREMENT_HAS_IN 0
#define DDS_INCREMENT_HAS_OUT 1
#define DDS_INCREMENT_HAS_TRI 0
#define DDS_INCREMENT_IRQ -1
#define DDS_INCREMENT_IRQ_INTERRUPT_CONTROLLER_ID -1
#define DDS_INCREMENT_IRQ_TYPE "NONE"
#define DDS_INCREMENT_NAME "/dev/dds_increment"
#define DDS_INCREMENT_RESET_VALUE 0
#define DDS_INCREMENT_SPAN 16
#define DDS_INCREMENT_TYPE "altera_avalon_pio"


/*
 * div_freq configuration
 *
 */

#define ALT_MODULE_CLASS_div_freq altera_avalon_pio
#define DIV_FREQ_BASE 0x8001100
#define DIV_FREQ_BIT_CLEARING_EDGE_REGISTER 0
#define DIV_FREQ_BIT_MODIFYING_OUTPUT_REGISTER 0
#define DIV_FREQ_CAPTURE 0
#define DIV_FREQ_DATA_WIDTH 32
#define DIV_FREQ_DO_TEST_BENCH_WIRING 0
#define DIV_FREQ_DRIVEN_SIM_VALUE 0
#define DIV_FREQ_EDGE_TYPE "NONE"
#define DIV_FREQ_FREQ 50000000
#define DIV_FREQ_HAS_IN 0
#define DIV_FREQ_HAS_OUT 1
#define DIV_FREQ_HAS_TRI 0
#define DIV_FREQ_IRQ -1
#define DIV_FREQ_IRQ_INTERRUPT_CONTROLLER_ID -1
#define DIV_FREQ_IRQ_TYPE "NONE"
#define DIV_FREQ_NAME "/dev/div_freq"
#define DIV_FREQ_RESET_VALUE 0
#define DIV_FREQ_SPAN 16
#define DIV_FREQ_TYPE "altera_avalon_pio"


/*
 * hal configuration
 *
 */

#define ALT_MAX_FD 32
#define ALT_SYS_CLK TIMER
#define ALT_TIMESTAMP_CLK none


/*
 * jtag_uart configuration
 *
 */

#define ALT_MODULE_CLASS_jtag_uart altera_avalon_jtag_uart
#define JTAG_UART_BASE 0x80011d8
#define JTAG_UART_IRQ 1
#define JTAG_UART_IRQ_INTERRUPT_CONTROLLER_ID 0
#define JTAG_UART_NAME "/dev/jtag_uart"
#define JTAG_UART_READ_DEPTH 64
#define JTAG_UART_READ_THRESHOLD 8
#define JTAG_UART_SPAN 8
#define JTAG_UART_TYPE "altera_avalon_jtag_uart"
#define JTAG_UART_WRITE_DEPTH 64
#define JTAG_UART_WRITE_THRESHOLD 8


/*
 * key configuration
 *
 */

#define ALT_MODULE_CLASS_key altera_avalon_pio
#define KEY_BASE 0x8001150
#define KEY_BIT_CLEARING_EDGE_REGISTER 0
#define KEY_BIT_MODIFYING_OUTPUT_REGISTER 0
#define KEY_CAPTURE 1
#define KEY_DATA_WIDTH 4
#define KEY_DO_TEST_BENCH_WIRING 1
#define KEY_DRIVEN_SIM_VALUE 15
#define KEY_EDGE_TYPE "FALLING"
#define KEY_FREQ 50000000
#define KEY_HAS_IN 1
#define KEY_HAS_OUT 0
#define KEY_HAS_TRI 0
#define KEY_IRQ 3
#define KEY_IRQ_INTERRUPT_CONTROLLER_ID 0
#define KEY_IRQ_TYPE "EDGE"
#define KEY_NAME "/dev/key"
#define KEY_RESET_VALUE 0
#define KEY_SPAN 16
#define KEY_TYPE "altera_avalon_pio"


/*
 * keyboard_keys configuration
 *
 */

#define ALT_MODULE_CLASS_keyboard_keys altera_avalon_pio
#define KEYBOARD_KEYS_BASE 0x8001120
#define KEYBOARD_KEYS_BIT_CLEARING_EDGE_REGISTER 0
#define KEYBOARD_KEYS_BIT_MODIFYING_OUTPUT_REGISTER 0
#define KEYBOARD_KEYS_CAPTURE 0
#define KEYBOARD_KEYS_DATA_WIDTH 32
#define KEYBOARD_KEYS_DO_TEST_BENCH_WIRING 0
#define KEYBOARD_KEYS_DRIVEN_SIM_VALUE 0
#define KEYBOARD_KEYS_EDGE_TYPE "NONE"
#define KEYBOARD_KEYS_FREQ 25000000
#define KEYBOARD_KEYS_HAS_IN 1
#define KEYBOARD_KEYS_HAS_OUT 0
#define KEYBOARD_KEYS_HAS_TRI 0
#define KEYBOARD_KEYS_IRQ -1
#define KEYBOARD_KEYS_IRQ_INTERRUPT_CONTROLLER_ID -1
#define KEYBOARD_KEYS_IRQ_TYPE "NONE"
#define KEYBOARD_KEYS_NAME "/dev/keyboard_keys"
#define KEYBOARD_KEYS_RESET_VALUE 0
#define KEYBOARD_KEYS_SPAN 16
#define KEYBOARD_KEYS_TYPE "altera_avalon_pio"


/*
 * lfsr_clk_interrupt_gen configuration
 *
 */

#define ALT_MODULE_CLASS_lfsr_clk_interrupt_gen altera_avalon_pio
#define LFSR_CLK_INTERRUPT_GEN_BASE 0x80010e0
#define LFSR_CLK_INTERRUPT_GEN_BIT_CLEARING_EDGE_REGISTER 0
#define LFSR_CLK_INTERRUPT_GEN_BIT_MODIFYING_OUTPUT_REGISTER 0
#define LFSR_CLK_INTERRUPT_GEN_CAPTURE 1
#define LFSR_CLK_INTERRUPT_GEN_DATA_WIDTH 1
#define LFSR_CLK_INTERRUPT_GEN_DO_TEST_BENCH_WIRING 0
#define LFSR_CLK_INTERRUPT_GEN_DRIVEN_SIM_VALUE 0
#define LFSR_CLK_INTERRUPT_GEN_EDGE_TYPE "RISING"
#define LFSR_CLK_INTERRUPT_GEN_FREQ 50000000
#define LFSR_CLK_INTERRUPT_GEN_HAS_IN 1
#define LFSR_CLK_INTERRUPT_GEN_HAS_OUT 0
#define LFSR_CLK_INTERRUPT_GEN_HAS_TRI 0
#define LFSR_CLK_INTERRUPT_GEN_IRQ 4
#define LFSR_CLK_INTERRUPT_GEN_IRQ_INTERRUPT_CONTROLLER_ID 0
#define LFSR_CLK_INTERRUPT_GEN_IRQ_TYPE "EDGE"
#define LFSR_CLK_INTERRUPT_GEN_NAME "/dev/lfsr_clk_interrupt_gen"
#define LFSR_CLK_INTERRUPT_GEN_RESET_VALUE 0
#define LFSR_CLK_INTERRUPT_GEN_SPAN 16
#define LFSR_CLK_INTERRUPT_GEN_TYPE "altera_avalon_pio"


/*
 * lfsr_val configuration
 *
 */

#define ALT_MODULE_CLASS_lfsr_val altera_avalon_pio
#define LFSR_VAL_BASE 0x80010d0
#define LFSR_VAL_BIT_CLEARING_EDGE_REGISTER 0
#define LFSR_VAL_BIT_MODIFYING_OUTPUT_REGISTER 0
#define LFSR_VAL_CAPTURE 0
#define LFSR_VAL_DATA_WIDTH 32
#define LFSR_VAL_DO_TEST_BENCH_WIRING 0
#define LFSR_VAL_DRIVEN_SIM_VALUE 0
#define LFSR_VAL_EDGE_TYPE "NONE"
#define LFSR_VAL_FREQ 50000000
#define LFSR_VAL_HAS_IN 1
#define LFSR_VAL_HAS_OUT 0
#define LFSR_VAL_HAS_TRI 0
#define LFSR_VAL_IRQ -1
#define LFSR_VAL_IRQ_INTERRUPT_CONTROLLER_ID -1
#define LFSR_VAL_IRQ_TYPE "NONE"
#define LFSR_VAL_NAME "/dev/lfsr_val"
#define LFSR_VAL_RESET_VALUE 0
#define LFSR_VAL_SPAN 16
#define LFSR_VAL_TYPE "altera_avalon_pio"


/*
 * modulation_selector configuration
 *
 */

#define ALT_MODULE_CLASS_modulation_selector altera_avalon_pio
#define MODULATION_SELECTOR_BASE 0x8001130
#define MODULATION_SELECTOR_BIT_CLEARING_EDGE_REGISTER 0
#define MODULATION_SELECTOR_BIT_MODIFYING_OUTPUT_REGISTER 0
#define MODULATION_SELECTOR_CAPTURE 0
#define MODULATION_SELECTOR_DATA_WIDTH 4
#define MODULATION_SELECTOR_DO_TEST_BENCH_WIRING 0
#define MODULATION_SELECTOR_DRIVEN_SIM_VALUE 0
#define MODULATION_SELECTOR_EDGE_TYPE "NONE"
#define MODULATION_SELECTOR_FREQ 50000000
#define MODULATION_SELECTOR_HAS_IN 0
#define MODULATION_SELECTOR_HAS_OUT 1
#define MODULATION_SELECTOR_HAS_TRI 0
#define MODULATION_SELECTOR_IRQ -1
#define MODULATION_SELECTOR_IRQ_INTERRUPT_CONTROLLER_ID -1
#define MODULATION_SELECTOR_IRQ_TYPE "NONE"
#define MODULATION_SELECTOR_NAME "/dev/modulation_selector"
#define MODULATION_SELECTOR_RESET_VALUE 0
#define MODULATION_SELECTOR_SPAN 16
#define MODULATION_SELECTOR_TYPE "altera_avalon_pio"


/*
 * mouse_pos configuration
 *
 */

#define ALT_MODULE_CLASS_mouse_pos altera_avalon_pio
#define MOUSE_POS_BASE 0x8001110
#define MOUSE_POS_BIT_CLEARING_EDGE_REGISTER 0
#define MOUSE_POS_BIT_MODIFYING_OUTPUT_REGISTER 0
#define MOUSE_POS_CAPTURE 0
#define MOUSE_POS_DATA_WIDTH 32
#define MOUSE_POS_DO_TEST_BENCH_WIRING 0
#define MOUSE_POS_DRIVEN_SIM_VALUE 0
#define MOUSE_POS_EDGE_TYPE "NONE"
#define MOUSE_POS_FREQ 40000000
#define MOUSE_POS_HAS_IN 1
#define MOUSE_POS_HAS_OUT 0
#define MOUSE_POS_HAS_TRI 0
#define MOUSE_POS_IRQ -1
#define MOUSE_POS_IRQ_INTERRUPT_CONTROLLER_ID -1
#define MOUSE_POS_IRQ_TYPE "NONE"
#define MOUSE_POS_NAME "/dev/mouse_pos"
#define MOUSE_POS_RESET_VALUE 0
#define MOUSE_POS_SPAN 16
#define MOUSE_POS_TYPE "altera_avalon_pio"


/*
 * sdram configuration
 *
 */

#define ALT_MODULE_CLASS_sdram altera_avalon_new_sdram_controller
#define SDRAM_BASE 0x4000000
#define SDRAM_CAS_LATENCY 3
#define SDRAM_CONTENTS_INFO
#define SDRAM_INIT_NOP_DELAY 0.0
#define SDRAM_INIT_REFRESH_COMMANDS 2
#define SDRAM_IRQ -1
#define SDRAM_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SDRAM_IS_INITIALIZED 1
#define SDRAM_NAME "/dev/sdram"
#define SDRAM_POWERUP_DELAY 100.0
#define SDRAM_REFRESH_PERIOD 7.8125
#define SDRAM_REGISTER_DATA_IN 1
#define SDRAM_SDRAM_ADDR_WIDTH 0x19
#define SDRAM_SDRAM_BANK_WIDTH 2
#define SDRAM_SDRAM_COL_WIDTH 10
#define SDRAM_SDRAM_DATA_WIDTH 16
#define SDRAM_SDRAM_NUM_BANKS 4
#define SDRAM_SDRAM_NUM_CHIPSELECTS 1
#define SDRAM_SDRAM_ROW_WIDTH 13
#define SDRAM_SHARED_DATA 0
#define SDRAM_SIM_MODEL_BASE 1
#define SDRAM_SPAN 67108864
#define SDRAM_STARVATION_INDICATOR 0
#define SDRAM_TRISTATE_BRIDGE_SLAVE ""
#define SDRAM_TYPE "altera_avalon_new_sdram_controller"
#define SDRAM_T_AC 5.4
#define SDRAM_T_MRD 3
#define SDRAM_T_RCD 15.0
#define SDRAM_T_RFC 70.0
#define SDRAM_T_RP 15.0
#define SDRAM_T_WR 14.0


/*
 * signal_selector configuration
 *
 */

#define ALT_MODULE_CLASS_signal_selector altera_avalon_pio
#define SIGNAL_SELECTOR_BASE 0x8001140
#define SIGNAL_SELECTOR_BIT_CLEARING_EDGE_REGISTER 0
#define SIGNAL_SELECTOR_BIT_MODIFYING_OUTPUT_REGISTER 0
#define SIGNAL_SELECTOR_CAPTURE 0
#define SIGNAL_SELECTOR_DATA_WIDTH 8
#define SIGNAL_SELECTOR_DO_TEST_BENCH_WIRING 0
#define SIGNAL_SELECTOR_DRIVEN_SIM_VALUE 0
#define SIGNAL_SELECTOR_EDGE_TYPE "NONE"
#define SIGNAL_SELECTOR_FREQ 50000000
#define SIGNAL_SELECTOR_HAS_IN 0
#define SIGNAL_SELECTOR_HAS_OUT 1
#define SIGNAL_SELECTOR_HAS_TRI 0
#define SIGNAL_SELECTOR_IRQ -1
#define SIGNAL_SELECTOR_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SIGNAL_SELECTOR_IRQ_TYPE "NONE"
#define SIGNAL_SELECTOR_NAME "/dev/signal_selector"
#define SIGNAL_SELECTOR_RESET_VALUE 0
#define SIGNAL_SELECTOR_SPAN 16
#define SIGNAL_SELECTOR_TYPE "altera_avalon_pio"


/*
 * sysid_qsys configuration
 *
 */

#define ALT_MODULE_CLASS_sysid_qsys altera_avalon_sysid_qsys
#define SYSID_QSYS_BASE 0x80011d0
#define SYSID_QSYS_ID 0
#define SYSID_QSYS_IRQ -1
#define SYSID_QSYS_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SYSID_QSYS_NAME "/dev/sysid_qsys"
#define SYSID_QSYS_SPAN 8
#define SYSID_QSYS_TIMESTAMP 1617608513
#define SYSID_QSYS_TYPE "altera_avalon_sysid_qsys"


/*
 * timer configuration
 *
 */

#define ALT_MODULE_CLASS_timer altera_avalon_timer
#define TIMER_ALWAYS_RUN 0
#define TIMER_BASE 0x8001080
#define TIMER_COUNTER_SIZE 32
#define TIMER_FIXED_PERIOD 0
#define TIMER_FREQ 50000000
#define TIMER_IRQ 2
#define TIMER_IRQ_INTERRUPT_CONTROLLER_ID 0
#define TIMER_LOAD_VALUE 49999
#define TIMER_MULT 0.001
#define TIMER_NAME "/dev/timer"
#define TIMER_PERIOD 1
#define TIMER_PERIOD_UNITS "ms"
#define TIMER_RESET_OUTPUT 0
#define TIMER_SNAPSHOT 1
#define TIMER_SPAN 32
#define TIMER_TICKS_PER_SEC 1000
#define TIMER_TIMEOUT_PULSE_OUTPUT 0
#define TIMER_TYPE "altera_avalon_timer"


/*
 * ucosii configuration
 *
 */

#define OS_ARG_CHK_EN 1
#define OS_CPU_HOOKS_EN 1
#define OS_DEBUG_EN 1
#define OS_EVENT_NAME_SIZE 32
#define OS_FLAGS_NBITS 16
#define OS_FLAG_ACCEPT_EN 1
#define OS_FLAG_DEL_EN 1
#define OS_FLAG_EN 1
#define OS_FLAG_NAME_SIZE 32
#define OS_FLAG_QUERY_EN 1
#define OS_FLAG_WAIT_CLR_EN 1
#define OS_LOWEST_PRIO 20
#define OS_MAX_EVENTS 60
#define OS_MAX_FLAGS 20
#define OS_MAX_MEM_PART 60
#define OS_MAX_QS 20
#define OS_MAX_TASKS 10
#define OS_MBOX_ACCEPT_EN 1
#define OS_MBOX_DEL_EN 1
#define OS_MBOX_EN 1
#define OS_MBOX_POST_EN 1
#define OS_MBOX_POST_OPT_EN 1
#define OS_MBOX_QUERY_EN 1
#define OS_MEM_EN 1
#define OS_MEM_NAME_SIZE 32
#define OS_MEM_QUERY_EN 1
#define OS_MUTEX_ACCEPT_EN 1
#define OS_MUTEX_DEL_EN 1
#define OS_MUTEX_EN 1
#define OS_MUTEX_QUERY_EN 1
#define OS_Q_ACCEPT_EN 1
#define OS_Q_DEL_EN 1
#define OS_Q_EN 1
#define OS_Q_FLUSH_EN 1
#define OS_Q_POST_EN 1
#define OS_Q_POST_FRONT_EN 1
#define OS_Q_POST_OPT_EN 1
#define OS_Q_QUERY_EN 1
#define OS_SCHED_LOCK_EN 1
#define OS_SEM_ACCEPT_EN 1
#define OS_SEM_DEL_EN 1
#define OS_SEM_EN 1
#define OS_SEM_QUERY_EN 1
#define OS_SEM_SET_EN 1
#define OS_TASK_CHANGE_PRIO_EN 1
#define OS_TASK_CREATE_EN 1
#define OS_TASK_CREATE_EXT_EN 1
#define OS_TASK_DEL_EN 1
#define OS_TASK_IDLE_STK_SIZE 512
#define OS_TASK_NAME_SIZE 32
#define OS_TASK_PROFILE_EN 1
#define OS_TASK_QUERY_EN 1
#define OS_TASK_STAT_EN 1
#define OS_TASK_STAT_STK_CHK_EN 1
#define OS_TASK_STAT_STK_SIZE 512
#define OS_TASK_SUSPEND_EN 1
#define OS_TASK_SW_HOOK_EN 1
#define OS_TASK_TMR_PRIO 0
#define OS_TASK_TMR_STK_SIZE 512
#define OS_THREAD_SAFE_NEWLIB 1
#define OS_TICKS_PER_SEC TIMER_TICKS_PER_SEC
#define OS_TICK_STEP_EN 1
#define OS_TIME_DLY_HMSM_EN 1
#define OS_TIME_DLY_RESUME_EN 1
#define OS_TIME_GET_SET_EN 1
#define OS_TIME_TICK_HOOK_EN 1
#define OS_TMR_CFG_MAX 16
#define OS_TMR_CFG_NAME_SIZE 16
#define OS_TMR_CFG_TICKS_PER_SEC 10
#define OS_TMR_CFG_WHEEL_SIZE 2
#define OS_TMR_EN 0


/*
 * vga_alt_vip_vfr_0 configuration
 *
 */

#define ALT_MODULE_CLASS_vga_alt_vip_vfr_0 alt_vip_vfr
#define VGA_ALT_VIP_VFR_0_BASE 0x8001000
#define VGA_ALT_VIP_VFR_0_IRQ 0
#define VGA_ALT_VIP_VFR_0_IRQ_INTERRUPT_CONTROLLER_ID 0
#define VGA_ALT_VIP_VFR_0_NAME "/dev/vga_alt_vip_vfr_0"
#define VGA_ALT_VIP_VFR_0_SPAN 128
#define VGA_ALT_VIP_VFR_0_TYPE "alt_vip_vfr"

#endif /* __SYSTEM_H_ */
