# 1 "Neopixel.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 366 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "Neopixel.c" 2
# 1 ".\\Neopixel.h" 1
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
# 2 ".\\Neopixel.h" 2

void addColor(uint8_t red, uint8_t green, uint8_t blue);

void NeoPixel_Init(void);

void printBuffer(void);

void SetNeoNotes(uint32_t note1, uint32_t note2, uint32_t note3, uint32_t note4);

void setBrightness(int volume);

void runNeoTest(void);

void sendreset(void);
# 2 "Neopixel.c" 2



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
# 6 "Neopixel.c" 2
# 1 "././inc/tm4c123gh6pm.h" 1
# 7 "Neopixel.c" 2

void EnableInterrupts(void);
int Vol;

int old_Colors[4];
# 29 "Neopixel.c"
uint8_t Buffer[3*8*4*12];
uint32_t Cursor;
# 54 "Neopixel.c"
 void Delay(uint32_t u1Count){
   for(int i = 0; i < u1Count; i ++){}
 }
# 67 "Neopixel.c"
void sendreset(void){
  (*((volatile uint32_t *)0x40024004)) = 0x00;
  Delay(1333);

}
# 80 "Neopixel.c"
void clearbuffer(void){
  int i;
  Cursor = 0;
  for(i=0; i<3*8*4*12; i=i+4){
    Buffer[i] = 1;
    Buffer[i+1] = 0;
    Buffer[i+2] = 0;
    Buffer[i+3] = 0;
  }
}
# 103 "Neopixel.c"
void addColor(uint8_t red, uint8_t green, uint8_t blue){
  int i;
  for(i=0x80; i>0x00; i=i>>1){
    if(green&i){
      Buffer[Cursor] = 1;
      Buffer[Cursor+1] = 1;
      Buffer[Cursor+2] = 0;
      Buffer[Cursor+3] = 0;
    } else{
      Buffer[Cursor] = 1;
      Buffer[Cursor+1] = 0;
      Buffer[Cursor+2] = 0;
      Buffer[Cursor+3] = 0;
    }
    Cursor = Cursor + 4;
  }
  for(i=0x80; i>0x00; i=i>>1){
    if(red&i){
      Buffer[Cursor] = 1;
      Buffer[Cursor+1] = 1;
      Buffer[Cursor+2] = 0;
      Buffer[Cursor+3] = 0;
    } else{
      Buffer[Cursor] = 1;
      Buffer[Cursor+1] = 0;
      Buffer[Cursor+2] = 0;
      Buffer[Cursor+3] = 0;
    }
    Cursor = Cursor + 4;
  }
  for(i=0x80; i>0x00; i=i>>1){
    if(blue&i){
      Buffer[Cursor] = 1;
      Buffer[Cursor+1] = 1;
      Buffer[Cursor+2] = 0;
      Buffer[Cursor+3] = 0;
    } else{
      Buffer[Cursor] = 1;
      Buffer[Cursor+1] = 0;
      Buffer[Cursor+2] = 0;
      Buffer[Cursor+3] = 0;
    }
    Cursor = Cursor + 4;
  }
  if(Cursor >= 3*8*4*12){
    Cursor = 0;
  }
}
# 161 "Neopixel.c"
void setcursor(uint8_t newCursor){
  newCursor = newCursor%(3*8*4*12/3/8/4);
  Cursor = newCursor*3*8*4;
}

void printBuffer(void){
 sendreset();
 DMA_Transfer((uint8_t *)Buffer, 3*8*4*12/3, 3);
}



void NeoPixel_Init(void){


  (*((volatile uint32_t *)0x400FE608)) |= 0x00000010;

  while(((*((volatile uint32_t *)0x400FEA08))&0x00000010) == 0){};
  (*((volatile uint32_t *)0x40024400)) |= 0x01;
  (*((volatile uint32_t *)0x40024420)) &= ~0x01;
  (*((volatile uint32_t *)0x40024508)) |= 0x01;
  (*((volatile uint32_t *)0x4002451C)) |= 0x01;

  (*((volatile uint32_t *)0x4002452C)) = ((*((volatile uint32_t *)0x4002452C))&0xFFFFFFF0)+0x00000000;
  (*((volatile uint32_t *)0x40024528)) &= ~0x01;
  sendreset();
 DMA_Init(32, (uint32_t *)&(*((volatile uint32_t *)0x40024004)));
 Vol = 10;

 for(int i = 0; i < 4; i ++){
  old_Colors[i] = 0;
 }

}
# 210 "Neopixel.c"
const int RGB[13][3] = {{0, 0, 0}, {100, 0, 0}, {90, 10, 0}, {70, 30, 0}, {65, 25, 10}, {33, 33, 33}, {0, 100, 0}, {15, 80, 15}, {8, 47, 44},
 {7, 8, 85}, {0, 0, 100}, {50, 0, 50}, {85, 0, 15} };


void SetNeoNotes(uint32_t note1, uint32_t note2, uint32_t note3, uint32_t note4){
 sendreset();

 int num_notes = 0;
 uint32_t notes[4];
 int note_index = 0;
 if(note1 != 0){
  num_notes++;
  notes[note_index] = note1;
  note_index++;
 }
 if(note2 != 0){
  num_notes++;
  notes[note_index] = note2;
  note_index++;
 }
 if(note3 != 0){
  num_notes++;
  notes[note_index] = note3;
  note_index++;
 }
 if(note4 != 0){
  num_notes++;
  notes[note_index] = note4;
  note_index++;
 }

 for(int i = note_index; i < 4; i ++){
  notes[i] = 0;
 }


 for(int i = 0; i < 4; i ++){
  old_Colors[i] = notes[i];
 }


 switch(num_notes){

  case 0:

   for(int i = 0; i < 12; i ++){
    addColor(0, 0, 0);
   }
   printBuffer();

  break;

  case 1:

   for(int i = 0; i < 12; i ++){
    addColor((Vol*RGB[notes[0]][0])/100, (Vol*RGB[notes[0]][1])/100, (Vol*RGB[notes[0]][2])/100);
   }
   printBuffer();


  break;

  case 2:


   for(int i = 0; i < 6; i ++){
    addColor((Vol*RGB[notes[0]][0])/100, (Vol*RGB[notes[0]][1])/100, (Vol*RGB[notes[0]][2])/100);
   }

   for(int i = 0; i < 6; i ++){
    addColor((Vol*RGB[notes[1]][0])/100, (Vol*RGB[notes[1]][1])/100, (Vol*RGB[notes[1]][2])/100);
   }
   printBuffer();

  break;

  case 3:


   for(int i = 0; i < 4; i ++){
    addColor((Vol*RGB[notes[0]][0])/100, (Vol*RGB[notes[0]][1])/100, (Vol*RGB[notes[0]][2])/100);
   }


   for(int i = 0; i < 4; i ++){
    addColor((Vol*RGB[notes[1]][0])/100, (Vol*RGB[notes[1]][1])/100, (Vol*RGB[notes[1]][2])/100);
   }

   for(int i = 0; i < 4; i ++){
    addColor((Vol*RGB[notes[2]][0])/100, (Vol*RGB[notes[2]][1])/100, (Vol*RGB[notes[2]][2])/100);
   }
   printBuffer();

  break;

  case 4:


   for(int i = 0; i < 3; i ++){
    addColor((Vol*RGB[notes[0]][0])/100, (Vol*RGB[notes[0]][1])/100, (Vol*RGB[notes[0]][2])/100);
   }

   for(int i = 0; i < 3; i ++){
    addColor((Vol*RGB[notes[1]][0])/100, (Vol*RGB[notes[1]][1])/100, (Vol*RGB[notes[1]][2])/100);
   }

   for(int i = 0; i < 3; i ++){
    addColor((Vol*RGB[notes[2]][0])/100, (Vol*RGB[notes[2]][1])/100, (Vol*RGB[notes[2]][2])/100);
   }

   for(int i = 0; i < 3; i ++){
    addColor((Vol*RGB[notes[3]][0])/100, (Vol*RGB[notes[3]][1])/100, (Vol*RGB[notes[3]][2])/100);
   }
   printBuffer();

  break;

 }
}



void setBrightness(int volume){
 if(volume > 100){
  Vol = 100;

 }
 else if(volume < 0){
  Vol = 0;
 }
 else{
  Vol = volume;
 }

 SetNeoNotes(old_Colors[0], old_Colors[1], old_Colors[2], old_Colors[3]);
}


void runNeoTest(void){
 sendreset();
 for(int i = 1; i < 13; i ++){
  addColor((Vol*RGB[i][0])/100, (Vol*RGB[i][1])/100, (Vol*RGB[i][2])/100);
 }
 printBuffer();
}
