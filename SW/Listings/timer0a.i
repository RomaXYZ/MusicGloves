# 1 "inc/Timer0A.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 366 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "inc/Timer0A.c" 2
# 28 "inc/Timer0A.c"
# 1 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdint.h" 1 3
# 56 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdint.h" 3
typedef signed char int8_t;
typedef signed short int int16_t;
typedef signed int int32_t;
typedef signed long long int int64_t;


typedef unsigned char uint8_t;
typedef unsigned short int uint16_t;
typedef unsigned int uint32_t;
typedef unsigned long long int uint64_t;





typedef signed char int_least8_t;
typedef signed short int int_least16_t;
typedef signed int int_least32_t;
typedef signed long long int int_least64_t;


typedef unsigned char uint_least8_t;
typedef unsigned short int uint_least16_t;
typedef unsigned int uint_least32_t;
typedef unsigned long long int uint_least64_t;




typedef signed int int_fast8_t;
typedef signed int int_fast16_t;
typedef signed int int_fast32_t;
typedef signed long long int int_fast64_t;


typedef unsigned int uint_fast8_t;
typedef unsigned int uint_fast16_t;
typedef unsigned int uint_fast32_t;
typedef unsigned long long int uint_fast64_t;






typedef signed int intptr_t;
typedef unsigned int uintptr_t;



typedef signed long long intmax_t;
typedef unsigned long long uintmax_t;
# 29 "inc/Timer0A.c" 2
# 1 "inc/../inc/tm4c123gh6pm.h" 1
# 30 "inc/Timer0A.c" 2
# 1 "inc/../inc/CortexM.h" 1
# 45 "inc/../inc/CortexM.h"
void DisableInterrupts(void);





void EnableInterrupts(void);






long StartCritical(void);






void EndCritical(long sr);







void WaitForInterrupt(void);

void Clock_Delay(uint32_t ulCount);




void Clock_Delay1ms(uint32_t n);
# 31 "inc/Timer0A.c" 2
# 47 "inc/Timer0A.c"
void (*PeriodicTask0)(void);







void Timer0A_Init(void(*task)(void), uint32_t period, uint32_t priority){
  (*((volatile uint32_t *)0x400FE604)) |= 0x01;
  PeriodicTask0 = task;
  (*((volatile uint32_t *)0x4003000C)) &= ~0x00000001;
  (*((volatile uint32_t *)0x40030000)) = 0x00000000;
  (*((volatile uint32_t *)0x40030004)) = 0x00000002;
  (*((volatile uint32_t *)0x40030028)) = period-1;
  (*((volatile uint32_t *)0x40030038)) = 0;
  (*((volatile uint32_t *)0x40030024)) = 0x00000001;
  (*((volatile uint32_t *)0x40030018)) |= 0x00000001;
  (*((volatile uint32_t *)0xE000E410)) = ((*((volatile uint32_t *)0xE000E410))&0x00FFFFFF)|(priority<<29);
  (*((volatile uint32_t *)0xE000E100)) = 0x00080000;
  (*((volatile uint32_t *)0x4003000C)) |= 0x00000001;
}

void Timer0A_Handler(void){
  (*((volatile uint32_t *)0x40030024)) = 0x00000001;
  (*PeriodicTask0)();
}
void Timer0A_Stop(void){
  (*((volatile uint32_t *)0xE000E100)) = 1<<19;
  (*((volatile uint32_t *)0x4003000C)) = 0x00000000;
}
