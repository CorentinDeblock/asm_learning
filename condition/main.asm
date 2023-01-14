.global _start
.section .text

_start:
	mov r0, #1
	mov r1, #2
	
	cmp r0, r1
	bgt greater
	blt smaller
	bal always	
    swi 0

    mov r7, #0x1
    mov r0, #0
    swi 0

smaller:
	mov r2, #8

greater:
	mov r2, #4

always:
	lsl r2, #1

.section .data
