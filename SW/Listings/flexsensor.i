# 1 "FlexSensor.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 366 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "FlexSensor.c" 2


# 1 "./FlexSensor.h" 1


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
# 4 "./FlexSensor.h" 2
# 1 "././inc/ADCSWTrigger.h" 1
# 60 "././inc/ADCSWTrigger.h"
void ADC0_InitSWTriggerSeq3_Ch9(void);
# 73 "././inc/ADCSWTrigger.h"
void ADC0_InitSWTriggerSeq3(uint32_t channelNum);
# 86 "././inc/ADCSWTrigger.h"
void ADC0_InitAllTriggerSeq3(uint32_t channelNum);
# 99 "././inc/ADCSWTrigger.h"
void ADC0_InitAllTriggerSeq3(uint32_t channelNum);

void ADC0_InitSWTriggerSeq3_Ch7(void);





uint32_t ADC0_InSeq3(void);







void ADC_Init89(void);
# 127 "././inc/ADCSWTrigger.h"
void ADC_In89(uint32_t data[2]);
# 139 "././inc/ADCSWTrigger.h"
void ADC0_InitSWTriggerSeq2(void(*task)(uint32_t x, uint32_t y, uint32_t z));
# 151 "././inc/ADCSWTrigger.h"
void ADC0_InSeq2(void);
# 164 "././inc/ADCSWTrigger.h"
void ADC0_InitSWTriggerSeq3_InternalTemperature(void);





uint32_t ADC0_InSeq3_InternalTemperature(void);
# 180 "././inc/ADCSWTrigger.h"
void ADC_Init3210(void);
# 194 "././inc/ADCSWTrigger.h"
void ADC_In3210(uint32_t data[3]);
# 5 "./FlexSensor.h" 2

void Flex_Init(void);
uint32_t Flex_Read(int sensor);
int Return_Note(void);
int Return_Chord(void);
int Return_Volume(void);
# 4 "FlexSensor.c" 2

uint32_t adc_data[3];


void Flex_Init(void){
 ADC_Init3210();
}


uint32_t Flex_Read(int sensor){
 ADC_In3210(adc_data);
 uint32_t result = 0;

 switch(sensor){
  case 1:
   result = adc_data[0];
   break;
  case 2:
   result = adc_data[1];
   break;
  case 3:
   result = adc_data[2];
   break;
  default:
   break;
 }

 return result;
}

int oldNote = 0;


int Return_Note(void){

 ADC_In3210(adc_data);
 uint32_t noteNum = adc_data[0];
 uint32_t note = 0;

 if(noteNum<2700)
  note=0;
 else
  note = (noteNum-2700)/110;
 if(note>11)
  note = 11;

 if(oldNote-note==1){
  noteNum+=20;
  if(noteNum<2700)
   note=0;
  else
   note = (noteNum-2700)/110;
  if(note>11)
   note = 11;
 }
 else if(oldNote-note==-1){
  noteNum-=20;
  if(noteNum<2700)
   note=0;
  else
   note = (noteNum-2700)/110;
  if(note>11)
   note = 11;
 }

 oldNote = note;

 return note;
}

int oldChord = 0;
# 116 "FlexSensor.c"
int Return_Chord(void){

 ADC_In3210(adc_data);
 uint32_t chordNum = adc_data[1];
 uint32_t chord = 0;

 if(chordNum<2700)
  chord=0;
 else
  chord = (chordNum-2700)/225;
 if(chord>5)
  chord = 5;

 if(oldChord-chord==1){
  chordNum+=40;
  if(chordNum<2700)
   chord=0;
  else
   chord = (chordNum-2700)/225;
  if(chord>5)
   chord = 5;
 }
 else if(oldChord-chord==-1){
  chordNum-=40;
  if(chordNum<2700)
   chord=0;
  else
   chord = (chordNum-2700)/225;
  if(chord>5)
   chord = 5;
 }

 oldChord = chord;

 return chord;
}


int Return_Volume(void){

 ADC_In3210(adc_data);
 uint32_t volNum = adc_data[2];
 uint32_t vol = 0;

 if(volNum<3200)
  vol=100;
 else if(volNum>3600)
  vol = 50;
 else
  vol = (3600-volNum)/2;



 return vol;
}
