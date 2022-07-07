# 1 "inc/LaunchPad.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 366 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "inc/LaunchPad.c" 2
# 44 "inc/LaunchPad.c"
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
# 45 "inc/LaunchPad.c" 2
# 1 "inc/../inc/LaunchPad.h" 1
# 54 "inc/../inc/LaunchPad.h"
void LaunchPad_Init(void);
# 65 "inc/../inc/LaunchPad.h"
uint8_t LaunchPad_Input(void);
void LaunchPad_WaitForTouch(void);
void LaunchPad_WaitForRelease(void);





void LaunchPad_Output(uint8_t data);
# 46 "inc/LaunchPad.c" 2
# 1 "inc/../inc/tm4c123gh6pm.h" 1
# 47 "inc/LaunchPad.c" 2
# 1 "inc/../inc/CortexM.h" 1
# 45 "inc/../inc/CortexM.h"
void DisableInterrupts(void);





void EnableInterrupts(void);






long StartCritical(void);






void EndCritical(long sr);







void WaitForInterrupt(void);

void Clock_Delay(uint32_t ulCount);




void Clock_Delay1ms(uint32_t n);
# 48 "inc/LaunchPad.c" 2





void LaunchPad_Init(void){
  (*((volatile uint32_t *)0x400FE608)) |= 0x00000020;
  while(((*((volatile uint32_t *)0x400FEA08))&0x20) == 0){};
  (*((volatile uint32_t *)0x40025520)) = 0x4C4F434B;
  (*((volatile uint32_t *)0x40025524)) = 0x1F;

  (*((volatile uint32_t *)0x40025400)) = 0x0E;
  (*((volatile uint32_t *)0x40025510)) = 0x11;
  (*((volatile uint32_t *)0x4002551C)) = 0x1F;
  (*((volatile uint32_t *)0x400253FC)) = 0;
}
# 74 "inc/LaunchPad.c"
uint8_t LaunchPad_Input(void){
  uint32_t data;

  data = ~(*((volatile uint32_t *)0x400253FC));

  return (((data&0x10)>>3)|((data&0x01)));
}




void static DelayMs(uint32_t n){
  volatile uint32_t time;
  while(n){
    time = 6665;
    while(time){
      time--;
    }
    n--;
  }
}
void LaunchPad_WaitForTouch(void){
  while(((*((volatile uint32_t *)0x40025004))==0x01)&&((*((volatile uint32_t *)0x40025040))==0x10)){
   DelayMs(10);
  }
}

void LaunchPad_WaitForRelease(void){
  while(((*((volatile uint32_t *)0x40025004))==0x01)&&((*((volatile uint32_t *)0x40025040))==0x10)){};
  DelayMs(10);
  while(((*((volatile uint32_t *)0x40025004))!=0x01)||((*((volatile uint32_t *)0x40025040))!=0x10)){};
  DelayMs(10);
}





void LaunchPad_Output(uint8_t data){
  (*((volatile uint32_t *)0x400253FC)) = data<<1;
}
