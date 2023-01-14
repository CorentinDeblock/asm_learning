.global _start
.section .text

# Uncomment and compile to see the result
# The recommended way however is to use cpulator

_start:
    mov r0, #0xff
    mov r1, #0xa
    and r2, r0, r1
    swi 0

    @ Or operation = 0xfa  
    @ because 0xf0 = 1111 0000 = 255
    @ and 0xa = 0000 1010
    @ then result = 1111 1010

    @ mov r0, #0xf0
    @ mov r1, #0xa
    @ orr r2, r0, r1
    @ swi 0

    @ Exclusive or operation = 0xf5
    @ because f - a = 5 
    @ because f = 15 and a = 10 

    @ mov r0, #0xff
    @ mov r1, #0xa
    @ eor r2, r0, r1
    @ swi 0

    @ Negate bitwise operation
	@ mov r0, #0xaa
	@ mvn r0, r0

	@ and r0, r0, #0x000000FF

	@ swi 0

    @ left and right bitwise operation = 160
    @ lsl = multiply r0 by 4 = 0x280 = 640
    @ lsr = divide r0 by 2 = 320

    @ mov r0, #0xa0
	@ lsl r0, #2
	
	@ mov r1, r0
	@ lsr r1, #1
    @ swi 0

    mov r7, #0x1
    mov r0, #0
    swi 0

.section .data