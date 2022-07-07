# 1 "DMATimer.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 366 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "DMATimer.c" 2
# 43 "DMATimer.c"
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
# 44 "DMATimer.c" 2
# 1 "././inc/tm4c123gh6pm.h" 1
# 45 "DMATimer.c" 2
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
# 46 "DMATimer.c" 2


void DisableInterrupts(void);
void EnableInterrupts(void);
int32_t StartCritical(void);
void EndCritical(int32_t sr);
void WaitForInterrupt(void);





uint32_t ucControlTable[256] __attribute__ ((aligned(1024)));





uint8_t *SourcePt;
volatile uint32_t *DestinationPt;
uint32_t BlockSize;
uint32_t NumBlocks;
uint32_t NumberOfBuffersSent=0;
enum ch8status Status = UNINITIALIZED;





void Timer5A_Init(uint16_t period){
  (*((volatile uint32_t *)0x400FE604)) |= 0x20;
  while(((*((volatile uint32_t *)0x400FEA04))&0x00000020) == 0){};
  (*((volatile uint32_t *)0x4003500C)) &= ~0x00000001;
  (*((volatile uint32_t *)0x40035000)) = 0x00000004;
  (*((volatile uint32_t *)0x40035004)) = 0x00000002;
  (*((volatile uint32_t *)0x40035028)) = period-1;
  (*((volatile uint32_t *)0x40035038)) = 0;
  (*((volatile uint32_t *)0x40035024)) = 0x00000001;
  (*((volatile uint32_t *)0x40035018)) |= 0x00000001;
  (*((volatile uint32_t *)0xE000E45C)) = ((*((volatile uint32_t *)0xE000E45C))&0xFFFFFF00)|0x00000040;
  (*((volatile uint32_t *)0xE000E108)) = 0x10000000;



}
# 102 "DMATimer.c"
void DMA_Init(uint16_t period, uint32_t *destination){
  int i;
  DestinationPt = destination;

  for(i=0; i<256; i++){
    ucControlTable[i] = 0;
  }
  (*((volatile uint32_t *)0x400FE60C)) = 0x01;

  while(((*((volatile uint32_t *)0x400FEA0C))&0x00000001) == 0){};
  (*((volatile uint32_t *)0x400FF004)) = 0x01;
  (*((volatile uint32_t *)0x400FF008)) = (uint32_t)ucControlTable;
  (*((volatile uint32_t *)0x400FF514)) = ((*((volatile uint32_t *)0x400FF514))&0xFFFFFFF0)|0x00000003;
  (*((volatile uint32_t *)0x400FF038)) |= 0x00000100;
  (*((volatile uint32_t *)0x400FF034)) = 0x00000100;
  (*((volatile uint32_t *)0x400FF01C)) = 0x00000100;
  (*((volatile uint32_t *)0x400FF024)) = 0x00000100;
  Timer5A_Init(period);
  Status = IDLE;
}


void static setRegular(void){
  ucControlTable[(8*4)] = (uint32_t)SourcePt+BlockSize-1;
  ucControlTable[(8*4)+1] = (uint32_t)DestinationPt;
  ucControlTable[(8*4)+2] = 0xC0000003+((BlockSize-1)<<4);
# 142 "DMATimer.c"
  SourcePt = SourcePt+BlockSize;
}

void static setAlternate(void){
  ucControlTable[(8*4+128)] = (uint32_t)SourcePt+BlockSize-1;
  ucControlTable[(8*4+128)+1] = (uint32_t)DestinationPt;
  ucControlTable[(8*4+128)+2] = 0xC0000003+((BlockSize-1)<<4);
# 160 "DMATimer.c"
  SourcePt = SourcePt+BlockSize;
}
# 170 "DMATimer.c"
void DMA_Transfer(uint8_t *source, uint32_t blocksize,
                   uint32_t numblocks){
  DisableInterrupts();
  Status = BUSY;
  BlockSize = blocksize/2;
  NumBlocks = 2*numblocks;
  NumberOfBuffersSent = 0;
  SourcePt = source;
  setRegular();
  setAlternate();
  (*((volatile uint32_t *)0xE000E108)) = 0x10000000;

  (*((volatile uint32_t *)0x4003500C)) |= 0x00000001;
  (*((volatile uint32_t *)0x400FF028)) |= 0x00000100;
  EnableInterrupts();
}





void DMA_Stop(void){
  (*((volatile uint32_t *)0x400FF02C)) = 0x00000100;
  (*((volatile uint32_t *)0xE000E188)) = 0x10000000;
  (*((volatile uint32_t *)0x4003500C)) &= ~0x00000001;
  Status = IDLE;
}

void Timer5A_Handler(void){
  (*((volatile uint32_t *)0x40035024)) = 0x00000001;
# 211 "DMATimer.c"
  if((ucControlTable[(8*4)+2]&0x0007) == 0){
    NumberOfBuffersSent++;
    if(NumberOfBuffersSent < (NumBlocks - 1)){
      setRegular();
    }
  }
  if((ucControlTable[(8*4+128)+2]&0x0007) == 0){
    NumberOfBuffersSent++;
    if(NumberOfBuffersSent < (NumBlocks - 1)){
      setAlternate();
    }
  }
  if(((ucControlTable[(8*4)+2]&0x0007) == 0) &&
     ((ucControlTable[(8*4+128)+2]&0x0007) == 0)){
    DMA_Stop();
  }
}






enum ch8status DMA_Status(void){
  return Status;
}
