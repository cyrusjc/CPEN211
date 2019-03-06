// R0 = numbers
// R1 = KEY
// R2 = startIndex
// R3 = endIndex

.globl binary_search
binary_search:

	SUB sp, sp, #28 // saving r4-r9
	STR r4, [sp,#24]
	STR r5, [sp,#20]
	STR r6, [sp,#16]
	STR r7, [sp,#12]
	STR r8, [sp,#8]
	STR r9, [sp,#4]
	STR lr, [sp,#0]
	MOV R9, #0


	MOV R4, R0					// COUNTER
	MOV R5, R1					// KEY
	MOV R7, R2					// STARTINDEX
	MOV R6, R3					// ENDINDEX
BASE:
	
	ADD R4, R6, R7				// R6 = endIndex + startIndex
	MOV R4, R4, LSR #1			// R6 = R6/2  = (endIndex + startIndex)/2

	LDR R8, =data				// BASE ADDRESS OF DATA[]<F2>
	ADD R5, R8, R4, LSL #2		// R5 IS THE ADDRESS OF THE DATA[MIDDLEINDEX]
	LDR R8, [R5]				// R8 = data[middleIndex]

	ADD R9, R9, #1				//NUMCALLS++
 
	CMP R6, R7				// IF ENDINDEX < START THEN IT MEANS WE HAVE GONE OVER... NO RESULT
	BMI neg					//IF NEGATIVE THEN GO NEG RET -1 NOT FOUND

	CMP r1, r8				//CHECKS IF KEY IS >
	beq eq					//if key = data[middleindex] then found...
	BLT rec1				//IF DATA > KEY keyIndex =  (numbers , key start index middleindex -1, numcalls)
	BGT rec2				// IF KEY > DATA THEN SEARCH 3rd HALF
	
neg:
	MOV R0, #-1
	B end

eq:
	MOV R0, R4
	SUB R9, R9, R9, LSL#1			
	STR R9, [R5]					//REPLACING IT WITH -NUMCALLS
	B end

rec1:
	SUB R9, R9, R9, LSL#1		
	STR R9, [R5]					//MAKING IT NEGATIVE AND STORING IT -X = X - 2X
	SUB R6, R4, #1					//MIDDLE INDEX -1 AND RECURSIVELY CALLING IT
	SUB R9, R9, R9,LSL#1			//REUNNEGATIVE IT X = -X - (-2X)
	B BASE

rec2:
	SUB R9, R9, R9, LSL#1			//SAMETHING AS REC 1
	STR R9, [R5]
	ADD R7, R4, #1
	SUB R9, R9, R9,LSL#1			//REUNNEGATIVE IT
	B BASE

end:
	LDR lr, [sp,#0]				//POPPIN ALL DESE B4D BOIZ OFF STACK
	LDR r9, [sp,#4]
	LDR r8, [sp,#8]
	LDR r7, [sp,#12]
	LDR r6, [sp,#16]
	LDR r5, [sp,#20]
	LDR r4, [sp,#24]
	ADD sp, sp, #28
	mov pc, lr					// RETURN TO MAIN
	

data:
.word 28
.word 37
.word 44
.word 60
.word 85
.word 99
.word 121
.word 127
.word 129
.word 138

.word 143
.word 155
.word 162
.word 164
.word 175
.word 179
.word 205
.word 212
.word 217
.word 231

.word 235
.word 238
.word 242
.word 248
.word 250
.word 258
.word 283
.word 286
.word 305
.word 311

.word 316
.word 322
.word 326
.word 351
.word 355
.word 364
.word 366
.word 376
.word 391
.word 398

.word 408
.word 410
.word 415
.word 418
.word 425
.word 437
.word 441
.word 452
.word 474
.word 488

.word 506
.word 507
.word 526
.word 532
.word 534
.word 547
.word 548
.word 583
.word 585
.word 595

.word 603
.word 621
.word 640
.word 661
.word 666
.word 690
.word 692
.word 713
.word 719
.word 750

.word 755
.word 768
.word 775
.word 776
.word 784
.word 785
.word 791
.word 797
.word 798
.word 804

.word 828
.word 842
.word 846
.word 858
.word 884
.word 887
.word 890
.word 893
.word 908
.word 936

.word 939
.word 953
.word 960
.word 970
.word 978
.word 979
.word 981
.word 990
.word 1002
.word 1007




	
