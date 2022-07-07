# 1 "DAC.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 366 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "DAC.c" 2
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
# 2 "DAC.c" 2
# 1 "././inc/tm4c123gh6pm.h" 1
# 3 "DAC.c" 2

void DAC_Init(uint16_t data){

 (*((volatile uint32_t *)0x400FE61C)) |= 0x02;
  (*((volatile uint32_t *)0x400FE608)) |= 0x08;
  while(((*((volatile uint32_t *)0x400FEA08))&0x08) == 0){};
  (*((volatile uint32_t *)0x40009004)) = 0x00000000;
  (*((volatile uint32_t *)0x40007420)) |= 0x0B;
  (*((volatile uint32_t *)0x4000751C)) |= 0x0B;
  (*((volatile uint32_t *)0x4000752C)) = ((*((volatile uint32_t *)0x4000752C)) & 0xFFFF0F00) + 0x00002022;
  (*((volatile uint32_t *)0x40007528)) &= ~0x0B;
  (*((volatile uint32_t *)0x40009010)) = 0x08;
  (*((volatile uint32_t *)0x40009000)) &= ~(0x0000FFF0);
  (*((volatile uint32_t *)0x40009000)) += 0x40;
  (*((volatile uint32_t *)0x40009000)) |= 0x0F;
  (*((volatile uint32_t *)0x40009008)) = data;
  (*((volatile uint32_t *)0x40009004)) |= 0x00000002;

}


void DAC_Out(uint16_t code){
 while(((*((volatile uint32_t *)0x4000900C))&0x00000002)==0){};
 (*((volatile uint32_t *)0x40009008)) = code;
}
