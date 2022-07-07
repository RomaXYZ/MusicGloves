# 1 "Buttons.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 366 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "Buttons.c" 2
# 10 "Buttons.c"
# 1 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 1 3
# 53 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
    typedef unsigned int size_t;
# 68 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
    typedef __builtin_va_list __va_list;
# 87 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
typedef struct __fpos_t_struct {
    unsigned long long int __pos;





    struct {
        unsigned int __state1, __state2;
    } __mbstate;
} fpos_t;
# 108 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
typedef struct __FILE FILE;
# 119 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
struct __FILE {
    union {
        long __FILE_alignment;



        char __FILE_size[84];

    } __FILE_opaque;
};
# 138 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern FILE __stdin, __stdout, __stderr;
extern FILE *__aeabi_stdin, *__aeabi_stdout, *__aeabi_stderr;
# 224 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int remove(const char * ) __attribute__((__nonnull__(1)));







extern __attribute__((__nothrow__)) int rename(const char * , const char * ) __attribute__((__nonnull__(1,2)));
# 243 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) FILE *tmpfile(void);






extern __attribute__((__nothrow__)) char *tmpnam(char * );
# 265 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int fclose(FILE * ) __attribute__((__nonnull__(1)));
# 275 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int fflush(FILE * );
# 285 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) FILE *fopen(const char * __restrict ,
                           const char * __restrict ) __attribute__((__nonnull__(1,2)));
# 329 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) FILE *freopen(const char * __restrict ,
                    const char * __restrict ,
                    FILE * __restrict ) __attribute__((__nonnull__(2,3)));
# 342 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) void setbuf(FILE * __restrict ,
                    char * __restrict ) __attribute__((__nonnull__(1)));






extern __attribute__((__nothrow__)) int setvbuf(FILE * __restrict ,
                   char * __restrict ,
                   int , size_t ) __attribute__((__nonnull__(1)));
# 370 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
#pragma __printf_args
extern __attribute__((__nothrow__)) int fprintf(FILE * __restrict ,
                    const char * __restrict , ...) __attribute__((__nonnull__(1,2)));
# 393 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
#pragma __printf_args
extern __attribute__((__nothrow__)) int _fprintf(FILE * __restrict ,
                     const char * __restrict , ...) __attribute__((__nonnull__(1,2)));





#pragma __printf_args
extern __attribute__((__nothrow__)) int printf(const char * __restrict , ...) __attribute__((__nonnull__(1)));






#pragma __printf_args
extern __attribute__((__nothrow__)) int _printf(const char * __restrict , ...) __attribute__((__nonnull__(1)));





#pragma __printf_args
extern __attribute__((__nothrow__)) int sprintf(char * __restrict , const char * __restrict , ...) __attribute__((__nonnull__(1,2)));








#pragma __printf_args
extern __attribute__((__nothrow__)) int _sprintf(char * __restrict , const char * __restrict , ...) __attribute__((__nonnull__(1,2)));






#pragma __printf_args
extern __attribute__((__nothrow__)) int __ARM_snprintf(char * __restrict , size_t ,
                     const char * __restrict , ...) __attribute__((__nonnull__(3)));


#pragma __printf_args
extern __attribute__((__nothrow__)) int snprintf(char * __restrict , size_t ,
                     const char * __restrict , ...) __attribute__((__nonnull__(3)));
# 460 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
#pragma __printf_args
extern __attribute__((__nothrow__)) int _snprintf(char * __restrict , size_t ,
                      const char * __restrict , ...) __attribute__((__nonnull__(3)));





#pragma __scanf_args
extern __attribute__((__nothrow__)) int fscanf(FILE * __restrict ,
                    const char * __restrict , ...) __attribute__((__nonnull__(1,2)));
# 503 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
#pragma __scanf_args
extern __attribute__((__nothrow__)) int _fscanf(FILE * __restrict ,
                     const char * __restrict , ...) __attribute__((__nonnull__(1,2)));





#pragma __scanf_args
extern __attribute__((__nothrow__)) int scanf(const char * __restrict , ...) __attribute__((__nonnull__(1)));








#pragma __scanf_args
extern __attribute__((__nothrow__)) int _scanf(const char * __restrict , ...) __attribute__((__nonnull__(1)));





#pragma __scanf_args
extern __attribute__((__nothrow__)) int sscanf(const char * __restrict ,
                    const char * __restrict , ...) __attribute__((__nonnull__(1,2)));
# 541 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
#pragma __scanf_args
extern __attribute__((__nothrow__)) int _sscanf(const char * __restrict ,
                     const char * __restrict , ...) __attribute__((__nonnull__(1,2)));







extern __attribute__((__nothrow__)) int vfscanf(FILE * __restrict , const char * __restrict , __va_list) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) int vscanf(const char * __restrict , __va_list) __attribute__((__nonnull__(1)));
extern __attribute__((__nothrow__)) int vsscanf(const char * __restrict , const char * __restrict , __va_list) __attribute__((__nonnull__(1,2)));

extern __attribute__((__nothrow__)) int _vfscanf(FILE * __restrict , const char * __restrict , __va_list) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) int _vscanf(const char * __restrict , __va_list) __attribute__((__nonnull__(1)));
extern __attribute__((__nothrow__)) int _vsscanf(const char * __restrict , const char * __restrict , __va_list) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) int __ARM_vsscanf(const char * __restrict , const char * __restrict , __va_list) __attribute__((__nonnull__(1,2)));

extern __attribute__((__nothrow__)) int vprintf(const char * __restrict , __va_list ) __attribute__((__nonnull__(1)));







extern __attribute__((__nothrow__)) int _vprintf(const char * __restrict , __va_list ) __attribute__((__nonnull__(1)));





extern __attribute__((__nothrow__)) int vfprintf(FILE * __restrict ,
                    const char * __restrict , __va_list ) __attribute__((__nonnull__(1,2)));
# 584 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int vsprintf(char * __restrict ,
                     const char * __restrict , __va_list ) __attribute__((__nonnull__(1,2)));
# 594 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int __ARM_vsnprintf(char * __restrict , size_t ,
                     const char * __restrict , __va_list ) __attribute__((__nonnull__(3)));

extern __attribute__((__nothrow__)) int vsnprintf(char * __restrict , size_t ,
                     const char * __restrict , __va_list ) __attribute__((__nonnull__(3)));
# 609 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int _vsprintf(char * __restrict ,
                      const char * __restrict , __va_list ) __attribute__((__nonnull__(1,2)));





extern __attribute__((__nothrow__)) int _vfprintf(FILE * __restrict ,
                     const char * __restrict , __va_list ) __attribute__((__nonnull__(1,2)));





extern __attribute__((__nothrow__)) int _vsnprintf(char * __restrict , size_t ,
                      const char * __restrict , __va_list ) __attribute__((__nonnull__(3)));
# 635 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
#pragma __printf_args
extern __attribute__((__nothrow__)) int __ARM_asprintf(char ** , const char * __restrict , ...) __attribute__((__nonnull__(2)));
extern __attribute__((__nothrow__)) int __ARM_vasprintf(char ** , const char * __restrict , __va_list ) __attribute__((__nonnull__(2)));
# 649 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int fgetc(FILE * ) __attribute__((__nonnull__(1)));
# 659 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) char *fgets(char * __restrict , int ,
                    FILE * __restrict ) __attribute__((__nonnull__(1,3)));
# 673 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int fputc(int , FILE * ) __attribute__((__nonnull__(2)));
# 683 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int fputs(const char * __restrict , FILE * __restrict ) __attribute__((__nonnull__(1,2)));






extern __attribute__((__nothrow__)) int getc(FILE * ) __attribute__((__nonnull__(1)));
# 704 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
    extern __attribute__((__nothrow__)) int (getchar)(void);
# 713 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) char *gets(char * ) __attribute__((__nonnull__(1)));
# 725 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int putc(int , FILE * ) __attribute__((__nonnull__(2)));
# 737 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
    extern __attribute__((__nothrow__)) int (putchar)(int );






extern __attribute__((__nothrow__)) int puts(const char * ) __attribute__((__nonnull__(1)));







extern __attribute__((__nothrow__)) int ungetc(int , FILE * ) __attribute__((__nonnull__(2)));
# 778 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) size_t fread(void * __restrict ,
                    size_t , size_t , FILE * __restrict ) __attribute__((__nonnull__(1,4)));
# 794 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) size_t __fread_bytes_avail(void * __restrict ,
                    size_t , FILE * __restrict ) __attribute__((__nonnull__(1,3)));
# 810 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) size_t fwrite(const void * __restrict ,
                    size_t , size_t , FILE * __restrict ) __attribute__((__nonnull__(1,4)));
# 822 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int fgetpos(FILE * __restrict , fpos_t * __restrict ) __attribute__((__nonnull__(1,2)));
# 833 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int fseek(FILE * , long int , int ) __attribute__((__nonnull__(1)));
# 850 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int fsetpos(FILE * __restrict , const fpos_t * __restrict ) __attribute__((__nonnull__(1,2)));
# 863 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) long int ftell(FILE * ) __attribute__((__nonnull__(1)));
# 877 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) void rewind(FILE * ) __attribute__((__nonnull__(1)));
# 886 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) void clearerr(FILE * ) __attribute__((__nonnull__(1)));







extern __attribute__((__nothrow__)) int feof(FILE * ) __attribute__((__nonnull__(1)));




extern __attribute__((__nothrow__)) int ferror(FILE * ) __attribute__((__nonnull__(1)));




extern __attribute__((__nothrow__)) void perror(const char * );
# 917 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int _fisatty(FILE * ) __attribute__((__nonnull__(1)));



extern __attribute__((__nothrow__)) void __use_no_semihosting_swi(void);
extern __attribute__((__nothrow__)) void __use_no_semihosting(void);
# 11 "Buttons.c" 2
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
# 12 "Buttons.c" 2
# 1 "././inc/tm4c123gh6pm.h" 1
# 13 "Buttons.c" 2
# 1 "././inc/Timer2A.h" 1
# 33 "././inc/Timer2A.h"
void Timer2A_Init(void(*task)(void), uint32_t period, uint32_t priority);

void Timer2A_Stop(void);
# 14 "Buttons.c" 2
# 1 "././inc/Timer3A.h" 1
# 33 "././inc/Timer3A.h"
void Timer3A_Init(void(*task)(void), uint32_t period, uint32_t priority);

void Timer3A_Stop(void);
# 15 "Buttons.c" 2
# 1 "././inc/Timer4A.h" 1
# 31 "././inc/Timer4A.h"
void Timer4A_Init(void(*task)(void), uint32_t period, uint32_t priority);


void Timer4A_Stop(void);
# 16 "Buttons.c" 2
# 1 "././inc/CortexM.h" 1
# 45 "././inc/CortexM.h"
void DisableInterrupts(void);





void EnableInterrupts(void);






long StartCritical(void);






void EndCritical(long sr);







void WaitForInterrupt(void);

void Clock_Delay(uint32_t ulCount);




void Clock_Delay1ms(uint32_t n);
# 17 "Buttons.c" 2







volatile uint8_t SW1, SW2, SW3;
uint16_t switch_debouncing;
uint8_t set = 0;

void switch_debouncer(void);




void Button_Init(void){


 (*((volatile uint32_t *)0x400FE608)) |= 0x04;
 SW1, SW2, SW3 = 0;

 (*((volatile uint32_t *)0x40006400)) &= ~0x70;
 (*((volatile uint32_t *)0x4000651C)) |= 0x70;
 (*((volatile uint32_t *)0x40006404)) &= ~0x70;
 (*((volatile uint32_t *)0x40006408)) &= ~0x70;
 (*((volatile uint32_t *)0x4000640C)) |= 0x70;
 (*((volatile uint32_t *)0x4000641C)) = 0x70;
 (*((volatile uint32_t *)0x40006410)) |= 0x70;

 (*((volatile uint32_t *)0xE000E400)) = ((*((volatile uint32_t *)0xE000E400))& 0xFF00FFFF) | 0x00400000;
 (*((volatile uint32_t *)0xE000E100)) = (0x00000004);

 switch_debouncing = 0;
 set = 0;
# 73 "Buttons.c"
}

void GPIOPortC_Handler(void){

 if(switch_debouncing == 0){


  if(((*((volatile uint32_t *)0x40006414)) >> 4) & 0x01){
   SW1 = 1;
   switch_debouncing = 1;
  }else if(((*((volatile uint32_t *)0x40006414)) >> 5) & 0x01){
   SW2 = 1;
   switch_debouncing = 2;
  }else if(((*((volatile uint32_t *)0x40006414)) >> 6) & 0x01){
   SW3 = 1;
   switch_debouncing = 3;
  }
  set = 1;
  Timer4A_Init(&switch_debouncer, 1000000, 2);
 }
 (*((volatile uint32_t *)0x4000641C)) = 0x70;

}
# 109 "Buttons.c"
void wait_for_fall(void){
 if(!(((*((volatile uint32_t *)0x400063FC))>>(3+switch_debouncing))&1)){
  Timer4A_Stop();
  Timer4A_Init(&switch_debouncer, 1000000, 2);
  set=0;
 }
}
void switch_debouncer(void){

  Timer4A_Stop();
  if(set){
   Timer4A_Init(&wait_for_fall, 1000000, 2);
  }
  else{
   switch_debouncing=0;
  }
}



uint8_t GetSW1(void){
 uint8_t copy = SW1;
 SW1 = 0;
 return(copy);
}
uint8_t GetSW2(void){
 uint8_t copy = SW2;
 SW2 = 0;
 return(copy);
}
uint8_t GetSW3(void){
 uint8_t copy = SW3;
 SW3 = 0;
 return(copy);
}






void SlidePot_Init(void){
 volatile uint32_t delay;
 (*((volatile uint32_t *)0x400FE638)) |= 0x00000002;
 (*((volatile uint32_t *)0x400FE608)) |= 0x08;

 while(((*((volatile uint32_t *)0x400FEA08)) & 0x08) == 0){};
 while(((*((volatile uint32_t *)0x400FEA38)) & 0x0002) != 0x0002){};

 (*((volatile uint32_t *)0x40007400)) &= ~0x04;
 (*((volatile uint32_t *)0x40007420)) &= 0x04;
 (*((volatile uint32_t *)0x4000751C)) &= ~0x04;
 (*((volatile uint32_t *)0x4000752C)) &= 0xFFFFF0FF;
 (*((volatile uint32_t *)0x40007528)) &= 0x04;

 (*((volatile uint32_t *)0x40039FC4)) &= ~0xF;
 (*((volatile uint32_t *)0x40039FC4)) |= 0x1;
 (*((volatile uint32_t *)0x40039020)) = 0x3210;
  (*((volatile uint32_t *)0x40039000)) &= ~0x0004;
  (*((volatile uint32_t *)0x40039014)) &= ~0x0F00;
  (*((volatile uint32_t *)0x40039030)) = 0x06;

 (*((volatile uint32_t *)0x40039080)) = 0x0005;
  (*((volatile uint32_t *)0x40039084)) = 0x0006;
  (*((volatile uint32_t *)0x40039008)) &= ~0x0004;
  (*((volatile uint32_t *)0x40039000)) |= 0x0004;


}

int slidePot_Get(void){
 (*((volatile uint32_t *)0x40039028)) = 0x0004;
 int data;
 while(((*((volatile uint32_t *)0x40039004)) & 0x04) == 0){};
 data = (*((volatile uint32_t *)0x40039088)) & 0xFFF;
 (*((volatile uint32_t *)0x4003900C)) = 0x0004;

 return(data);
}

int GetVolume(void){
 int slidepot = slidePot_Get();


 int temp = (slidepot / 40);
 if(temp < 2){
  return(0);
 }
 else if (temp > 100){
  return(100);
 }
 else{
  return(temp - 1);
 }
}

void KeypadScan1(void);
void KeypadScan2(void);
void keypadDebouncer(void);


int RowData = 0x20;
int prevRowData = 0x08;
int RowNum = 0;
int ColNum = 0;
int pressed = 0;
int scanning = 0;
uint8_t set2 = 0;


void Keypad_Init(void){
 volatile unsigned long delay;

  (*((volatile uint32_t *)0x400FE608)) |= 0x00000002;
  delay = (*((volatile uint32_t *)0x400FE608));

  (*((volatile uint32_t *)0x40005528)) = 0;
  (*((volatile uint32_t *)0x4000552C)) = 0;
  (*((volatile uint32_t *)0x40005400)) = 0x2B;
  (*((volatile uint32_t *)0x40005420)) &= ~0x7F;
  (*((volatile uint32_t *)0x4000551C)) |= 0x7F;
 (*((volatile uint32_t *)0x40005404)) &= ~0x54;
 (*((volatile uint32_t *)0x40005408)) &= ~0x54;
 (*((volatile uint32_t *)0x4000540C)) |= 0x54;
 (*((volatile uint32_t *)0x4000541C)) = 0x54;
 (*((volatile uint32_t *)0x40005410)) |= 0x54;

 (*((volatile uint32_t *)0xE000E400)) = ((*((volatile uint32_t *)0xE000E400)) & 0xFFFF00FF) | 0x00004000;
 (*((volatile uint32_t *)0xE000E100)) = 2;
 Timer2A_Init(KeypadScan2,80000,6);
 (*((volatile uint32_t *)0x4000541C)) = 0x54;
}
int x;
void GPIOPortB_Handler(void){
 x = (*((volatile uint32_t *)0x40005414));
 if(!pressed&&!scanning&&!set2){
  pressed = 1;
  Timer2A_Stop();
  Timer3A_Init(keypadDebouncer, 1600000, 6);
  if(((*((volatile uint32_t *)0x40005414)) & 0x04) != 0){
   ColNum = 3;
  }
  else if(((*((volatile uint32_t *)0x40005414)) & 0x10) != 0){
   ColNum = 1;
  }
  else if(((*((volatile uint32_t *)0x40005414)) & 0x40) != 0){
   ColNum = 2;
  }
  set2 = 1;

 }
 else
  x = 0;
 (*((volatile uint32_t *)0x4000541C)) = 0x54;

}

void KeypadScan1(void) {
 int temp = (*((volatile uint32_t *)0x400053FC));
 if(((*((volatile uint32_t *)0x400053FC)) & ~0x2B) == 0){
  Timer2A_Stop();
  Timer3A_Init(keypadDebouncer, 1600000, 6);
  pressed = 1;
  set2 = 0;
 }
}


void KeypadScan2(void) {
 scanning = 1;
 if(!set2){
  (*((volatile uint32_t *)0x400053FC)) &= ~prevRowData;
  prevRowData = RowData;
  if(RowData == 0x20){
   RowData = 0x01;
   RowNum = 1;
  }
  else if(RowData == 0x01){
   RowData = 0x02;
   RowNum = 2;
  }
  else if(RowData == 0x02){
   RowData = 0x08;
   RowNum = 3;
  }
  else{
   RowData = 0x20;
   RowNum = 4;
  }
  (*((volatile uint32_t *)0x400053FC)) |= prevRowData;
 }
 scanning = 0;
}

void keypadDebouncer(void){
 pressed = 0;
 Timer3A_Stop();
 if(set2)
  Timer2A_Init(KeypadScan1,40000,6);
 else
  Timer2A_Init(KeypadScan2,80000,6);
}



int Buttons_Get(void){
 return -1;
}



int Keypad_Get(void){
 if(ColNum == 0) return -1;
 int ret = -1;
 if(RowNum == 1){
  if(ColNum == 1) ret = 1;
  if(ColNum == 2) ret = 2;
  if(ColNum == 3) ret = 3;
 }
 if(RowNum == 2){
  if(ColNum == 1) ret = 4;
  if(ColNum == 2) ret = 5;
  if(ColNum == 3) ret = 6;
 }
 if(RowNum == 3){
  if(ColNum == 1) ret = 7;
  if(ColNum == 2) ret = 8;
  if(ColNum == 3) ret = 9;
 }
 if(RowNum == 4){
  if(ColNum == 1) ret = 10;
  if(ColNum == 2) ret = 0;
  if(ColNum == 3) ret = 11;
 }
 ColNum = 0;
 return ret;
}
