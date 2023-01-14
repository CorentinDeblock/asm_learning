.global _start
.section .text 

.equ endlist, 0xffffffff

_start:
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0

	ldr r0, =list
	ldr r3, =endlist
	ldr r1, [r0]
	add r2, r2, r1

loop:
	ldr r1, [r0, #4]!
	cmp r1, r3
	beq exit
	add r2, r2, r1
	bal loop
	
exit:
    mov r7, #0x1
    mov r0, #0
    swi 0

.section .data
list:
	.word 6,4,10,7,2,endlist