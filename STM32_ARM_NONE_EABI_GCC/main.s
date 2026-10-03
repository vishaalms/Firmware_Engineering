	.cpu cortex-m4
	.arch armv7e-m
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.align	1
	.global	init_systick_timer
	.syntax unified
	.thumb
	.thumb_func
	.type	init_systick_timer, %function
init_systick_timer:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, .L2
	str	r3, [r7, #20]
	ldr	r3, .L2+4
	str	r3, [r7, #16]
	ldr	r2, .L2+8
	ldr	r3, [r7, #4]
	udiv	r3, r2, r3
	subs	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	and	r2, r3, #-16777216
	ldr	r3, [r7, #20]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	orrs	r2, r2, r3
	ldr	r3, [r7, #20]
	str	r2, [r3]
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	orr	r2, r3, #2
	ldr	r3, [r7, #16]
	str	r2, [r3]
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	orr	r2, r3, #4
	ldr	r3, [r7, #16]
	str	r2, [r3]
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	orr	r2, r3, #1
	ldr	r3, [r7, #16]
	str	r2, [r3]
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L3:
	.align	2
.L2:
	.word	-536813548
	.word	-536813552
	.word	16000000
	.size	init_systick_timer, .-init_systick_timer
	.align	1
	.global	init_scheduler_stack_msp
	.syntax unified
	.thumb
	.thumb_func
	.type	init_scheduler_stack_msp, %function
init_scheduler_stack_msp:
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.syntax unified
@ 46 "main.c" 1
	msr  msp ,  r0  
@ 0 "" 2
@ 47 "main.c" 1
	bx lr
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	.size	init_scheduler_stack_msp, .-init_scheduler_stack_msp
	.global	user_tasks
	.bss
	.align	2
	.type	user_tasks, %object
	.size	user_tasks, 80
user_tasks:
	.space	80
	.global	current_task
	.data
	.align	2
	.type	current_task, %object
	.size	current_task, 4
current_task:
	.word	1
	.global	g_tick_count
	.bss
	.align	2
	.type	g_tick_count, %object
	.size	g_tick_count, 4
g_tick_count:
	.space	4
	.text
	.align	1
	.global	idle_task
	.syntax unified
	.thumb
	.thumb_func
	.type	idle_task, %function
idle_task:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
.L6:
	nop
	b	.L6
	.size	idle_task, .-idle_task
	.align	1
	.global	init_tasks_stack
	.syntax unified
	.thumb
	.thumb_func
	.type	init_tasks_stack, %function
init_tasks_stack:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L8
.L9:
	ldr	r2, .L14
	ldr	r3, [r7, #12]
	lsls	r3, r3, #4
	add	r3, r3, r2
	adds	r3, r3, #8
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L8:
	ldr	r3, [r7, #12]
	cmp	r3, #4
	ble	.L9
	ldr	r3, .L14
	ldr	r2, .L14+4
	str	r2, [r3]
	ldr	r3, .L14
	ldr	r2, .L14+8
	str	r2, [r3, #16]
	ldr	r3, .L14
	ldr	r2, .L14+12
	str	r2, [r3, #32]
	ldr	r3, .L14
	ldr	r2, .L14+16
	str	r2, [r3, #48]
	ldr	r3, .L14
	ldr	r2, .L14+20
	str	r2, [r3, #64]
	ldr	r2, .L14+24
	ldr	r3, .L14
	str	r2, [r3, #12]
	ldr	r2, .L14+28
	ldr	r3, .L14
	str	r2, [r3, #28]
	ldr	r2, .L14+32
	ldr	r3, .L14
	str	r2, [r3, #44]
	ldr	r2, .L14+36
	ldr	r3, .L14
	str	r2, [r3, #60]
	ldr	r2, .L14+40
	ldr	r3, .L14
	str	r2, [r3, #76]
	movs	r3, #0
	str	r3, [r7, #4]
	b	.L10
.L13:
	ldr	r2, .L14
	ldr	r3, [r7, #4]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	subs	r3, r3, #4
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	mov	r2, #16777216
	str	r2, [r3]
	ldr	r3, [r7, #8]
	subs	r3, r3, #4
	str	r3, [r7, #8]
	ldr	r2, .L14
	ldr	r3, [r7, #4]
	lsls	r3, r3, #4
	add	r3, r3, r2
	adds	r3, r3, #12
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #8]
	subs	r3, r3, #4
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3]
	movs	r3, #0
	str	r3, [r7]
	b	.L11
.L12:
	ldr	r3, [r7, #8]
	subs	r3, r3, #4
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7]
	adds	r3, r3, #1
	str	r3, [r7]
.L11:
	ldr	r3, [r7]
	cmp	r3, #12
	ble	.L12
	ldr	r2, [r7, #8]
	ldr	r1, .L14
	ldr	r3, [r7, #4]
	lsls	r3, r3, #4
	add	r3, r3, r1
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L10:
	ldr	r3, [r7, #4]
	cmp	r3, #4
	ble	.L13
	nop
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L15:
	.align	2
.L14:
	.word	user_tasks
	.word	536997888
	.word	537001984
	.word	537000960
	.word	536999936
	.word	536998912
	.word	idle_task
	.word	task1_handler
	.word	task2_handler
	.word	task3_handler
	.word	task4_handler
	.size	init_tasks_stack, .-init_tasks_stack
	.align	1
	.global	task_delay
	.syntax unified
	.thumb
	.thumb_func
	.type	task_delay, %function
task_delay:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	.syntax unified
@ 118 "main.c" 1
	mov r0,#0x01
@ 0 "" 2
@ 119 "main.c" 1
	msr primask , r0 
@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r3, .L18
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L17
	ldr	r3, .L18+4
	ldr	r1, [r3]
	ldr	r3, .L18
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	add	r2, r2, r1
	ldr	r1, .L18+8
	lsls	r3, r3, #4
	add	r3, r3, r1
	adds	r3, r3, #4
	str	r2, [r3]
	ldr	r3, .L18
	ldr	r3, [r3]
	ldr	r2, .L18+8
	lsls	r3, r3, #4
	add	r3, r3, r2
	adds	r3, r3, #8
	mov	r2, #-1
	str	r2, [r3]
	ldr	r3, .L18+12
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r3, #268435456
	ldr	r3, [r7, #12]
	str	r2, [r3]
.L17:
	.syntax unified
@ 133 "main.c" 1
	mov r0,#0x00
@ 0 "" 2
@ 134 "main.c" 1
	msr primask , r0 
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L19:
	.align	2
.L18:
	.word	current_task
	.word	g_tick_count
	.word	user_tasks
	.word	-536810236
	.size	task_delay, .-task_delay
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	ldr	r3, .L22
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	mov	r2, #15728640
	str	r2, [r3]
	ldr	r3, .L22+4
	str	r3, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3]
	orr	r2, r3, #458752
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r0, .L22+8
	bl	init_scheduler_stack_msp
	bl	init_tasks_stack
	bl	led_init_all
	mov	r0, #1000
	bl	init_systick_timer
	ldr	r3, .L22+12
	ldr	r3, [r3, #16]
	mov	r0, r3
	.syntax unified
@ 195 "main.c" 1
	msr psp , r0   
@ 0 "" 2
@ 196 "main.c" 1
	mov r0 , #0x02   
@ 0 "" 2
@ 197 "main.c" 1
	msr control , r0   
@ 0 "" 2
	.thumb
	.syntax unified
	bl	task1_handler
.L21:
	nop
	b	.L21
.L23:
	.align	2
.L22:
	.word	-536810208
	.word	-536810204
	.word	536996864
	.word	user_tasks
	.size	main, .-main
	.align	1
	.global	task1_handler
	.syntax unified
	.thumb
	.thumb_func
	.type	task1_handler, %function
task1_handler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
.L25:
	movs	r0, #12
	bl	led_on
	mov	r0, #1000
	bl	task_delay
	movs	r0, #12
	bl	led_off
	mov	r0, #1000
	bl	task_delay
	nop
	b	.L25
	.size	task1_handler, .-task1_handler
	.align	1
	.global	task2_handler
	.syntax unified
	.thumb
	.thumb_func
	.type	task2_handler, %function
task2_handler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
.L27:
	movs	r0, #13
	bl	led_on
	mov	r0, #500
	bl	task_delay
	movs	r0, #13
	bl	led_off
	mov	r0, #500
	bl	task_delay
	nop
	b	.L27
	.size	task2_handler, .-task2_handler
	.align	1
	.global	task3_handler
	.syntax unified
	.thumb
	.thumb_func
	.type	task3_handler, %function
task3_handler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
.L29:
	movs	r0, #15
	bl	led_on
	movs	r0, #250
	bl	task_delay
	movs	r0, #15
	bl	led_off
	movs	r0, #250
	bl	task_delay
	nop
	b	.L29
	.size	task3_handler, .-task3_handler
	.align	1
	.global	task4_handler
	.syntax unified
	.thumb
	.thumb_func
	.type	task4_handler, %function
task4_handler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
.L31:
	movs	r0, #14
	bl	led_on
	movs	r0, #125
	bl	task_delay
	movs	r0, #14
	bl	led_off
	movs	r0, #125
	bl	task_delay
	nop
	b	.L31
	.size	task4_handler, .-task4_handler
	.align	1
	.global	save_psp_value
	.syntax unified
	.thumb
	.thumb_func
	.type	save_psp_value, %function
save_psp_value:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, .L33
	ldr	r3, [r3]
	ldr	r2, .L33+4
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r2, [r7, #4]
	str	r2, [r3]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L34:
	.align	2
.L33:
	.word	current_task
	.word	user_tasks
	.size	save_psp_value, .-save_psp_value
	.align	1
	.global	update_current_task
	.syntax unified
	.thumb
	.thumb_func
	.type	update_current_task, %function
update_current_task:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, #-1
	str	r3, [r7, #4]
	movs	r3, #0
	str	r3, [r7]
	b	.L36
.L39:
	ldr	r3, .L43
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L43
	str	r3, [r2]
	ldr	r3, .L43
	ldr	r1, [r3]
	ldr	r3, .L43+4
	umull	r2, r3, r3, r1
	lsrs	r2, r3, #2
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	subs	r2, r1, r3
	ldr	r3, .L43
	str	r2, [r3]
	ldr	r3, .L43
	ldr	r3, [r3]
	ldr	r2, .L43+8
	lsls	r3, r3, #4
	add	r3, r3, r2
	adds	r3, r3, #8
	ldr	r3, [r3]
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L37
	ldr	r3, .L43
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L41
.L37:
	ldr	r3, [r7]
	adds	r3, r3, #1
	str	r3, [r7]
.L36:
	ldr	r3, [r7]
	cmp	r3, #4
	ble	.L39
	b	.L38
.L41:
	nop
.L38:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L42
	ldr	r3, .L43
	movs	r2, #0
	str	r2, [r3]
.L42:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L44:
	.align	2
.L43:
	.word	current_task
	.word	-858993459
	.word	user_tasks
	.size	update_current_task, .-update_current_task
	.align	1
	.global	get_psp_val
	.syntax unified
	.thumb
	.thumb_func
	.type	get_psp_val, %function
get_psp_val:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L47
	ldr	r3, [r3]
	ldr	r2, .L47+4
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r3, [r3]
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L48:
	.align	2
.L47:
	.word	current_task
	.word	user_tasks
	.size	get_psp_val, .-get_psp_val
	.align	1
	.global	PendSV_Handler
	.syntax unified
	.thumb
	.thumb_func
	.type	PendSV_Handler, %function
PendSV_Handler:
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.syntax unified
@ 272 "main.c" 1
	push {lr}
@ 0 "" 2
@ 275 "main.c" 1
	mrs r0 , psp 
@ 0 "" 2
@ 276 "main.c" 1
	stmdb  r0! , {r4-r11}    
@ 0 "" 2
@ 277 "main.c" 1
	bl save_psp_value
@ 0 "" 2
@ 280 "main.c" 1
	bl update_current_task
@ 0 "" 2
@ 283 "main.c" 1
	bl get_psp_val
@ 0 "" 2
@ 284 "main.c" 1
	ldmia  r0! ,  {r4-r11}   
@ 0 "" 2
@ 285 "main.c" 1
	msr psp , r0 
@ 0 "" 2
@ 289 "main.c" 1
	pop {lr}
@ 0 "" 2
@ 290 "main.c" 1
	bx lr
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	.size	PendSV_Handler, .-PendSV_Handler
	.align	1
	.global	SysTick_Handler
	.syntax unified
	.thumb
	.thumb_func
	.type	SysTick_Handler, %function
SysTick_Handler:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	ldr	r3, .L54
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L54
	str	r3, [r2]
	movs	r3, #1
	str	r3, [r7, #4]
	b	.L51
.L53:
	ldr	r2, .L54+4
	ldr	r3, [r7, #4]
	lsls	r3, r3, #4
	add	r3, r3, r2
	adds	r3, r3, #8
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L52
	ldr	r2, .L54+4
	ldr	r3, [r7, #4]
	lsls	r3, r3, #4
	add	r3, r3, r2
	adds	r3, r3, #4
	ldr	r2, [r3]
	ldr	r3, .L54
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L52
	ldr	r2, .L54+4
	ldr	r3, [r7, #4]
	lsls	r3, r3, #4
	add	r3, r3, r2
	adds	r3, r3, #8
	movs	r2, #0
	str	r2, [r3]
.L52:
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L51:
	ldr	r3, [r7, #4]
	cmp	r3, #4
	ble	.L53
	ldr	r3, .L54+8
	str	r3, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3]
	orr	r2, r3, #268435456
	ldr	r3, [r7]
	str	r2, [r3]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L55:
	.align	2
.L54:
	.word	g_tick_count
	.word	user_tasks
	.word	-536810236
	.size	SysTick_Handler, .-SysTick_Handler
	.align	1
	.global	HardFault_Handler
	.syntax unified
	.thumb
	.thumb_func
	.type	HardFault_Handler, %function
HardFault_Handler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
.L57:
	nop
	b	.L57
	.size	HardFault_Handler, .-HardFault_Handler
	.align	1
	.global	MemManage_Handler
	.syntax unified
	.thumb
	.thumb_func
	.type	MemManage_Handler, %function
MemManage_Handler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
.L59:
	nop
	b	.L59
	.size	MemManage_Handler, .-MemManage_Handler
	.align	1
	.global	BusFault_Handler
	.syntax unified
	.thumb
	.thumb_func
	.type	BusFault_Handler, %function
BusFault_Handler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
.L61:
	nop
	b	.L61
	.size	BusFault_Handler, .-BusFault_Handler
	.align	1
	.global	UsageFault_Handler
	.syntax unified
	.thumb
	.thumb_func
	.type	UsageFault_Handler, %function
UsageFault_Handler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
.L63:
	nop
	b	.L63
	.size	UsageFault_Handler, .-UsageFault_Handler
	.global	goov
	.section	goookhaaaaa,"a"
	.align	2
	.type	goov, %object
	.size	goov, 4
goov:
	.word	-1717986919
	.ident	"GCC: (15:13.2.rel1-2) 13.2.1 20231009"
