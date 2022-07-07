# 1 "Switch.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 366 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "Switch.c" 2
# 15 "Switch.c"
# 1 "./Switch.h" 1
# 10 "./Switch.h"
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
# 11 "./Switch.h" 2





void Switch_Init(void);





void Switch_Handler(void);
# 16 "Switch.c" 2

# 1 "././inc/tm4c123gh6pm.h" 1
# 18 "Switch.c" 2
# 1 "././inc/Timer2A.h" 1
# 33 "././inc/Timer2A.h"
void Timer2A_Init(void(*task)(void), uint32_t period, uint32_t priority);

void Timer2A_Stop(void);
# 19 "Switch.c" 2
# 1 "./Music.h" 1








# 1 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdbool.h" 1 3
# 10 "./Music.h" 2
# 29 "./Music.h"
struct Note{


 uint32_t frequency;

 int duration;

 _Bool staccato;


};


struct Song{


 uint32_t bpm;

 struct Note *notes;




};

struct ChordNote{

 uint32_t frequencyA;
 uint32_t frequencyB;

 int duration;

 _Bool staccato;

};

struct ChordSong{

 uint32_t bpm;

 struct ChordNote *chordnotes;


};

struct Note GetNextNote(struct Song NowPlaying);

void StartMusic(void);

void StartChordMusic(void);

void PlayMusic(void);

void PlayChordMusic(void);

void RewindSong(void);

void RewindChordSong(void);

void PauseNPlay(void);

void ChangeTempo(void);

void SwitchInstrument(void);
# 20 "Switch.c" 2






 uint32_t previousPress;





void Switch_Init(void){
 (*((volatile uint32_t *)0x400FE608)) |= 0x02;
 while(((*((volatile uint32_t *)0x400FEA08)) & 0x02) == 0){};
 (*((volatile uint32_t *)0x40005520)) = 0x4C4F434B;
 (*((volatile uint32_t *)0x40005528)) = 0x00;
 (*((volatile uint32_t *)0x4000552C)) = 0x00000000;

 (*((volatile uint32_t *)0x40005400)) &= ~0x0F;
 (*((volatile uint32_t *)0x40005420)) = 0x00;

 (*((volatile uint32_t *)0x4000551C)) |= 0x0F;
 Timer2A_Init(&Switch_Handler,(80000000 / 30),1);
}





void Switch_Handler(void){
 uint32_t buttonPress = (*((volatile uint32_t *)0x400053FC)) & 0x0F;
 if(previousPress != buttonPress){
  switch(buttonPress){
   case 0:
    break;
   case 1:

    PauseNPlay();
    break;
   case 2:

    StartMusic();
    PauseNPlay();
    break;
   case 4:

    ChangeTempo();
    break;

   case 8:
    SwitchInstrument();
   break;

   default:
    break;

  }
  previousPress = buttonPress;
 }
}
