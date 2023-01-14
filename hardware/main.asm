@This example need to be load on a ARMv7 DE1-SoC system

.equ SWITCH, 0xff200040
.equ LED, 0xff200000

.global _start
_start:
	mov r0, #0
	mov r1, #0

	ldr r0, =SWITCH
	ldr r1, [r0]
	
	ldr r0, =LED
	str r1, [r0]
	