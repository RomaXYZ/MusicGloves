# 1 "inc/PLL.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 366 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "inc/PLL.c" 2
# 27 "inc/PLL.c"
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
# 28 "inc/PLL.c" 2
# 1 "inc/../inc/PLL.h" 1
# 35 "inc/../inc/PLL.h"
void PLL_Init(uint32_t freq);
# 29 "inc/PLL.c" 2
# 1 "inc/../inc/tm4c123gh6pm.h" 1
# 30 "inc/PLL.c" 2
# 55 "inc/PLL.c"
void PLL_Init(uint32_t freq){


  (*((volatile uint32_t *)0x400FE070)) |= 0x80000000;

  (*((volatile uint32_t *)0x400FE070)) |= 0x00000800;

  (*((volatile uint32_t *)0x400FE060)) &= ~0x000007C0;
  (*((volatile uint32_t *)0x400FE060)) += 0x00000540;
  (*((volatile uint32_t *)0x400FE070)) &= ~0x00000070;
  (*((volatile uint32_t *)0x400FE070)) += 0x00000000;

  (*((volatile uint32_t *)0x400FE070)) &= ~0x00002000;

  (*((volatile uint32_t *)0x400FE070)) |= 0x40000000;
  (*((volatile uint32_t *)0x400FE070)) = ((*((volatile uint32_t *)0x400FE070))&~0x1FC00000)
                  + (freq<<22);

  while(((*((volatile uint32_t *)0x400FE050))&0x00000040)==0){};

  (*((volatile uint32_t *)0x400FE070)) &= ~0x00000800;
}
