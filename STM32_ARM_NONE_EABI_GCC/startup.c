#include<stdint.h>

extern uint32_t  _etext ;
extern uint32_t  _sdata ;
extern uint32_t  _edata ;

extern uint32_t  _la_data ;

extern uint32_t _sbss ;
extern uint32_t _ebss ;

int main(void) ;

void __libc_init_array(void);

void reset_handl(void);

void HardFault_Handler(void);
void MemManage_Handler(void);
void BusFault_Handler(void);
void UsageFault_Handler(void);

void PendSV_Handler(void);
void SysTick_Handler(void);

uint32_t vectorss[] __attribute__((section(".isr_vector")))   ={
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
//IRQs are not used in this project , so not needed
}  ; 

void reset_handl(){

    uint32_t size =     (uint32_t) (  (&_edata)  -   (&_sdata)   ) ;

    uint32_t * pDst = (uint32_t*) (&_sdata)  ;
    uint32_t * pSrc = (uint32_t*) (&_la_data)  ;

    for(uint32_t i = 0 ;   i < size ; i++  ){
        *pDst++ = *pSrc++  ;
    }

    size =    (uint32_t)  ( (&_ebss)  -   (&_sbss)  )  ;
    pDst = (uint32_t*) (&_sbss)  ;
    for(uint32_t i = 0 ;   i < size ; i++  ){
        *pDst++ = 0  ;
    }

    __libc_init_array();


    main();


}


