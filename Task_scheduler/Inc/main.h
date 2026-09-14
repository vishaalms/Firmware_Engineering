/*
 * main.h
 *
 *  Created on: Sep 14, 2026
 *      Author: vishaal
 */

#ifndef MAIN_H_
#define MAIN_H_

#define T1_STACK ((0x20020000U)  - (0 * 1024) )
#define T2_STACK ((0x20020000U)  - (1 * 1024) )
#define T3_STACK ((0x20020000U)  - (2 * 1024) )
#define T4_STACK ((0x20020000U)  - (3 * 1024) )
#define IDLE_STACK ((0x20020000U)  - (4 * 1024) )
#define SCHED_STACK ((0x20020000U)  - (5 * 1024) )

#define TICK_HZ  1000U

#define TASK_RUNNING_STATE 0U
#define TASK_BLOCKED_STATE 0xFFFFFFFFU


void task1_handler(void);
void task2_handler(void);
void task3_handler(void);
void task4_handler(void);

typedef struct{
	uint32_t psp_value ;
	uint32_t block_count ;
	uint32_t current_state ;
	uint32_t task_handler ;
}TCB_t;


#endif /* MAIN_H_ */
