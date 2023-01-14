.global _start
.section .text

_start:
    ldr r0, =list
    ldr r1, [r0]
    ldr r2, [r0, #4]
    swi 0

	mov r7, #0x1
	mov r0, 0
	swi 0

.section .data
    list:
        .word 4,8,-7,1
