# 1 "WS2812.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 366 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "WS2812.c" 2
# 31 "WS2812.c"
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
# 32 "WS2812.c" 2
# 1 "./DMATimer.h" 1
# 56 "./DMATimer.h"
void DMA_Init(uint16_t period, uint32_t *destination);
# 66 "./DMATimer.h"
void DMA_Transfer(uint8_t *source, uint32_t blocksize,
                   uint32_t numblocks);





void DMA_Stop(void);






enum ch8status{
  IDLE = 0,
  BUSY = 1,
  UNINITIALIZED = 2
};
enum ch8status DMA_Status(void);
# 33 "WS2812.c" 2
# 1 ".\\./inc/PLL.h" 1
# 35 ".\\./inc/PLL.h"
void PLL_Init(uint32_t freq);
# 34 "WS2812.c" 2
# 1 ".\\./inc/SysTick.h" 1
# 35 ".\\./inc/SysTick.h"
void SysTick_Init(void);



void SysTick_Wait(uint32_t delay);



void SysTick_Wait10ms(uint32_t delay);



void SysTick50_Wait10ms(uint32_t delay);



void SysTick80_Wait10ms(uint32_t delay);


void SysTick_Start(void);


uint32_t SysTick_Stop(void);
# 35 "WS2812.c" 2
# 1 "./WS2812.h" 1
# 45 "./WS2812.h"
void WS2812_Init(void);
# 54 "./WS2812.h"
void WS2812_SendReset(void);







void WS2812_ClearBuffer(void);
# 75 "./WS2812.h"
void WS2812_AddColor(uint8_t red, uint8_t green, uint8_t blue, uint8_t row);
# 88 "./WS2812.h"
void WS2812_SetCursor(uint8_t newCursor, uint8_t row);







uint8_t WS2812_GetCursor(uint8_t row);
# 106 "./WS2812.h"
void WS2812_PrintBuffer(void);
# 36 "WS2812.c" 2
# 53 "WS2812.c"
void DisableInterrupts(void);
void EnableInterrupts(void);
int32_t StartCritical(void);
void EndCritical(int32_t sr);
void WaitForInterrupt(void);
# 79 "WS2812.c"
 void Delay(uint32_t u1Count){
  for(int i = 0; i < u1Count; i ++){

  }
 }
# 101 "WS2812.c"
uint8_t buffer[3*8*4*12];
uint32_t cursor[1];
# 112 "WS2812.c"
void WS2812_Init(void){
  PLL_Init(80);

  (*((volatile uint32_t *)0x400FE608)) |= 0x00000010;

  while(((*((volatile uint32_t *)0x400FEA08))&0x00000010) == 0){};
  (*((volatile uint32_t *)0x40024400)) |= ((1<<1) - 1);
  (*((volatile uint32_t *)0x40024420)) &= ~((1<<1) - 1);
  (*((volatile uint32_t *)0x40024508)) |= ((1<<1) - 1);
  (*((volatile uint32_t *)0x4002451C)) |= ((1<<1) - 1);

  (*((volatile uint32_t *)0x4002452C)) = ((*((volatile uint32_t *)0x4002452C))&((0xFFFFFFFF>>(4*1))<<(4*1)))+(0*((1<<1) - 1));
  (*((volatile uint32_t *)0x40024528)) &= ~((1<<1) - 1);

  DMA_Init(32, (uint32_t *)(0x40024000 + (((1<<1) - 1)<<2)));



  WS2812_ClearBuffer();
  WS2812_SendReset();
}
# 141 "WS2812.c"
void WS2812_SendReset(void){

  while(DMA_Status() == BUSY){};


  *(uint32_t *)(0x40024000 + (((1<<1) - 1)<<2)) = 0x00;
  Delay(1333);
}







void WS2812_ClearBuffer(void){
  uint32_t i;

  while(DMA_Status() == BUSY){};

  for(i=0; i<1; i=i+1){
    cursor[i] = 0;
  }
  for(i=0; i<(3*8*4*12); i=i+4){
    buffer[i] = ((1<<1) - 1);
    buffer[i+1] = 0;
    buffer[i+2] = 0;
    buffer[i+3] = 0;
  }
}
# 183 "WS2812.c"
void WS2812_AddColor(uint8_t red, uint8_t green, uint8_t blue, uint8_t row){
  int i, mask;
  if(row >= 1){
    return;
  }

  while(DMA_Status() == BUSY){};

  mask = 1<<row;
  for(i=0x80; i>0x00; i=i>>1){
    if(green&i){

      buffer[cursor[row]+1] |= mask;


    } else{

      buffer[cursor[row]+1] &= ~mask;


    }
    cursor[row] = cursor[row] + 4;
  }
  for(i=0x80; i>0x00; i=i>>1){
    if(red&i){

      buffer[cursor[row]+1] |= mask;


    } else{

      buffer[cursor[row]+1] &= ~mask;


    }
    cursor[row] = cursor[row] + 4;
  }
  for(i=0x80; i>0x00; i=i>>1){
    if(blue&i){

      buffer[cursor[row]+1] |= mask;


    } else{

      buffer[cursor[row]+1] &= ~mask;


    }
    cursor[row] = cursor[row] + 4;
  }
  if(cursor[row] >= (3*8*4*12)){

    cursor[row] = 0;
  }
}
# 251 "WS2812.c"
void WS2812_SetCursor(uint8_t newCursor, uint8_t row){
  if(row >= 1){
    return;
  }
  newCursor = newCursor%12;
  cursor[row] = newCursor*3*8*4;
}







uint8_t WS2812_GetCursor(uint8_t row){
  if(row >= 1){
    return 0;
  }
  return cursor[row]/3/8/4;
}
# 281 "WS2812.c"
void WS2812_PrintBuffer(void){
  if(DMA_Status() != IDLE){


    return;
  }

 DMA_Transfer((uint8_t *)buffer, 1152, 2);
}
