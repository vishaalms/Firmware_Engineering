CC=arm-none-eabi-gcc
MACH=cortex-m4
CFLAGS= -c -mcpu=$(MACH) -mthumb -mfloat-abi=soft -std=gnu11 -Wall -O0
LDFLAGS= -mcpu=$(MACH) -mthumb -mfloat-abi=soft --specs=rdimon.specs  -T linkerscript.ld -Wl,-Map=finall.map


all:main.o led.o startup.o finaly.elf

clean:
	rm -rf *.o *.elf

main.o:main.c
	$(CC) $(CFLAGS) -o $@ $^
	
led.o:led.c
	$(CC) $(CFLAGS) -o $@ $^

startup.o:startup.c
	$(CC) $(CFLAGS) -o $@ $^

syscalls.o:syscalls.c
	$(CC) $(CFLAGS) -o $@ $^

finaly.elf: main.o led.o startup.o
	$(CC) $(LDFLAGS) -o $@ $^

load:
	openocd -f board/stm32f4discovery.cfg
