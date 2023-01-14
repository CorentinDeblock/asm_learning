.global _start
.section .text

_start:
    mov r0, #5
	mov r1, #7
	add r2, r0, r1
	swi 0

	mov r7, #0x1
	mov r0, #0
	swi 0

.section .data
