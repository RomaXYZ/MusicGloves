# 1 "inc/LED.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 366 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "inc/LED.c" 2








# 1 "inc/../inc/LED.h" 1
# 31 "inc/../inc/LED.h"
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
# 32 "inc/../inc/LED.h" 2
# 1 "inc/../inc/tm4c123gh6pm.h" 1
# 33 "inc/../inc/LED.h" 2
# 43 "inc/../inc/LED.h"
void LED_Init(void);
# 53 "inc/../inc/LED.h"
uint32_t Board_Input(void);






void LED_RedOn(void);





void LED_RedOff(void);





void LED_RedToggle(void);






void LED_BlueOn(void);





void LED_BlueOff(void);





void LED_BlueToggle(void);






void LED_GreenOn(void);





void LED_GreenOff(void);





void LED_GreenToggle(void);
# 10 "inc/LED.c" 2
# 50 "inc/LED.c"
void LED_Init(void){
  (*((volatile uint32_t *)0x400FE608)) |= 0x20;
  while(((*((volatile uint32_t *)0x400FEA08)) & 0x20)!=0x20){};
  (*((volatile uint32_t *)0x40025520)) = 0x4C4F434B;
  (*((volatile uint32_t *)0x40025524)) = 0x1F;
  (*((volatile uint32_t *)0x40025528)) &= ~0x1F;
  (*((volatile uint32_t *)0x4002552C)) = 0x00000000;
  (*((volatile uint32_t *)0x40025400)) = 0x0E;
  (*((volatile uint32_t *)0x40025420)) = 0;
  (*((volatile uint32_t *)0x40025510)) = 0x11;
  (*((volatile uint32_t *)0x4002551C)) = 0x1F;
}
# 70 "inc/LED.c"
uint32_t Board_Input(void){
  return (~(((*((volatile uint32_t *)0x40025040))>>3)+(*((volatile uint32_t *)0x40025004))))&0x03;
}




void LED_RedOn(void){
  (*((volatile uint32_t *)0x40025008)) = 0x02;
}




void LED_RedOff(void){
  (*((volatile uint32_t *)0x40025008)) = 0x00;
}




void LED_RedToggle(void){
  (*((volatile uint32_t *)0x40025008)) ^= 0x02;
}




void LED_BlueOn(void){
  (*((volatile uint32_t *)0x40025010)) = 0x04;
}




void LED_BlueOff(void){
  (*((volatile uint32_t *)0x40025010)) = 0x00;
}




void LED_BlueToggle(void){
  (*((volatile uint32_t *)0x40025010)) ^= 0x04;
}




void LED_GreenToggle(void){
  (*((volatile uint32_t *)0x40025020)) ^= 0x08;
}




void LED_GreenOn(void){
  (*((volatile uint32_t *)0x40025020)) = 0x08;
}




void LED_GreenOff(void){
  (*((volatile uint32_t *)0x40025020)) = 0x00;
}
