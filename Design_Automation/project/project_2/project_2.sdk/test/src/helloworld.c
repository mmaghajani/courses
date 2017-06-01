/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_types.h"
#include "xstatus.h"
#include "xil_io.h"
#define base 0x44A00000
#define myip_S00_AXI_SLV_REG0_OFFSET 0
#define myip_S00_AXI_SLV_REG1_OFFSET 4
#define myip_S00_AXI_SLV_REG2_OFFSET 8
#define myip_S00_AXI_SLV_REG3_OFFSET 12
#define myip_S00_AXI_SLV_REG4_OFFSET 16

#define myip_mWriteReg(BaseAddress, RegOffset, Data) \
  	Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define myip_mReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))


void print(char *str);

int main()
{
    init_platform();
    myip_mWriteReg (base,myip_S00_AXI_SLV_REG0_OFFSET,0x00000001);
        myip_mWriteReg (base,myip_S00_AXI_SLV_REG1_OFFSET,0x00000002);
        myip_mReadReg (base,myip_S00_AXI_SLV_REG2_OFFSET);
        myip_mReadReg (base,myip_S00_AXI_SLV_REG3_OFFSET);
        myip_mReadReg (base,myip_S00_AXI_SLV_REG4_OFFSET);
        myip_mWriteReg (base,myip_S00_AXI_SLV_REG0_OFFSET,0x00000125);
                myip_mWriteReg (base,myip_S00_AXI_SLV_REG1_OFFSET,0x00007853);
                myip_mReadReg (base,myip_S00_AXI_SLV_REG2_OFFSET);
                myip_mReadReg (base,myip_S00_AXI_SLV_REG3_OFFSET);
                myip_mReadReg (base,myip_S00_AXI_SLV_REG4_OFFSET);

                myip_mWriteReg (base,myip_S00_AXI_SLV_REG0_OFFSET,0x00078365);
                        myip_mWriteReg (base,myip_S00_AXI_SLV_REG1_OFFSET,0x00000127);
                        myip_mReadReg (base,myip_S00_AXI_SLV_REG2_OFFSET);
                        myip_mReadReg (base,myip_S00_AXI_SLV_REG3_OFFSET);
                        myip_mReadReg (base,myip_S00_AXI_SLV_REG4_OFFSET);

                        myip_mWriteReg (base,myip_S00_AXI_SLV_REG0_OFFSET,0x00635498);
                                myip_mWriteReg (base,myip_S00_AXI_SLV_REG1_OFFSET,0x00000965);
                                myip_mReadReg (base,myip_S00_AXI_SLV_REG2_OFFSET);
                                myip_mReadReg (base,myip_S00_AXI_SLV_REG3_OFFSET);
                                myip_mReadReg (base,myip_S00_AXI_SLV_REG4_OFFSET);

                                myip_mWriteReg (base,myip_S00_AXI_SLV_REG0_OFFSET,0x00785643);
                                        myip_mWriteReg (base,myip_S00_AXI_SLV_REG1_OFFSET,0x00089652);
                                        myip_mReadReg (base,myip_S00_AXI_SLV_REG2_OFFSET);
                                        myip_mReadReg (base,myip_S00_AXI_SLV_REG3_OFFSET);
                                        myip_mReadReg (base,myip_S00_AXI_SLV_REG4_OFFSET);

                                        myip_mWriteReg (base,myip_S00_AXI_SLV_REG0_OFFSET,0x08523654);
                                                myip_mWriteReg (base,myip_S00_AXI_SLV_REG1_OFFSET,0x00008521);
                                                myip_mReadReg (base,myip_S00_AXI_SLV_REG2_OFFSET);
                                                myip_mReadReg (base,myip_S00_AXI_SLV_REG3_OFFSET);
                                                myip_mReadReg (base,myip_S00_AXI_SLV_REG4_OFFSET);

                                                myip_mWriteReg (base,myip_S00_AXI_SLV_REG0_OFFSET,0x08965412);
                                                        myip_mWriteReg (base,myip_S00_AXI_SLV_REG1_OFFSET,0x08965432);
                                                        myip_mReadReg (base,myip_S00_AXI_SLV_REG2_OFFSET);
                                                        myip_mReadReg (base,myip_S00_AXI_SLV_REG3_OFFSET);
                                                        myip_mReadReg (base,myip_S00_AXI_SLV_REG4_OFFSET);

                                                        myip_mWriteReg (base,myip_S00_AXI_SLV_REG0_OFFSET,0x00006543);
                                                                myip_mWriteReg (base,myip_S00_AXI_SLV_REG1_OFFSET,0x00653248);
                                                                myip_mReadReg (base,myip_S00_AXI_SLV_REG2_OFFSET);
                                                                myip_mReadReg (base,myip_S00_AXI_SLV_REG3_OFFSET);
                                                                myip_mReadReg (base,myip_S00_AXI_SLV_REG4_OFFSET);

                                                                myip_mWriteReg (base,myip_S00_AXI_SLV_REG0_OFFSET,0x08523697);
                                                                        myip_mWriteReg (base,myip_S00_AXI_SLV_REG1_OFFSET,0x08543267);
                                                                        myip_mReadReg (base,myip_S00_AXI_SLV_REG2_OFFSET);
                                                                        myip_mReadReg (base,myip_S00_AXI_SLV_REG3_OFFSET);
                                                                        myip_mReadReg (base,myip_S00_AXI_SLV_REG4_OFFSET);

                                                                        myip_mWriteReg (base,myip_S00_AXI_SLV_REG0_OFFSET,0x74563258);
                                                                                myip_mWriteReg (base,myip_S00_AXI_SLV_REG1_OFFSET,0x78536965);
                                                                                myip_mReadReg (base,myip_S00_AXI_SLV_REG2_OFFSET);
                                                                                myip_mReadReg (base,myip_S00_AXI_SLV_REG3_OFFSET);
                                                                                myip_mReadReg (base,myip_S00_AXI_SLV_REG4_OFFSET);
    //print("Hello World\n\r");

    cleanup_platform();
    return 0;
}