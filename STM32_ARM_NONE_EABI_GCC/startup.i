# 0 "startup.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "startup.c"
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
# 2 "startup.c" 2



# 4 "startup.c"
extern uint32_t _sdata ;
extern uint32_t _edata ;

extern uint32_t _la_data ;

extern uint32_t _sbss ;
extern uint32_t _ebss ;

int main(void) ;



void reset_handl(void);

void HardFault_Handler(void);
void MemManage_Handler(void);
void BusFault_Handler(void);
void UsageFault_Handler(void);

void PendSV_Handler(void);
void SysTick_Handler(void);

uint32_t vectorss[] __attribute__((section(".isr_vector"))) ={
    0x20020000U ,
    (uint32_t) reset_handl ,
    0,
    (uint32_t) HardFault_Handler,
    (uint32_t) MemManage_Handler,
    (uint32_t) BusFault_Handler,
    (uint32_t) UsageFault_Handler,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    (uint32_t) PendSV_Handler ,
    (uint32_t) SysTick_Handler

} ;

void reset_handl(){

    uint32_t size = (uint32_t) ( ( (uint32_t)(&_edata) ) - ( (uint32_t)(&_sdata) ) ) ;

    uint8_t * pDst = (uint8_t*) (&_sdata) ;
    uint8_t * pSrc = (uint8_t*) (&_la_data) ;

    for(uint32_t i = 0 ; i < size ; i++ ){
        *pDst++ = *pSrc++ ;
    }

    size = (uint32_t) ( ( (uint32_t)(&_ebss) ) - ( (uint32_t)(&_sbss) ) ) ;
    pDst = (uint8_t*) (&_sbss) ;
    for(uint32_t i = 0 ; i < size ; i++ ){
        *pDst++ = 0 ;
    }




    main();


}
