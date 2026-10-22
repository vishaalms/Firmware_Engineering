#STM32F407 Device Drivers  written from scratch bare-metal













* Important notes
 *
 * An IRQ(interrupt) can go into pending state by these methods:
 * 1. setting ISPR bit
 * 2. using STIR register
 * 3. When a rising edge occurs on the IRQ line (edge triggering to NVIC)
 * 4. If the IRQ line is asserted (held HIGH ) at the time of Exec return (Level triggering to NVIC)
 *
 * An IRQ can go into non-pending state by these methods :
 * 1. setting ICPR bit (In thread mode, this works only if that IRQ line is deasserted or held LOW)
 * 2. Automatically happens at the time of ISR entry
 *
 * When we read the ISPR or ICPR (any) register , if the bit value is 1 the IRQ is in pending state,
 * if the bit value is 0 the IRQ is in non-pending state .
 *
 * If an IRQ is in pending state , the ISR will be serviced,
 * if that IRQ is in non-pending state , the ISR wont be serviced .
 * (provided the IRQ is enabled in NVIC in the first case)
 *
 * An IRQ with a higher priority than the currently running IRQ can preempt the ISR ,
 * otherwise if that IRQ has same or less priority than the current IRQ , the preemption
 * wont happen .
 *
 *
 * Regarding EXTI , an EXTI pending register bit is directly connected to a particular
 * IRQ line on the NVIC . The EXTI PR bit is set (latched till we clear by SW) , when a rising or
 * falling or both rising and falling edge occurs on the corresponding GPIO (when configured
 * accordingly) .
 *