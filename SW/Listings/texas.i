# 1 "inc/TExaS.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 366 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "inc/TExaS.c" 2
# 29 "inc/TExaS.c"
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
# 30 "inc/TExaS.c" 2
# 1 "inc/../inc/CortexM.h" 1
# 45 "inc/../inc/CortexM.h"
void DisableInterrupts(void);





void EnableInterrupts(void);






long StartCritical(void);






void EndCritical(long sr);







void WaitForInterrupt(void);

void Clock_Delay(uint32_t ulCount);




void Clock_Delay1ms(uint32_t n);
# 31 "inc/TExaS.c" 2
# 1 "inc/../inc/tm4c123gh6pm.h" 1
# 32 "inc/TExaS.c" 2
# 1 "inc/../inc/TExaS.h" 1
# 30 "inc/../inc/TExaS.h"
enum TExaSmode{
  SCOPE,
  SCOPE_PD2,
  SCOPE_PE2,
  SCOPE_PB5,
  LOGICANALYZERA,
  LOGICANALYZERB,
  LOGICANALYZERC,
  LOGICANALYZERE,
  LOGICANALYZERF,
  NONE
};
# 50 "inc/../inc/TExaS.h"
void TExaS_Init(enum TExaSmode mode);





void TExaS_Stop(void);
# 33 "inc/TExaS.c" 2
# 1 "inc/../inc/PLL.h" 1
# 35 "inc/../inc/PLL.h"
void PLL_Init(uint32_t freq);
# 34 "inc/TExaS.c" 2


void Scope(void){
  (*((volatile uint32_t *)0x4000C000)) = ((*((volatile uint32_t *)0x400390A8))>>4);
}
# 97 "inc/TExaS.c"
void Timer5A_Stop(void){
  if((*((volatile uint32_t *)0x400FE604))&0x20){

    (*((volatile uint32_t *)0x40035024)) = 0x00000001;
    (*((volatile uint32_t *)0xE000E188)) = 1<<28;
  }
}
# 119 "inc/TExaS.c"
void UART_Init(uint32_t busfrequency, uint32_t baud){
  (*((volatile uint32_t *)0x400FE618)) |= 0x01;
  (*((volatile uint32_t *)0x400FE608)) |= 0x01;
  (*((volatile uint32_t *)0x4000C030)) &= ~0x00000001;
  (*((volatile uint32_t *)0x4000C024)) = busfrequency/16/baud;
  (*((volatile uint32_t *)0x4000C028)) = ((64*(busfrequency%baud))+baud/2)/baud;




  (*((volatile uint32_t *)0x4000C02C)) = (0x00000060|0x00000010);
  (*((volatile uint32_t *)0x4000C030)) |= 0x00000001;
  (*((volatile uint32_t *)0x40004420)) |= 0x03;
  (*((volatile uint32_t *)0x4000451C)) |= 0x03;

  (*((volatile uint32_t *)0x4000452C)) = ((*((volatile uint32_t *)0x4000452C))&0xFFFFFF00)+0x00000011;
  (*((volatile uint32_t *)0x40004528)) &= ~0x03;
}







void ADC1_InitPD3(void){ volatile unsigned long delay;
  (*((volatile uint32_t *)0x400FE638)) |= 0x02;
  (*((volatile uint32_t *)0x400FE608)) |= 0x08;
  while(((*((volatile uint32_t *)0x400FEA08))&0x08) == 0){};
  (*((volatile uint32_t *)0x40007400)) &= ~0x08;
  (*((volatile uint32_t *)0x40007420)) |= 0x08;
  (*((volatile uint32_t *)0x4000751C)) &= ~0x08;
  (*((volatile uint32_t *)0x40007528)) |= 0x08;
  for(delay = 0; delay<20; delay++){};
  (*((volatile uint32_t *)0x40039FC4)) = 0x01;
  (*((volatile uint32_t *)0x40039020)) = 0x0123;
  (*((volatile uint32_t *)0x40039000)) = 0x0000;
  (*((volatile uint32_t *)0x40039014)) |= 0xF000;
  (*((volatile uint32_t *)0x40039030)) = 0x03;
  (*((volatile uint32_t *)0x400390A0)) = 4;
  (*((volatile uint32_t *)0x400390A4)) = 0x0006;
  (*((volatile uint32_t *)0x40039008)) = 0x0000;
  (*((volatile uint32_t *)0x40039000)) = 0x0008;
}





void ADC1_Init_PD2(void){ volatile unsigned long delay;
  (*((volatile uint32_t *)0x400FE638)) |= 0x02;
  (*((volatile uint32_t *)0x400FE608)) |= 0x08;
  while(((*((volatile uint32_t *)0x400FEA08))&0x08) == 0){};
  (*((volatile uint32_t *)0x40007400)) &= ~0x04;
  (*((volatile uint32_t *)0x40007420)) |= 0x04;
  (*((volatile uint32_t *)0x4000751C)) &= ~0x04;
  (*((volatile uint32_t *)0x40007528)) |= 0x04;
  for(delay = 0; delay<20; delay++){};
  (*((volatile uint32_t *)0x40039FC4)) = 0x01;
  (*((volatile uint32_t *)0x40039020)) = 0x0123;
  (*((volatile uint32_t *)0x40039000)) = 0x0000;
  (*((volatile uint32_t *)0x40039014)) |= 0xF000;
  (*((volatile uint32_t *)0x40039030)) = 0x03;
  (*((volatile uint32_t *)0x400390A0)) = 5;
  (*((volatile uint32_t *)0x400390A4)) = 0x0006;
  (*((volatile uint32_t *)0x40039008)) = 0x0000;
  (*((volatile uint32_t *)0x40039000)) = 0x0008;
}





void ADC1_Init_PE2(void){ volatile unsigned long delay;
  (*((volatile uint32_t *)0x400FE638)) |= 0x02;
  (*((volatile uint32_t *)0x400FE608)) |= 0x10;
  while(((*((volatile uint32_t *)0x400FEA08))&0x10) == 0){};
  (*((volatile uint32_t *)0x40024400)) &= ~0x04;
  (*((volatile uint32_t *)0x40024420)) |= 0x04;
  (*((volatile uint32_t *)0x4002451C)) &= ~0x04;
  (*((volatile uint32_t *)0x40024528)) |= 0x04;
  for(delay = 0; delay<20; delay++){};
  (*((volatile uint32_t *)0x40039FC4)) = 0x01;
  (*((volatile uint32_t *)0x40039020)) = 0x0123;
  (*((volatile uint32_t *)0x40039000)) = 0x0000;
  (*((volatile uint32_t *)0x40039014)) |= 0xF000;
  (*((volatile uint32_t *)0x40039030)) = 0x03;
  (*((volatile uint32_t *)0x400390A0)) = 1;
  (*((volatile uint32_t *)0x400390A4)) = 0x0006;
  (*((volatile uint32_t *)0x40039008)) = 0x0000;
  (*((volatile uint32_t *)0x40039000)) = 0x0008;
}





void ADC1_Init_PB5(void){ volatile unsigned long delay;
  (*((volatile uint32_t *)0x400FE638)) |= 0x02;
  (*((volatile uint32_t *)0x400FE608)) |= 0x02;
  while(((*((volatile uint32_t *)0x400FEA08))&0x02) == 0){};
  (*((volatile uint32_t *)0x40005400)) &= ~0x20;
  (*((volatile uint32_t *)0x40005420)) |= 0x20;
  (*((volatile uint32_t *)0x4000551C)) &= ~0x20;
  (*((volatile uint32_t *)0x40005528)) |= 0x20;
  for(delay = 0; delay<20; delay++){};
  (*((volatile uint32_t *)0x40039FC4)) = 0x01;
  (*((volatile uint32_t *)0x40039020)) = 0x0123;
  (*((volatile uint32_t *)0x40039000)) = 0x0000;
  (*((volatile uint32_t *)0x40039014)) |= 0xF000;
  (*((volatile uint32_t *)0x40039030)) = 0x03;
  (*((volatile uint32_t *)0x400390A0)) = 11;
  (*((volatile uint32_t *)0x400390A4)) = 0x0006;
  (*((volatile uint32_t *)0x40039008)) = 0x0000;
  (*((volatile uint32_t *)0x40039000)) = 0x0008;
}



void LogicAnalyzerA(void){
  (*((volatile uint32_t *)0x4000C000)) = ((*((volatile uint32_t *)0x400043F0))>>2)|0x80;
}


void LogicAnalyzerB(void){
  (*((volatile uint32_t *)0x4000C000)) = (*((volatile uint32_t *)0x400051FC))|0x80;
}


void LogicAnalyzerC(void){
  (*((volatile uint32_t *)0x4000C000)) = ((*((volatile uint32_t *)0x400063C0))>>4)|0x80;
}

void LogicAnalyzerE(void){
  (*((volatile uint32_t *)0x4000C000)) = (*((volatile uint32_t *)0x400243FC))|0x80;
}

void LogicAnalyzerF(void){
  (*((volatile uint32_t *)0x4000C000)) = (*((volatile uint32_t *)0x400253FC))|0x80;
}
# 329 "inc/TExaS.c"
void TExaS_Stop(void){
  Timer5A_Stop();
}
