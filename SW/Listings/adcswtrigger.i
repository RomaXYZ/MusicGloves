# 1 "inc/ADCSWTrigger.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 366 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "inc/ADCSWTrigger.c" 2
# 24 "inc/ADCSWTrigger.c"
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
# 25 "inc/ADCSWTrigger.c" 2
# 1 "inc/../inc/tm4c123gh6pm.h" 1
# 26 "inc/ADCSWTrigger.c" 2
# 60 "inc/ADCSWTrigger.c"
void ADC0_InitSWTriggerSeq3_Ch9(void){
  (*((volatile uint32_t *)0x400FE638)) |= 0x0001;

  (*((volatile uint32_t *)0x400FE608)) |= 0x10;
  while(((*((volatile uint32_t *)0x400FEA08))&0x10) != 0x10){};
  (*((volatile uint32_t *)0x40024400)) &= ~0x10;
  (*((volatile uint32_t *)0x40024420)) |= 0x10;
  (*((volatile uint32_t *)0x4002451C)) &= ~0x10;
  (*((volatile uint32_t *)0x40024528)) |= 0x10;

  while(((*((volatile uint32_t *)0x400FEA38))&0x0001) != 0x0001){};


  (*((volatile uint32_t *)0x40038FC4)) &= ~0xF;
  (*((volatile uint32_t *)0x40038FC4)) |= 0x1;
  (*((volatile uint32_t *)0x40038020)) = 0x0123;
  (*((volatile uint32_t *)0x40038000)) &= ~0x0008;
  (*((volatile uint32_t *)0x40038014)) &= ~0xF000;
  (*((volatile uint32_t *)0x400380A0)) &= ~0x000F;
  (*((volatile uint32_t *)0x400380A0)) += 9;
  (*((volatile uint32_t *)0x400380A4)) = 0x0006;
  (*((volatile uint32_t *)0x40038008)) &= ~0x0008;
  (*((volatile uint32_t *)0x40038000)) |= 0x0008;
}


void ADC0_InitSWTriggerSeq3_Ch7(void){
  (*((volatile uint32_t *)0x400FE638)) |= 0x0001;

  (*((volatile uint32_t *)0x400FE608)) |= 0x08;
  while(((*((volatile uint32_t *)0x400FEA08))&0x08) != 0x08){};
  (*((volatile uint32_t *)0x40007400)) &= ~0x01;
  (*((volatile uint32_t *)0x40007420)) |= 0x01;
  (*((volatile uint32_t *)0x4000751C)) &= ~0x01;
  (*((volatile uint32_t *)0x40007528)) |= 0x01;

  while(((*((volatile uint32_t *)0x400FEA38))&0x0001) != 0x0001){};


  (*((volatile uint32_t *)0x40038FC4)) &= ~0xF;
  (*((volatile uint32_t *)0x40038FC4)) |= 0x1;
  (*((volatile uint32_t *)0x40038020)) = 0x0123;
  (*((volatile uint32_t *)0x40038000)) &= ~0x0008;
  (*((volatile uint32_t *)0x40038014)) &= ~0xF000;
  (*((volatile uint32_t *)0x400380A0)) &= ~0x000F;
  (*((volatile uint32_t *)0x400380A0)) += 7;
  (*((volatile uint32_t *)0x400380A4)) = 0x0006;
  (*((volatile uint32_t *)0x40038008)) &= ~0x0008;
  (*((volatile uint32_t *)0x40038000)) |= 0x0008;
}
# 123 "inc/ADCSWTrigger.c"
void ADC0_InitSWTriggerSeq3(unsigned char channelNum){ volatile unsigned long delay;
  switch(channelNum){
    case 0:
    case 1:
    case 2:
    case 3:
    case 8:
    case 9:
      (*((volatile uint32_t *)0x400FE608)) |= 0x00000010; break;
    case 4:
    case 5:
    case 6:
    case 7:
      (*((volatile uint32_t *)0x400FE608)) |= 0x00000008; break;
    case 10:
    case 11:
      (*((volatile uint32_t *)0x400FE608)) |= 0x00000002; break;
    default: return;
  }
  delay = (*((volatile uint32_t *)0x400FE608));
  delay = (*((volatile uint32_t *)0x400FE608));
  delay = (*((volatile uint32_t *)0x400FE608));
  delay = (*((volatile uint32_t *)0x400FE608));
  switch(channelNum){
    case 0:
      (*((volatile uint32_t *)0x40024400)) &= ~0x08;
      (*((volatile uint32_t *)0x40024420)) |= 0x08;
      (*((volatile uint32_t *)0x4002451C)) &= ~0x08;
      (*((volatile uint32_t *)0x40024528)) |= 0x08;
      break;
    case 1:
      (*((volatile uint32_t *)0x40024400)) &= ~0x04;
      (*((volatile uint32_t *)0x40024420)) |= 0x04;
      (*((volatile uint32_t *)0x4002451C)) &= ~0x04;
      (*((volatile uint32_t *)0x40024528)) |= 0x04;
      break;
    case 2:
      (*((volatile uint32_t *)0x40024400)) &= ~0x02;
      (*((volatile uint32_t *)0x40024420)) |= 0x02;
      (*((volatile uint32_t *)0x4002451C)) &= ~0x02;
      (*((volatile uint32_t *)0x40024528)) |= 0x02;
      break;
    case 3:
      (*((volatile uint32_t *)0x40024400)) &= ~0x01;
      (*((volatile uint32_t *)0x40024420)) |= 0x01;
      (*((volatile uint32_t *)0x4002451C)) &= ~0x01;
      (*((volatile uint32_t *)0x40024528)) |= 0x01;
      break;
    case 4:
      (*((volatile uint32_t *)0x40007400)) &= ~0x08;
      (*((volatile uint32_t *)0x40007420)) |= 0x08;
      (*((volatile uint32_t *)0x4000751C)) &= ~0x08;
      (*((volatile uint32_t *)0x40007528)) |= 0x08;
      break;
    case 5:
      (*((volatile uint32_t *)0x40007400)) &= ~0x04;
      (*((volatile uint32_t *)0x40007420)) |= 0x04;
      (*((volatile uint32_t *)0x4000751C)) &= ~0x04;
      (*((volatile uint32_t *)0x40007528)) |= 0x04;
      break;
    case 6:
      (*((volatile uint32_t *)0x40007400)) &= ~0x02;
      (*((volatile uint32_t *)0x40007420)) |= 0x02;
      (*((volatile uint32_t *)0x4000751C)) &= ~0x02;
      (*((volatile uint32_t *)0x40007528)) |= 0x02;
      break;
    case 7:
      (*((volatile uint32_t *)0x40007400)) &= ~0x01;
      (*((volatile uint32_t *)0x40007420)) |= 0x01;
      (*((volatile uint32_t *)0x4000751C)) &= ~0x01;
      (*((volatile uint32_t *)0x40007528)) |= 0x01;
      break;
    case 8:
      (*((volatile uint32_t *)0x40024400)) &= ~0x20;
      (*((volatile uint32_t *)0x40024420)) |= 0x20;
      (*((volatile uint32_t *)0x4002451C)) &= ~0x20;
      (*((volatile uint32_t *)0x40024528)) |= 0x20;
      break;
    case 9:
      (*((volatile uint32_t *)0x40024400)) &= ~0x10;
      (*((volatile uint32_t *)0x40024420)) |= 0x10;
      (*((volatile uint32_t *)0x4002451C)) &= ~0x10;
      (*((volatile uint32_t *)0x40024528)) |= 0x10;
      break;
    case 10:
      (*((volatile uint32_t *)0x40005400)) &= ~0x10;
      (*((volatile uint32_t *)0x40005420)) |= 0x10;
      (*((volatile uint32_t *)0x4000551C)) &= ~0x10;
      (*((volatile uint32_t *)0x40005528)) |= 0x10;
      break;
    case 11:
      (*((volatile uint32_t *)0x40005400)) &= ~0x20;
      (*((volatile uint32_t *)0x40005420)) |= 0x20;
      (*((volatile uint32_t *)0x4000551C)) &= ~0x20;
      (*((volatile uint32_t *)0x40005528)) |= 0x20;
      break;
  }
  (*((volatile uint32_t *)0x400FE638)) |= 0x00000001;




  while(((*((volatile uint32_t *)0x400FEA38))&0x0001) != 0x0001){};

  (*((volatile uint32_t *)0x40038FC4)) &= ~0xF;
  (*((volatile uint32_t *)0x40038FC4)) |= 0x1;
  (*((volatile uint32_t *)0x40038020)) = 0x3210;
  (*((volatile uint32_t *)0x40038000)) &= ~0x0008;
  (*((volatile uint32_t *)0x40038014)) &= ~0xF000;
  (*((volatile uint32_t *)0x400380A0)) &= ~0x000F;
  (*((volatile uint32_t *)0x400380A0)) += channelNum;
  (*((volatile uint32_t *)0x400380A4)) = 0x0006;
  (*((volatile uint32_t *)0x40038008)) &= ~0x0008;
  (*((volatile uint32_t *)0x40038000)) |= 0x0008;
}




uint32_t ADC0_InSeq3(void){ uint32_t result;
  (*((volatile uint32_t *)0x40038028)) = 0x0008;
  while(((*((volatile uint32_t *)0x40038004))&0x08)==0){};

  result = (*((volatile uint32_t *)0x400380A8))&0xFFF;
  (*((volatile uint32_t *)0x4003800C)) = 0x0008;
  return result;
}
# 280 "inc/ADCSWTrigger.c"
void ADC_Init89(void){
  volatile uint32_t delay;
  (*((volatile uint32_t *)0x400FE638)) |= 0x00000001;
  (*((volatile uint32_t *)0x400FE608)) |= 0x00000010;
  delay = (*((volatile uint32_t *)0x400FE608));
  delay = (*((volatile uint32_t *)0x400FE608));
  (*((volatile uint32_t *)0x40024400)) &= ~0x30;
  (*((volatile uint32_t *)0x40024420)) |= 0x30;
  (*((volatile uint32_t *)0x4002451C)) &= ~0x30;

  (*((volatile uint32_t *)0x4002452C)) = (*((volatile uint32_t *)0x4002452C))&0xFF00FFFF;
  (*((volatile uint32_t *)0x40024528)) |= 0x30;
  (*((volatile uint32_t *)0x40038FC4)) &= ~0xF;
  (*((volatile uint32_t *)0x40038FC4)) |= 0x1;
  (*((volatile uint32_t *)0x40038020)) = 0x3210;
  (*((volatile uint32_t *)0x40038000)) &= ~0x0004;
  (*((volatile uint32_t *)0x40038014)) &= ~0x0F00;
  (*((volatile uint32_t *)0x40038080)) = 0x0089;
  (*((volatile uint32_t *)0x40038084)) = 0x0060;
  (*((volatile uint32_t *)0x40038008)) &= ~0x0004;
  (*((volatile uint32_t *)0x40038000)) |= 0x0004;
}
# 313 "inc/ADCSWTrigger.c"
void ADC_In89(uint32_t data[2]){
  (*((volatile uint32_t *)0x40038028)) = 0x0004;
  while(((*((volatile uint32_t *)0x40038004))&0x04)==0){};
  data[1] = (*((volatile uint32_t *)0x40038088))&0xFFF;
  data[0] = (*((volatile uint32_t *)0x40038088))&0xFFF;
  (*((volatile uint32_t *)0x4003800C)) = 0x0004;
}
# 337 "inc/ADCSWTrigger.c"
void(*UserTask2)(uint32_t x, uint32_t y, uint32_t z);
void ADC0_InitSWTriggerSeq2(void(*task)(uint32_t x, uint32_t y, uint32_t z)){

  (*((volatile uint32_t *)0x400FE608)) |= 0x08;

  while(((*((volatile uint32_t *)0x400FEA08))&0x08) == 0){};
  (*((volatile uint32_t *)0x40007400)) &= ~0x0E;
  (*((volatile uint32_t *)0x40007420)) |= 0x0E;
  (*((volatile uint32_t *)0x4000751C)) &= ~0x0E;
  (*((volatile uint32_t *)0x40007528)) |= 0x0E;

  (*((volatile uint32_t *)0x400FE638)) |= 0x01;

  while(((*((volatile uint32_t *)0x400FEA38))&0x01) == 0){};
  (*((volatile uint32_t *)0x40038FC4)) = 0x01;
  (*((volatile uint32_t *)0x40038020)) = 0x3210;
  (*((volatile uint32_t *)0x40038000)) &= ~0x04;
  (*((volatile uint32_t *)0x40038014)) = ((*((volatile uint32_t *)0x40038014))&0xFFFFF0FF)+0x000;
  (*((volatile uint32_t *)0x40038080)) = 0x0456;
  (*((volatile uint32_t *)0x40038084)) = 0x0600;
  (*((volatile uint32_t *)0x40038008)) &= ~0x04;
  (*((volatile uint32_t *)0x40038000)) |= 0x04;

  UserTask2 = task;
}
# 373 "inc/ADCSWTrigger.c"
void ADC0_InSeq2(void){
  uint32_t x, y, z;
  (*((volatile uint32_t *)0x40038028)) = 0x0004;
  while(((*((volatile uint32_t *)0x40038004))&0x04)==0){};
  x = (*((volatile uint32_t *)0x40038088))&0xFFF;
  y = (*((volatile uint32_t *)0x40038088))&0xFFF;
  z = (*((volatile uint32_t *)0x40038088))&0xFFF;
  UserTask2(x, y, z);
  (*((volatile uint32_t *)0x4003800C)) = 0x0004;
}
# 397 "inc/ADCSWTrigger.c"
void ADC0_InitSWTriggerSeq3_InternalTemperature(void){
  (*((volatile uint32_t *)0x400FE638)) |= 0x0001;
  while(((*((volatile uint32_t *)0x400FEA38))&0x0001) != 0x0001){};
  (*((volatile uint32_t *)0x40038FC4)) &= ~0xF;
  (*((volatile uint32_t *)0x40038FC4)) |= 0x1;
  (*((volatile uint32_t *)0x40038020)) = 0x0123;
  (*((volatile uint32_t *)0x40038000)) &= ~0x0008;
  (*((volatile uint32_t *)0x40038014)) &= ~0xF000;
  (*((volatile uint32_t *)0x40038030)) = 0x06;
  (*((volatile uint32_t *)0x400380A4)) = 0x000E;
  (*((volatile uint32_t *)0x40038008)) &= ~0x0008;
  (*((volatile uint32_t *)0x40038000)) |= 0x0008;
}






uint32_t ADC0_InSeq3_InternalTemperature(void){ uint32_t result;
  (*((volatile uint32_t *)0x40038028)) = 0x0008;
  while(((*((volatile uint32_t *)0x40038004))&0x08)==0){};

  result = (*((volatile uint32_t *)0x400380A8))&0xFFF;
  (*((volatile uint32_t *)0x4003800C)) = 0x0008;
  result = 1475 - (75 * (33 * result) / 4096);
  return result;
}
# 435 "inc/ADCSWTrigger.c"
void ADC_Init3210(void){
  volatile uint32_t delay;
  (*((volatile uint32_t *)0x400FE638)) |= 0x00000001;
  (*((volatile uint32_t *)0x400FE608)) |= 0x10;
  while(((*((volatile uint32_t *)0x400FEA08))&0x10) == 0){};
  while(((*((volatile uint32_t *)0x400FEA38))&0x0001) != 0x0001){};
  (*((volatile uint32_t *)0x40024400)) &= ~0x0E;
  (*((volatile uint32_t *)0x40024420)) |= 0x0E;
  (*((volatile uint32_t *)0x4002451C)) &= ~0x0E;
  (*((volatile uint32_t *)0x4002452C)) = (*((volatile uint32_t *)0x4002452C))&0xFFFF000F;
  (*((volatile uint32_t *)0x40024528)) |= 0x0E;
  (*((volatile uint32_t *)0x40038FC4)) &= ~0xF;
  (*((volatile uint32_t *)0x40038FC4)) |= 0x1;
  (*((volatile uint32_t *)0x40038020)) = 0x3210;
  (*((volatile uint32_t *)0x40038000)) &= ~0x0004;
  (*((volatile uint32_t *)0x40038014)) &= ~0x0F00;
  (*((volatile uint32_t *)0x40038030)) = 0x06;
  (*((volatile uint32_t *)0x40038080)) = 0x0012;
  (*((volatile uint32_t *)0x40038084)) = 0x0600;
  (*((volatile uint32_t *)0x40038008)) &= ~0x0004;
  (*((volatile uint32_t *)0x40038000)) |= 0x0004;
}
# 470 "inc/ADCSWTrigger.c"
void ADC_In3210(uint32_t data[3]){
  (*((volatile uint32_t *)0x40038028)) = 0x0004;
  while(((*((volatile uint32_t *)0x40038004))&0x04)==0){};

  data[0] = (*((volatile uint32_t *)0x40038088))&0xFFF;
  data[1] = (*((volatile uint32_t *)0x40038088))&0xFFF;
  data[2] = (*((volatile uint32_t *)0x40038088))&0xFFF;
  (*((volatile uint32_t *)0x4003800C)) = 0x0004;
}
