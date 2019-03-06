	.text
	.global _start
	
	
_start:
	
	LDR R12, =size 			// R12 = N
	LDR R12, [R12]
	MOV R10, #0				// R10 = k = 0
	MOV R11, #0				// R11 = j = 0
	MOV R9, #0				// R9 = i = 0		
	
	LDR R0, =my_arrayA		
	LDR R1, =my_arrayB		
	LDR R2, =my_arrayC
	LDR R8, =zero
	
	.word 0xED985B00 		//FLOATING POINT STORE 0 INTO D5: 	(FTSD D5, [R2])	
	
loopK:	

	//FOR ADDRESS A
	MOV R3, #0
	ADD R3, R3, R9, LSL #3	// R3 = R3 + 8*i
	MUL R3, R3, R12			// R3 = R3*N
	ADD R3, R3, R10, LSL #3	// address is R3 = i*n*8 + 8*k
	ADD R3, R3, R0 
	
	//FOR ADDRESS B
	MOV R4, #0
	ADD R4, R4, R10, LSL #3	// R4 = R4 + 8i
	MUL R4, R4, R12			// R4 = R4*N*i
	ADD R4, R4, R11, LSL #3	// address is R3 = k*n*8 + 8*j	
	ADD R4, R4, R1

	.word 0xED930B00 		//FLOATING POINT LOAD: 	(FTSD D0, [R3])
	.word 0xED941B00 		//FLOATING POINT LOAD: 	(FTSD D1, [R4])
	.word 0xEE202B01 		//FLOATING POINT MULTIPLY: 	(FMULD D2, D0, D1)
	.word 0xEE355B02 		//FLOATING POINT ADD: 		(FADDD D5, D5, D2)
 
	
	ADD R10, R10, #1		//k++
	CMP R10, R12				// if N < k then loop
	BLT loopK
	
	
	MOV R5, #0
	ADD R5, R5, R9, LSL #3
	MUL R5, R5, R12
	ADD R5, R5, R11, LSL #3	// ADDRESS IS 8*i*n + 8*j
	ADD R5, R2
	.word 0xED855B00 		//FLOATING POINT STORE: 	(FTSD D5, [R5])
	
	.word 0xED985B00 		//SETTING D5 BACK TO ZERO...
	MOV R10, #0				//SETTING K TO 0 AGAIN
	ADD R11, R11, #1
	CMP R11, R12
	BLT loopK
	
	MOV R11, #0
	ADD R9, R9, #1
	CMP R9, R12
	BLT loopK
	
end:
	B end
		
	

size:
	.word 2
my_arrayA:
	.double 1.1000
	.double 2.2000
	.double 3.3000
	.double 4.4000
my_arrayB:
	.double 1.1000
	.double 2.2000
	.double 3.3000
	.double 4.4000
my_arrayC:
	.double 0.0
	.double 0.0
	.double 0.0
	.double 0.0
 zero:
	.double 0.0
	
.end