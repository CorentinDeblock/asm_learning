@ Naive function
@ .global _start
@ .section .text 

@ _start:
@ 	mov r0, #4
@ 	mov r1, #8
	
@ 	bl add
	
@ 	mov r3, #45

@ 	mov r7, #0x1
@ 	mov r0, #0
@ 	swi 0
	
@ add:
@ 	add r2, r1, r0
@ 	bx lr

@ More complex example
.global _start
.section .text 

_start:
	mov r0, #0
	mov r1, #0
	mov r2, #0

	mov r0, #1
	mov r1, #2

	push {r1, r0}
	bl add
	pop {r1, r0}
	
	b end
	
add:
	mov r0, #2
	mov r1, #10
	add r2, r1, r0
	bx lr
	
end:
	mov r7, #0x1
	mov r0, #0
	swi 0