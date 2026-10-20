/*
 * stm32f407xx.h
 *
 *  Created on: Oct 20, 2026
 *      Author: vishaal
 */

#ifndef INC_STM32F407XX_H_
#define INC_STM32F407XX_H_

#include <stdint.h>
#define __vo volatile


#define FLASH_BASEADDR      (0x08000000U)
#define SRAM                (0x20000000U)

#define PERIPH_BASE         (0x40000000U)
#define APB1PERIPH_BASE     PERIPH_BASE
#define APB2PERIPH_BASE     (0x40010000U)
#define AHB1PERIPH_BASE     (0x40020000U)
#define AHB2PERIPH_BASE     (0x50000000U)

#define GPIOA_BASEADDR      (0x40020000U)
#define GPIOB_BASEADDR      (0x40020400U)
#define GPIOC_BASEADDR      (0x40020800U)
#define GPIOD_BASEADDR      (0x40020C00U)
#define GPIOE_BASEADDR      (0x40021000U)
#define GPIOF_BASEADDR      (0x40021400U)
#define GPIOG_BASEADDR      (0x40021800U)
#define GPIOH_BASEADDR      (0x40021C00U)
#define GPIOI_BASEADDR      (0x40022000U)

#define I2C1_BASEADDR       (0x40005400U)
#define I2C2_BASEADDR       (0x40005800U)
#define I2C3_BASEADDR       (0x40005C00U)

#define EXTI_BASEADDR       (0x40013C00U)
#define SYSCFG_BASEADDR     (0x40013800U)
#define RCC_BASEADDR        (0x40023800U)

#define SPI1_BASEADDR       (0x40013000U)
#define SPI2_BASEADDR       (0x40003800U)
#define SPI3_BASEADDR       (0x40003C00U)

#define USART1_BASEADDR     (0x40011000U)
#define USART2_BASEADDR     (0x40004400U)
#define USART3_BASEADDR     (0x40004800U)
#define UART4_BASEADDR      (0x40004C00U)
#define UART5_BASEADDR      (0x40005000U)
#define USART6_BASEADDR     (0x40011400U)


typedef struct
{
	volatile uint32_t MODER ;
	volatile uint32_t OTYPER ;
	volatile uint32_t OSPEEDR ;
	volatile uint32_t PUPDR ;
	volatile const uint32_t IDR ;
	volatile uint32_t ODR ;
	volatile uint32_t BSRR ;
	volatile uint32_t LCKR ;
	volatile uint32_t AFR[2] ;   //AFRL  and  AFRH  registers
}GPIO_RegDef_t;

typedef struct
{
  __vo uint32_t CR;            /*!< TODO,     										Address offset: 0x00 */
  __vo uint32_t PLLCFGR;       /*!< TODO,     										Address offset: 0x04 */
  __vo uint32_t CFGR;          /*!< TODO,     										Address offset: 0x08 */
  __vo uint32_t CIR;           /*!< TODO,     										Address offset: 0x0C */
  __vo uint32_t AHB1RSTR;      /*!< TODO,     										Address offset: 0x10 */
  __vo uint32_t AHB2RSTR;      /*!< TODO,     										Address offset: 0x14 */
  __vo uint32_t AHB3RSTR;      /*!< TODO,     										Address offset: 0x18 */
  uint32_t      RESERVED0;     /*!< Reserved, 0x1C                                                       */
  __vo uint32_t APB1RSTR;      /*!< TODO,     										Address offset: 0x20 */
  __vo uint32_t APB2RSTR;      /*!< TODO,     										Address offset: 0x24 */
  uint32_t      RESERVED1[2];  /*!< Reserved, 0x28-0x2C                                                  */
  __vo uint32_t AHB1ENR;       /*!< TODO,     										Address offset: 0x30 */
  __vo uint32_t AHB2ENR;       /*!< TODO,     										Address offset: 0x34 */
  __vo uint32_t AHB3ENR;       /*!< TODO,     										Address offset: 0x38 */
  uint32_t      RESERVED2;     /*!< Reserved, 0x3C                                                       */
  __vo uint32_t APB1ENR;       /*!< TODO,     										Address offset: 0x40 */
  __vo uint32_t APB2ENR;       /*!< TODO,     										Address offset: 0x44 */
  uint32_t      RESERVED3[2];  /*!< Reserved, 0x48-0x4C                                                  */
  __vo uint32_t AHB1LPENR;     /*!< TODO,     										Address offset: 0x50 */
  __vo uint32_t AHB2LPENR;     /*!< TODO,     										Address offset: 0x54 */
  __vo uint32_t AHB3LPENR;     /*!< TODO,     										Address offset: 0x58 */
  uint32_t      RESERVED4;     /*!< Reserved, 0x5C                                                       */
  __vo uint32_t APB1LPENR;     /*!< TODO,     										Address offset: 0x60 */
  __vo uint32_t APB2LPENR;     /*!< RTODO,     										Address offset: 0x64 */
  uint32_t      RESERVED5[2];  /*!< Reserved, 0x68-0x6C                                                  */
  __vo uint32_t BDCR;          /*!< TODO,     										Address offset: 0x70 */
  __vo uint32_t CSR;           /*!< TODO,     										Address offset: 0x74 */
  uint32_t      RESERVED6[2];  /*!< Reserved, 0x78-0x7C                                                  */
  __vo uint32_t SSCGR;         /*!< TODO,     										Address offset: 0x80 */
  __vo uint32_t PLLI2SCFGR;    /*!< TODO,     										Address offset: 0x84 */
  __vo uint32_t PLLSAICFGR;    /*!< TODO,     										Address offset: 0x88 */
  __vo uint32_t DCKCFGR;       /*!< TODO,     										Address offset: 0x8C */
  __vo uint32_t CKGATENR;      /*!< TODO,     										Address offset: 0x90 */
  __vo uint32_t DCKCFGR2;      /*!< TODO,     										Address offset: 0x94 */

} RCC_RegDef_t;


#define GPIOA    ( (GPIO_RegDef_t*) GPIOA_BASEADDR )
#define GPIOB    ( (GPIO_RegDef_t*) GPIOB_BASEADDR )
#define GPIOC    ( (GPIO_RegDef_t*) GPIOC_BASEADDR )
#define GPIOD    ( (GPIO_RegDef_t*) GPIOD_BASEADDR )
#define GPIOE    ( (GPIO_RegDef_t*) GPIOE_BASEADDR )
#define GPIOF    ( (GPIO_RegDef_t*) GPIOF_BASEADDR )
#define GPIOG    ( (GPIO_RegDef_t*) GPIOG_BASEADDR )
#define GPIOH    ( (GPIO_RegDef_t*) GPIOH_BASEADDR )
#define GPIOI    ( (GPIO_RegDef_t*) GPIOI_BASEADDR )


#define RCC 	 ((RCC_RegDef_t*)RCC_BASEADDR)

#define GPIOA_PCLK_EN()      ( RCC -> AHB1ENR |= (1 << 0) )
#define GPIOB_PCLK_EN()      ( RCC -> AHB1ENR |= (1 << 1) )
#define GPIOC_PCLK_EN()      ( RCC -> AHB1ENR |= (1 << 2) )
#define GPIOD_PCLK_EN()      ( RCC -> AHB1ENR |= (1 << 3) )
#define GPIOE_PCLK_EN()      ( RCC -> AHB1ENR |= (1 << 4) )
#define GPIOF_PCLK_EN()      ( RCC -> AHB1ENR |= (1 << 5) )
#define GPIOG_PCLK_EN()      ( RCC -> AHB1ENR |= (1 << 6) )
#define GPIOH_PCLK_EN()      ( RCC -> AHB1ENR |= (1 << 7) )
#define GPIOI_PCLK_EN()      ( RCC -> AHB1ENR |= (1 << 8) )


/*
 * Clock Enable Macros for I2Cx peripherals
 */
#define I2C1_PCLK_EN() (RCC->APB1ENR |= (1 << 21))
#define I2C2_PCLK_EN() (RCC->APB1ENR |= (1 << 22))
#define I2C3_PCLK_EN() (RCC->APB1ENR |= (1 << 23))


/*
 * Clock Enable Macros for SPIx peripherals
 */
#define SPI1_PCLK_EN() (RCC->APB2ENR |= (1 << 12))
#define SPI2_PCLK_EN() (RCC->APB1ENR |= (1 << 14))
#define SPI3_PCLK_EN() (RCC->APB1ENR |= (1 << 15))



/*
 * Clock Enable Macros for USARTx peripherals
 */
#define USART1_PCCK_EN() (RCC->APB2ENR |= (1 << 4))
#define USART2_PCCK_EN() (RCC->APB1ENR |= (1 << 17))
#define USART3_PCCK_EN() (RCC->APB1ENR |= (1 << 18))
#define UART4_PCCK_EN()  (RCC->APB1ENR |= (1 << 19))
#define UART5_PCCK_EN()  (RCC->APB1ENR |= (1 << 20))
#define USART6_PCCK_EN() (RCC->APB1ENR |= (1 << 5))

/*
 * Clock Enable Macros for SYSCFG peripheral
 */
#define SYSCFG_PCLK_EN() (RCC->APB2ENR |= (1 << 14))


/*
 * Clock Disable Macros for GPIOx peripherals
 */
#define GPIOA_PCLK_DI()   ( RCC -> AHB1ENR &= ~(1 << 0) )


/*
 *  Macros to reset GPIOx peripherals
 */
#define GPIOA_REG_RESET()               do{ (RCC->AHB1RSTR |= (1 << 0)); (RCC->AHB1RSTR &= ~(1 << 0)); }while(0)
#define GPIOB_REG_RESET()               do{ (RCC->AHB1RSTR |= (1 << 1)); (RCC->AHB1RSTR &= ~(1 << 1)); }while(0)
#define GPIOC_REG_RESET()               do{ (RCC->AHB1RSTR |= (1 << 2)); (RCC->AHB1RSTR &= ~(1 << 2)); }while(0)
#define GPIOD_REG_RESET()               do{ (RCC->AHB1RSTR |= (1 << 3)); (RCC->AHB1RSTR &= ~(1 << 3)); }while(0)
#define GPIOE_REG_RESET()               do{ (RCC->AHB1RSTR |= (1 << 4)); (RCC->AHB1RSTR &= ~(1 << 4)); }while(0)
#define GPIOF_REG_RESET()               do{ (RCC->AHB1RSTR |= (1 << 5)); (RCC->AHB1RSTR &= ~(1 << 5)); }while(0)
#define GPIOG_REG_RESET()               do{ (RCC->AHB1RSTR |= (1 << 6)); (RCC->AHB1RSTR &= ~(1 << 6)); }while(0)
#define GPIOH_REG_RESET()               do{ (RCC->AHB1RSTR |= (1 << 7)); (RCC->AHB1RSTR &= ~(1 << 7)); }while(0)
#define GPIOI_REG_RESET()               do{ (RCC->AHB1RSTR |= (1 << 8)); (RCC->AHB1RSTR &= ~(1 << 8)); }while(0)



#define ENABLE 				1
#define DISABLE 			0
#define SET 				ENABLE
#define RESET 				DISABLE
#define GPIO_PIN_SET        SET
#define GPIO_PIN_RESET      RESET
#define FLAG_RESET         RESET
#define FLAG_SET 			SET



#endif /* INC_STM32F407XX_H_ */
