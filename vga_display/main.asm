@ Fill the vga display with a dark green color

@ This example need to be load on a ARMv7 DE1-SoC system
@ The recommended way is to use cpualtor
@ VGA adress is 0xC8000000

@ A pixel is a word (16bit)

@ Color memory map
@ R = 0xf000
@ G = 0x0f00
@ B = 0x00f0
@ Intensity = 0x000f

@ r0 = adress of vga display
@ r1 = pixel color
@ r2 = pixel "coordinate"

@ Each update we
@ strh = store register halfword (16 bits = 2 bytes)
@ 1. Store the pixel 0x0100 (dark green) into the next vga pixel coordinate
@ 2. Add the offset to the next pixel coordinate
@ 3. Check if we are overflowing the size of the vga display
@ 4. If it's true (beq) we jump to exit
@ 5. Otherwise we continue updating

@ If you want more information on how the vga display on a
@ ARMv7 DE1-SoC check this link
@ http://www-ug.eecg.utoronto.ca/desl/nios_devices_SoC/ARM/dev_vga.html

.equ ADDR_VGA, 0xC8000000
.equ PIXEL, 0x0100

.global _start
_start:
	ldr r0, =ADDR_VGA
	ldr r1, =PIXEL 
	ldr r2, =0            

update:
	strh r1, [r0, r2]	
	add r2, r2, #2
	cmp r2, #0x00040000
	beq exit
	b update
	
exit:
	