//THIS IS COPIED FROM interupt_example.s

				.include	"address_map_arm.s"
				.include	"interrupt_ID.s"

/* ********************************************************************************
 * This program demonstrates use of interrupts with assembly language code. 
 * The program responds to interrupts from the pushbutton KEY port in the FPGA.
 *
 * The interrupt service routine for the pushbutton KEYs indicates which KEY has 
 * been pressed on the HEX0 display.
 ********************************************************************************/

				.section .vectors, "ax"

				B 			_start					// reset vector
				B 			SERVICE_UND				// undefined instruction vector
				B 			SERVICE_SVC				// software interrrupt vector
				B 			SERVICE_ABT_INST		// aborted prefetch vector
				B 			SERVICE_ABT_DATA		// aborted data vector
				.word 	0							// unused vector
				B 			SERVICE_IRQ				// IRQ interrupt vector
				B 			SERVICE_FIQ				// FIQ interrupt vector

				.text
				.global	_start
_start:		
				/* Set up stack pointers for IRQ and SVC processor modes */
				MOV		R1, #0b11010010					// interrupts masked, MODE = IRQ
				MSR		CPSR_c, R1							// change to IRQ mode
				LDR		SP, =A9_ONCHIP_END - 3			// set IRQ stack to top of A9 onchip memory
				/* Change to SVC (supervisor) mode with interrupts disabled */
				MOV		R1, #0b11010011					// interrupts masked, MODE = SVC
				MSR		CPSR, R1								// change to supervisor mode
				LDR		SP, =DDR_END - 3					// set SVC stack to top of DDR3 memory

				BL			CONFIG_GIC							// configure the ARM generic interrupt controller

				// write to the pushbutton KEY interrupt mask register
				LDR		R0, =KEY_BASE						// pushbutton KEY base address
				MOV		R1, #0xF								// set interrupt mask bits
				STR		R1, [R0, #0x8]						// interrupt mask register is (base + 8)

				// enable IRQ interrupts in the processor
				MOV		R0, #0b01010011					// IRQ unmasked, MODE = SVC
				MSR		CPSR_c, R0

				LDR		R0, =0xFFFEC600					//BASE ADDRESS OF TIMA
				LDR 	R3, =100000000					//10000000x1/200x10^6 = .5
				STR 	R3, [R0]						
				MOV		R1, #0b111						//SETTING ALL THAT STUFF TO 1
				STR		R1, [R0,#0x8]					//STORING IT TO ENABLE INTERUPT FROM TIMER
				
				LDR		R0, =0xFF201000
				MOV		R1, #0b11
				STR		R1, [R0,#0x8]		
				
				
IDLE:	
				LDR		R2, =CHAR_FLAG
				LDR		R3, [R2]
				CMP		R3, #1
				BEQ		IS_1
				B 		IDLE							// main program simply idles
				
	IS_1:	
				LDR		R1, =CHAR_BUFFER
				LDR		R0, [R1]
				/* from lecture slides ------------------------------------------*/
				LDR 	R1, =0xFF201000 					// JTAG UART base address
				LDR 	R2, [R1, #4] 						// read the JTAG UART control register
				LDR 	R3, =0xFFFF
				ANDS	 R2, R2, R3 						// check for write space
				BEQ 	IDLE 								// if no space, ignore the character
				STR 	R0, [R1] 							// send the character
				B		IDLE
		
PROC1:

				LDR		R9, =counter
				LDR 	R4, [R4]
				MOV 	R5, #0
				ADD 	R5, R5, #1
				STR 	R5, [R9]
				
				LDR		R8, =LEDR_BASE		//R5 = base address of led
				STR		R5, [R8]			//store data[0] into LED
				
				MOV 	R6, #0
				LDR		R7, =400000000
	ADDLOOP	:			
				ADD 	R6, R6, #1
				CMP 	R6, R7
				BNE		ADDLOOP
				B		PROC1
				

/* Define the exception service routines */

/*--- Undefined instructions --------------------------------------------------*/
SERVICE_UND:
    			B SERVICE_UND 
 
/*--- Software interrupts -----------------------------------------------------*/
SERVICE_SVC:			
    			B SERVICE_SVC 

/*--- Aborted data reads ------------------------------------------------------*/
SERVICE_ABT_DATA:
    			B SERVICE_ABT_DATA 

/*--- Aborted instruction fetch -----------------------------------------------*/
SERVICE_ABT_INST:
    			B SERVICE_ABT_INST 
 
/*--- IRQ ---------------------------------------------------------------------*/
SERVICE_IRQ:
    			PUSH		{R0-R7, LR}
				
				/* PART 2 INTERUPT FROM TIMA--------------------------------*/
				SUB sp, sp, #12
				STR R8, [sp, #8]			//SAVING REGISTERS SO WE CAN SAVE IN THE FIRST ONE
				STR R5, [sp, #4]
				STR R4, [sp, #0]	
				
				LDR 	R8, =0xFFFEC100 	//Interuprt controller's base addr
				LDR 	R5, [R8,#0xC]		//Determine source of interupt
				CMP		R5, #29
				BNE		NEXT
				
				MRS 	R8, SPSR
				MOV		R4, #0b11010011					// interrupts masked, MODE = SVC
				MSR		CPSR, R4						// change to supervisor mode
				
				LDR		R4, =CURRENT_PID
				LDR		R5, [R4]
				
				CMP 	R5, #0
				BNE		OTHER_PROGRAM
				BEQ		STACKSAVE1				// IF ITS ZERO, YOU GOTTA STORE ALL THAT R0-R15 TO PDARRAY[0]-PDARRAY- 17	
		IRQ1:
				MOV 	R4, #1
				LDR 	R5, =CURRENT_PID
				STR		R4, [R5]								//MAKING PID 1
				B		LOADREG1
				B		NEXT

	OTHER_PROGRAM:			
				CMP		R5, #1
				BEQ		STACKSAVE2
		IRQ2:
				MOV 	R4, #0
				LDR 	R5, =CURRENT_PID
				STR		R4, [R5]								//MAKING PID 0
				B		LOADREG2
				B		NEXT
				
				
				
	STACKSAVE1:	
				
				LDR		R5, =PD_ARRAY
				STR		R8, [R5, #64]					// STORES CPSR OF PROGR	
				STR		R0, [R5]						// STORES R0-R3 of PROGRAM
				STR		R1, [R5, #4]
				STR		R2, [R5, #8]
				STR		R3, [R5, #12]
				
				MOV 	R0, R5							// NOW SINCE WE USED R4, AND R5, R8 WE GOTTA RESTORE IT FROM STACK
				LDR		R4, [sp, #0]					// 
				LDR		R5, [sp, #4]
				LDR		R8, [sp, #8]
				ADD		sp, sp, #12
				
				STR		R4, [R0, #16]					//CONTINUE WITH STORING
				STR		R5, [R0, #20]
				STR		R6, [R0, #24]
				STR		R7, [R0, #28]
				STR		R8, [R0, #32]
				STR		R9, [R0, #36]
				STR		R10, [R5, #40]
				STR		R11, [R0, #44]
				STR		R12, [R0, #48]
				STR		R13, [R0, #52]
				STR		R14, [R0, #56]
				STR		R15, [R0, #60]
				
				B		IRQ1
				
	LOADREG1:
	
				LDR		R0, =PD_ARRAY
				LDR 	R1, [R0, #72]					//LOAD UP PID"S STUFF
				LDR 	R2, [R0, #76]
				LDR 	R3, [R0, #80]
				LDR 	R4, [R0, #84]
				LDR 	R5, [R0, #88]
				LDR 	R6, [R0, #92]
				LDR 	R7, [R0, #96]
				LDR 	R8, [R0, #100]
				LDR 	R9, [R0, #104]
				LDR 	R10, [R0, #108]
				LDR 	R11, [R0, #112]
				LDR 	R12, [R0, #116]
				LDR 	R13, [R0, #120]
				LDR 	R14, [R0, #124]
				
				LDR		R0, [R0, #132]
				MSR 	SPSR, R0
				SUBS	PC, LR, #4	
				
	STACKSAVE2:	
				
				LDR		R5, =PD_ARRAY
				ADD		R5, R5, #68
				STR		R8, [R5, #64]					// STORES CPSR OF PROGR	
				STR		R0, [R5]						// STORES R0-R3 of PROGRAM
				STR		R1, [R5, #4]
				STR		R2, [R5, #8]
				STR		R3, [R5, #12]
				
				MOV 	R0, R5							// NOW SINCE WE USED R4, AND R5, R8 WE GOTTA RESTORE IT FROM STACK
				LDR		R4, [sp, #0]					// 
				LDR		R5, [sp, #4]
				LDR		R8, [sp, #8]
				ADD		sp, sp, #12
				
				STR		R4, [R0, #16]					//CONTINUE WITH STORING
				STR		R5, [R0, #20]
				STR		R6, [R0, #24]
				STR		R7, [R0, #28]
				STR		R8, [R0, #32]
				STR		R9, [R0, #36]
				STR		R10, [R5, #40]
				STR		R11, [R0, #44]
				STR		R12, [R0, #48]
				STR		R13, [R0, #52]
				STR		R14, [R0, #56]
				STR		R15, [R0, #60]
				
				B		IRQ2
				
	LOADREG2:
	
				LDR		R0, =PD_ARRAY
				LDR 	R1, [R0, #4]					//LOAD UP PID"S STUFF
				LDR 	R2, [R0, #8]
				LDR 	R3, [R0, #12]
				LDR 	R4, [R0, #16]
				LDR 	R5, [R0, #20]
				LDR 	R6, [R0, #24]
				LDR 	R7, [R0, #28]
				LDR 	R8, [R0, #32]
				LDR 	R9, [R0, #36]
				LDR 	R10, [R0, #40]
				LDR 	R11, [R0, #44]
				LDR 	R12, [R0, #48]
				LDR 	R13, [R0, #52]
				LDR 	R14, [R0, #56]
				
				LDR		R0, [R0, #64]
				MSR 	SPSR, R0
				SUBS	PC, LR, #4	
			
		NEXT:
		
				/*PART 3 INTERUPT FROM JTAG UART -----------------------------*/
				/* This code is taken from the Altera University Program DE1-SoC on pg16 and modified*/
				
				LDR 	R8, =0xFFFEC100 	//Interuprt controller's base addr
				LDR 	R5, [R8,#0xC]		//Determine source of interupt
				CMP		R5, #80				//IS IT JTAG UART? IF NOT THEN LEL YOU GO NEXT0 (TO THE NEXT INTERUPT (TIMER))
				BNE		NEXT0
				
				LDR		R0, =0xFF201000		//BASE ADDRESS OF YUNGJAYTAG
				LDR		R1, [R0] 			// read the JTAG UART data register
				LDR		R8, =CHAR_BUFFER
				STR		R1, [R8]
				LDR		R8, =CHAR_FLAG
				MOV		R2, #1
				STR		R2, [R8]
				
		NEXT0:

FPGA_IRQ1_HANDLER:
    			CMP		R5, #KEYS_IRQ
				BNE		NEXT1    					// if not recognized, stop here
    
    			BL			KEY_ISR
EXIT_IRQ:
    			/* Write to the End of Interrupt Register (ICCEOIR) */
    			STR		R5, [R4, #ICCEOIR]			// write to ICCEOIR
				
		NEXT1:
    
    			POP		{R0-R7, LR}
    			SUBS		PC, LR, #4

/*--- FIQ ---------------------------------------------------------------------*/
SERVICE_FIQ:
    			B			SERVICE_FIQ 

				
				
				
counter:
	.word 0
CHAR_BUFFER:
	.word 0
CHAR_FLAG:
	.word 0
CURRENT_PID:
	.word 0
	
PD_ARRAY:
	.fill 17,4,0xDEADBEEF
	.fill 13,4,0xDEADBEE1
	.word 0x3F000000					// SP
	.word 0 							// LR
	.word PROC1+4 						// PC
	.word 0x53 							// CPSR (0x53 means IRQ enabled, mode = SVC)
	
		.end   
				

				
				
				
