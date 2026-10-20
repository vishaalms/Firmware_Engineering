.syntax unified
.cpu cortex-m4
.fpu softvfp
.thumb
.global kee
.type kee , %function


  .text
kee:
  push {lr}
  ldr r0 , =datasec
  add r0,r0,#1
  blx r0
  pop {lr}
  nop
  bx lr

  .data
  .balign 4
datasec:
  nop
  nop
  nop
  bx lr
