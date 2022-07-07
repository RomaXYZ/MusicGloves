# 1 "inc/Timer5A.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 366 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "inc/Timer5A.c" 2
# 23 "inc/Timer5A.c"
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
# 24 "inc/Timer5A.c" 2
# 1 "inc/../inc/tm4c123gh6pm.h" 1
# 25 "inc/Timer5A.c" 2

void (*PeriodicTask5)(void);







void Timer5A_Init(void(*task)(void), uint32_t period, uint32_t priority){
  (*((volatile uint32_t *)0x400FE604)) |= 0x20;
  PeriodicTask5 = task;
  (*((volatile uint32_t *)0x4003500C)) = 0x00000000;
  (*((volatile uint32_t *)0x40035000)) = 0x00000000;
  (*((volatile uint32_t *)0x40035004)) = 0x00000002;
  (*((volatile uint32_t *)0x40035028)) = period-1;
  (*((volatile uint32_t *)0x40035038)) = 0;
  (*((volatile uint32_t *)0x40035024)) = 0x00000001;
  (*((volatile uint32_t *)0x40035018)) = 0x00000001;
  (*((volatile uint32_t *)0xE000E45C)) = ((*((volatile uint32_t *)0xE000E45C))&0xFFFFFF00)|(priority<<5);


  (*((volatile uint32_t *)0xE000E108)) = 1<<28;
  (*((volatile uint32_t *)0x4003500C)) = 0x00000001;
}

void Timer5A_Handler(void){
  (*((volatile uint32_t *)0x40035024)) = 0x00000001;
  (*PeriodicTask5)();
}
void Timer5_Stop(void){
  (*((volatile uint32_t *)0xE000E188)) = 1<<28;
  (*((volatile uint32_t *)0x4003500C)) = 0x00000000;
}
