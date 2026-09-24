#Bare-Metal Embedded application build process using GCC Cross-toolchain system
#Own Linker script and Startup file 
#STM32F407VG MCU  (ARM-cortex M4)

GDB commands :

openocd -f board/stm32f4discovery.cfg

arm-none-eabi-gdb

target remote localhost:3333

monitor reset init 



monitor flash write_image erase final.elf   -   flashing the executable into the flash

monitor reset halt    -     first reset and then halt immediately

monitor reset  -   reset only

monitor halt  -   halt only 

monitor resume   -    resume the flow when halted

si      -     execute the current instruction

i r     -     view all register contents

x/16wx 0x20000000    -     view the raw address location

monitor arm semihosting enable        -     enables semihosting    (should use this while semihosting code is implemented in the program)
