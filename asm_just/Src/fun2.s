	.syntax unified
	.thumb
	.text
	.global fun2
	.type fun2 , %function

fun2:
	ldr r0 , =#0x20000001
	ldr r0 , [r0]

	bx lr

