# 0 "led.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "led.c"
# 9 "led.c"
# 1 "/usr/lib/gcc/arm-none-eabi/13.2.1/include/stdint.h" 1 3 4
# 34 "/usr/lib/gcc/arm-none-eabi/13.2.1/include/stdint.h" 3 4

# 34 "/usr/lib/gcc/arm-none-eabi/13.2.1/include/stdint.h" 3 4
typedef signed char int8_t;


typedef short int int16_t;


typedef long int int32_t;


typedef long long int int64_t;


typedef unsigned char uint8_t;


typedef short unsigned int uint16_t;


typedef long unsigned int uint32_t;


typedef long long unsigned int uint64_t;




typedef signed char int_least8_t;
typedef short int int_least16_t;
typedef long int int_least32_t;
typedef long long int int_least64_t;
typedef unsigned char uint_least8_t;
typedef short unsigned int uint_least16_t;
typedef long unsigned int uint_least32_t;
typedef long long unsigned int uint_least64_t;



typedef int int_fast8_t;
typedef int int_fast16_t;
typedef int int_fast32_t;
typedef long long int int_fast64_t;
typedef unsigned int uint_fast8_t;
typedef unsigned int uint_fast16_t;
typedef unsigned int uint_fast32_t;
typedef long long unsigned int uint_fast64_t;




typedef int intptr_t;


typedef unsigned int uintptr_t;




typedef long long int intmax_t;
typedef long long unsigned int uintmax_t;
# 10 "led.c" 2
# 1 "led.h" 1
# 29 "led.h"

# 29 "led.h"
void led_init_all(void);
void led_on(uint8_t led_no);
void led_off(uint8_t led_no);
void delay(uint32_t count);
# 11 "led.c" 2



void delay(uint32_t count)
{
  for(uint32_t i = 0 ; i < count ; i++);
}

void led_init_all(void)
{

 uint32_t *pRccAhb1enr = (uint32_t*)0x40023830;
 uint32_t *pGpiodModeReg = (uint32_t*)0x40020C00;


 *pRccAhb1enr |= ( 1 << 3);

 *pGpiodModeReg |= ( 1 << (2 * 12));
 *pGpiodModeReg |= ( 1 << (2 * 13));
 *pGpiodModeReg |= ( 1 << (2 * 14));
 *pGpiodModeReg |= ( 1 << (2 * 15));
# 41 "led.c"
    led_off(12);
    led_off(13);
    led_off(14);
    led_off(15);



}

void led_on(uint8_t led_no)
{
  uint32_t *pGpiodDataReg = (uint32_t*)0x40020C14;
  *pGpiodDataReg |= ( 1 << led_no);

}

void led_off(uint8_t led_no)
{
   uint32_t *pGpiodDataReg = (uint32_t*)0x40020C14;
   *pGpiodDataReg &= ~( 1 << led_no);

}
