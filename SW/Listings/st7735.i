# 1 "inc/ST7735.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 366 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "inc/ST7735.c" 2
# 113 "inc/ST7735.c"
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
# 114 "inc/ST7735.c" 2
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
# 115 "inc/ST7735.c" 2
# 1 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 1 3
# 91 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
    typedef unsigned short wchar_t;




typedef struct div_t { int quot, rem; } div_t;

typedef struct ldiv_t { long int quot, rem; } ldiv_t;


typedef struct lldiv_t { long long quot, rem; } lldiv_t;
# 139 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) int __aeabi_MB_CUR_MAX(void);
# 158 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) double atof(const char * ) __attribute__((__nonnull__(1)));





extern __attribute__((__nothrow__)) int atoi(const char * ) __attribute__((__nonnull__(1)));





extern __attribute__((__nothrow__)) long int atol(const char * ) __attribute__((__nonnull__(1)));






extern __attribute__((__nothrow__)) long long atoll(const char * ) __attribute__((__nonnull__(1)));







extern __attribute__((__nothrow__)) double strtod(const char * __restrict , char ** __restrict ) __attribute__((__nonnull__(1)));
# 206 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) float strtof(const char * __restrict , char ** __restrict ) __attribute__((__nonnull__(1)));
extern __attribute__((__nothrow__)) long double strtold(const char * __restrict , char ** __restrict ) __attribute__((__nonnull__(1)));




extern __attribute__((__nothrow__)) long int strtol(const char * __restrict ,
                        char ** __restrict , int ) __attribute__((__nonnull__(1)));
# 243 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) unsigned long int strtoul(const char * __restrict ,
                                       char ** __restrict , int ) __attribute__((__nonnull__(1)));
# 275 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) long long strtoll(const char * __restrict ,
                                  char ** __restrict , int )
                          __attribute__((__nonnull__(1)));






extern __attribute__((__nothrow__)) unsigned long long strtoull(const char * __restrict ,
                                            char ** __restrict , int )
                                   __attribute__((__nonnull__(1)));






extern __attribute__((__nothrow__)) int rand(void);
# 303 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) void srand(unsigned int );
# 313 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
struct _rand_state { int __x[57]; };
extern __attribute__((__nothrow__)) int _rand_r(struct _rand_state *);
extern __attribute__((__nothrow__)) void _srand_r(struct _rand_state *, unsigned int);
struct _ANSI_rand_state { int __x[1]; };
extern __attribute__((__nothrow__)) int _ANSI_rand_r(struct _ANSI_rand_state *);
extern __attribute__((__nothrow__)) void _ANSI_srand_r(struct _ANSI_rand_state *, unsigned int);





extern __attribute__((__nothrow__)) void *calloc(size_t , size_t );





extern __attribute__((__nothrow__)) void free(void * );







extern __attribute__((__nothrow__)) void *malloc(size_t );





extern __attribute__((__nothrow__)) void *realloc(void * , size_t );
# 374 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
typedef int (*__heapprt)(void *, char const *, ...);
extern __attribute__((__nothrow__)) void __heapstats(int (* )(void * ,
                                           char const * , ...),
                        void * ) __attribute__((__nonnull__(1)));
# 390 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) int __heapvalid(int (* )(void * ,
                                           char const * , ...),
                       void * , int ) __attribute__((__nonnull__(1)));
# 411 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) __attribute__((__noreturn__)) void abort(void);
# 422 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) int atexit(void (* )(void)) __attribute__((__nonnull__(1)));
# 444 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) __attribute__((__noreturn__)) void exit(int );
# 460 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) __attribute__((__noreturn__)) void _Exit(int );
# 471 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) char *getenv(const char * ) __attribute__((__nonnull__(1)));
# 484 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) int system(const char * );
# 497 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern void *bsearch(const void * , const void * ,
              size_t , size_t ,
              int (* )(const void *, const void *)) __attribute__((__nonnull__(1,2,5)));
# 532 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern void qsort(void * , size_t , size_t ,
           int (* )(const void *, const void *)) __attribute__((__nonnull__(1,4)));
# 560 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) __attribute__((__const__)) int abs(int );






extern __attribute__((__nothrow__)) __attribute__((__const__)) div_t div(int , int );
# 579 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) __attribute__((__const__)) long int labs(long int );
# 589 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) __attribute__((__const__)) ldiv_t ldiv(long int , long int );
# 610 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) __attribute__((__const__)) long long llabs(long long );
# 620 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) __attribute__((__const__)) lldiv_t lldiv(long long , long long );
# 644 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
typedef struct __sdiv32by16 { long quot, rem; } __sdiv32by16;
typedef struct __udiv32by16 { unsigned long quot, rem; } __udiv32by16;

typedef struct __sdiv64by32 { long rem, quot; } __sdiv64by32;

__attribute__((__value_in_regs__)) extern __attribute__((__nothrow__)) __attribute__((__const__)) __sdiv32by16 __rt_sdiv32by16(
     int ,
     short int );



__attribute__((__value_in_regs__)) extern __attribute__((__nothrow__)) __attribute__((__const__)) __udiv32by16 __rt_udiv32by16(
     unsigned int ,
     unsigned short );



__attribute__((__value_in_regs__)) extern __attribute__((__nothrow__)) __attribute__((__const__)) __sdiv64by32 __rt_sdiv64by32(
     int , unsigned int ,
     int );







extern __attribute__((__nothrow__)) unsigned int __fp_status(unsigned int , unsigned int );
# 705 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) int mblen(const char * , size_t );
# 720 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) int mbtowc(wchar_t * __restrict ,
                   const char * __restrict , size_t );
# 739 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) int wctomb(char * , wchar_t );
# 761 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) size_t mbstowcs(wchar_t * __restrict ,
                      const char * __restrict , size_t ) __attribute__((__nonnull__(2)));
# 779 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) size_t wcstombs(char * __restrict ,
                      const wchar_t * __restrict , size_t ) __attribute__((__nonnull__(2)));
# 798 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) void __use_realtime_heap(void);
extern __attribute__((__nothrow__)) void __use_realtime_division(void);
extern __attribute__((__nothrow__)) void __use_two_region_memory(void);
extern __attribute__((__nothrow__)) void __use_no_heap(void);
extern __attribute__((__nothrow__)) void __use_no_heap_region(void);

extern __attribute__((__nothrow__)) char const *__C_library_version_string(void);
extern __attribute__((__nothrow__)) int __C_library_version_number(void);
# 116 "inc/ST7735.c" 2
# 1 "inc/ST7735.h" 1
# 116 "inc/ST7735.h"
enum initRFlags{
  none,
  INITR_GREENTAB,
  INITR_REDTAB,
  INITR_BLACKTAB
};
# 141 "inc/ST7735.h"
void ST7735_InitB(void);






void ST7735_InitR(enum initRFlags option);
# 162 "inc/ST7735.h"
void ST7735_DrawPixel(int16_t x, int16_t y, uint16_t color);
# 173 "inc/ST7735.h"
void ST7735_DrawFastVLine(int16_t x, int16_t y, int16_t h, uint16_t color);
# 185 "inc/ST7735.h"
void ST7735_DrawFastHLine(int16_t x, int16_t y, int16_t w, uint16_t color);







void ST7735_FillScreen(uint16_t color);
# 205 "inc/ST7735.h"
void ST7735_FillRect(int16_t x, int16_t y, int16_t w, int16_t h, uint16_t color);
# 215 "inc/ST7735.h"
void ST7735_DrawSmallCircle(int16_t x, int16_t y, uint16_t color);
# 225 "inc/ST7735.h"
void ST7735_DrawCircle(int16_t x, int16_t y, uint16_t color);






uint16_t ST7735_Color565(uint8_t r, uint8_t g, uint8_t b);






uint16_t ST7735_SwapColor(uint16_t x) ;
# 261 "inc/ST7735.h"
void ST7735_DrawBitmap(int16_t x, int16_t y, const uint16_t *image, int16_t w, int16_t h);
# 278 "inc/ST7735.h"
void ST7735_DrawCharS(int16_t x, int16_t y, char c, int16_t textColor, int16_t bgColor, uint8_t size);
# 293 "inc/ST7735.h"
void ST7735_DrawChar(int16_t x, int16_t y, char c, int16_t textColor, int16_t bgColor, uint8_t size);
# 305 "inc/ST7735.h"
uint32_t ST7735_DrawString(uint16_t x, uint16_t y, char *pt, int16_t textColor);;
# 316 "inc/ST7735.h"
void ST7735_SetCursor(uint32_t newX, uint32_t newY);
# 325 "inc/ST7735.h"
void ST7735_OutUDec(uint32_t n);
# 334 "inc/ST7735.h"
void ST7735_OutUDec4(uint32_t n);
# 343 "inc/ST7735.h"
void ST7735_OutUDec5(uint32_t n);






void ST7735_SetRotation(uint8_t m) ;







void ST7735_InvertDisplay(int i) ;
# 370 "inc/ST7735.h"
void ST7735_PlotClear(int32_t ymin, int32_t ymax);






void ST7735_PlotPoint(int32_t y);






void ST7735_PlotLine(int32_t y);







void ST7735_PlotPoints(int32_t y1,int32_t y2);






void ST7735_PlotBar(int32_t y);







void ST7735_PlotdBfs(int32_t y);







void ST7735_PlotNext(void);







void ST7735_PlotNextErase(void);
# 474 "inc/ST7735.h"
void ST7735_OutChar(char ch);
# 483 "inc/ST7735.h"
void ST7735_OutString(char *ptr);







void ST7735_SetTextColor(uint16_t color);






void Output_Init(void);


void Output_Clear(void);


void Output_Off(void);


void Output_On(void);





void Output_Color(uint32_t newColor);
# 531 "inc/ST7735.h"
void ST7735_sDecOut2(int32_t n);
# 555 "inc/ST7735.h"
void ST7735_uBinOut6(uint32_t n);
# 568 "inc/ST7735.h"
void ST7735_XYplotInit(int32_t minX, int32_t maxX, int32_t minY, int32_t maxY);
# 579 "inc/ST7735.h"
void ST7735_XYplot(uint32_t num, int32_t bufX[], int32_t bufY[]);
# 593 "inc/ST7735.h"
void ST7735_Line(uint16_t x1, uint16_t y1, uint16_t x2, uint16_t y2,
                 uint16_t color);
# 604 "inc/ST7735.h"
void ST7735_SetX(int32_t newX);
# 621 "inc/ST7735.h"
void ST7735_sDecOut3(int32_t n);
# 649 "inc/ST7735.h"
void ST7735_uBinOut5(uint32_t n);

char IntegerToChar(int16_t integer);

int16_t Extract_unsigned (uint32_t number, int16_t place);
# 117 "inc/ST7735.c" 2
# 1 "inc/../inc/tm4c123gh6pm.h" 1
# 118 "inc/ST7735.c" 2



uint32_t StX=0;
uint32_t StY=0;
uint16_t StTextColor = 0x07FF;
# 252 "inc/ST7735.c"
static const uint8_t Font[] = {
  0x00, 0x00, 0x00, 0x00, 0x00,
  0x3E, 0x5B, 0x4F, 0x5B, 0x3E,
  0x3E, 0x6B, 0x4F, 0x6B, 0x3E,
  0x1C, 0x3E, 0x7C, 0x3E, 0x1C,
  0x18, 0x3C, 0x7E, 0x3C, 0x18,
  0x1C, 0x57, 0x7D, 0x57, 0x1C,
  0x1C, 0x5E, 0x7F, 0x5E, 0x1C,
  0x00, 0x18, 0x3C, 0x18, 0x00,
  0xFF, 0xE7, 0xC3, 0xE7, 0xFF,
  0x00, 0x18, 0x24, 0x18, 0x00,
  0xFF, 0xE7, 0xDB, 0xE7, 0xFF,
  0x30, 0x48, 0x3A, 0x06, 0x0E,
  0x26, 0x29, 0x79, 0x29, 0x26,
  0x40, 0x7F, 0x05, 0x05, 0x07,
  0x40, 0x7F, 0x05, 0x25, 0x3F,
  0x5A, 0x3C, 0xE7, 0x3C, 0x5A,
  0x7F, 0x3E, 0x1C, 0x1C, 0x08,
  0x08, 0x1C, 0x1C, 0x3E, 0x7F,
  0x14, 0x22, 0x7F, 0x22, 0x14,
  0x5F, 0x5F, 0x00, 0x5F, 0x5F,
  0x06, 0x09, 0x7F, 0x01, 0x7F,
  0x00, 0x66, 0x89, 0x95, 0x6A,
  0x60, 0x60, 0x60, 0x60, 0x60,
  0x94, 0xA2, 0xFF, 0xA2, 0x94,
  0x08, 0x04, 0x7E, 0x04, 0x08,
  0x10, 0x20, 0x7E, 0x20, 0x10,
  0x08, 0x08, 0x2A, 0x1C, 0x08,
  0x08, 0x1C, 0x2A, 0x08, 0x08,
  0x1E, 0x10, 0x10, 0x10, 0x10,
  0x0C, 0x1E, 0x0C, 0x1E, 0x0C,
  0x30, 0x38, 0x3E, 0x38, 0x30,
  0x06, 0x0E, 0x3E, 0x0E, 0x06,
  0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x5F, 0x00, 0x00,
  0x00, 0x07, 0x00, 0x07, 0x00,
  0x14, 0x7F, 0x14, 0x7F, 0x14,
  0x24, 0x2A, 0x7F, 0x2A, 0x12,
  0x23, 0x13, 0x08, 0x64, 0x62,
  0x36, 0x49, 0x56, 0x20, 0x50,
  0x00, 0x08, 0x07, 0x03, 0x00,
  0x00, 0x1C, 0x22, 0x41, 0x00,
  0x00, 0x41, 0x22, 0x1C, 0x00,
  0x2A, 0x1C, 0x7F, 0x1C, 0x2A,
  0x08, 0x08, 0x3E, 0x08, 0x08,
  0x00, 0x80, 0x70, 0x30, 0x00,
  0x08, 0x08, 0x08, 0x08, 0x08,
  0x00, 0x00, 0x60, 0x60, 0x00,
  0x20, 0x10, 0x08, 0x04, 0x02,
  0x3E, 0x51, 0x49, 0x45, 0x3E,
  0x00, 0x42, 0x7F, 0x40, 0x00,
  0x72, 0x49, 0x49, 0x49, 0x46,
  0x21, 0x41, 0x49, 0x4D, 0x33,
  0x18, 0x14, 0x12, 0x7F, 0x10,
  0x27, 0x45, 0x45, 0x45, 0x39,
  0x3C, 0x4A, 0x49, 0x49, 0x31,
  0x41, 0x21, 0x11, 0x09, 0x07,
  0x36, 0x49, 0x49, 0x49, 0x36,
  0x46, 0x49, 0x49, 0x29, 0x1E,
  0x00, 0x00, 0x14, 0x00, 0x00,
  0x00, 0x40, 0x34, 0x00, 0x00,
  0x00, 0x08, 0x14, 0x22, 0x41,
  0x14, 0x14, 0x14, 0x14, 0x14,
  0x00, 0x41, 0x22, 0x14, 0x08,
  0x02, 0x01, 0x59, 0x09, 0x06,
  0x3E, 0x41, 0x5D, 0x59, 0x4E,
  0x7C, 0x12, 0x11, 0x12, 0x7C,
  0x7F, 0x49, 0x49, 0x49, 0x36,
  0x3E, 0x41, 0x41, 0x41, 0x22,
  0x7F, 0x41, 0x41, 0x41, 0x3E,
  0x7F, 0x49, 0x49, 0x49, 0x41,
  0x7F, 0x09, 0x09, 0x09, 0x01,
  0x3E, 0x41, 0x41, 0x51, 0x73,
  0x7F, 0x08, 0x08, 0x08, 0x7F,
  0x00, 0x41, 0x7F, 0x41, 0x00,
  0x20, 0x40, 0x41, 0x3F, 0x01,
  0x7F, 0x08, 0x14, 0x22, 0x41,
  0x7F, 0x40, 0x40, 0x40, 0x40,
  0x7F, 0x02, 0x1C, 0x02, 0x7F,
  0x7F, 0x04, 0x08, 0x10, 0x7F,
  0x3E, 0x41, 0x41, 0x41, 0x3E,
  0x7F, 0x09, 0x09, 0x09, 0x06,
  0x3E, 0x41, 0x51, 0x21, 0x5E,
  0x7F, 0x09, 0x19, 0x29, 0x46,
  0x26, 0x49, 0x49, 0x49, 0x32,
  0x03, 0x01, 0x7F, 0x01, 0x03,
  0x3F, 0x40, 0x40, 0x40, 0x3F,
  0x1F, 0x20, 0x40, 0x20, 0x1F,
  0x3F, 0x40, 0x38, 0x40, 0x3F,
  0x63, 0x14, 0x08, 0x14, 0x63,
  0x03, 0x04, 0x78, 0x04, 0x03,
  0x61, 0x59, 0x49, 0x4D, 0x43,
  0x00, 0x7F, 0x41, 0x41, 0x41,
  0x02, 0x04, 0x08, 0x10, 0x20,
  0x00, 0x41, 0x41, 0x41, 0x7F,
  0x04, 0x02, 0x01, 0x02, 0x04,
  0x40, 0x40, 0x40, 0x40, 0x40,
  0x00, 0x03, 0x07, 0x08, 0x00,
  0x20, 0x54, 0x54, 0x78, 0x40,
  0x7F, 0x28, 0x44, 0x44, 0x38,
  0x38, 0x44, 0x44, 0x44, 0x28,
  0x38, 0x44, 0x44, 0x28, 0x7F,
  0x38, 0x54, 0x54, 0x54, 0x18,
  0x00, 0x08, 0x7E, 0x09, 0x02,
  0x18, 0xA4, 0xA4, 0x9C, 0x78,
  0x7F, 0x08, 0x04, 0x04, 0x78,
  0x00, 0x44, 0x7D, 0x40, 0x00,
  0x20, 0x40, 0x40, 0x3D, 0x00,
  0x7F, 0x10, 0x28, 0x44, 0x00,
  0x00, 0x41, 0x7F, 0x40, 0x00,
  0x7C, 0x04, 0x78, 0x04, 0x78,
  0x7C, 0x08, 0x04, 0x04, 0x78,
  0x38, 0x44, 0x44, 0x44, 0x38,
  0xFC, 0x18, 0x24, 0x24, 0x18,
  0x18, 0x24, 0x24, 0x18, 0xFC,
  0x7C, 0x08, 0x04, 0x04, 0x08,
  0x48, 0x54, 0x54, 0x54, 0x24,
  0x04, 0x04, 0x3F, 0x44, 0x24,
  0x3C, 0x40, 0x40, 0x20, 0x7C,
  0x1C, 0x20, 0x40, 0x20, 0x1C,
  0x3C, 0x40, 0x30, 0x40, 0x3C,
  0x44, 0x28, 0x10, 0x28, 0x44,
  0x4C, 0x90, 0x90, 0x90, 0x7C,
  0x44, 0x64, 0x54, 0x4C, 0x44,
  0x00, 0x08, 0x36, 0x41, 0x00,
  0x00, 0x00, 0x77, 0x00, 0x00,
  0x00, 0x41, 0x36, 0x08, 0x00,
  0x02, 0x01, 0x02, 0x04, 0x02,
  0x3C, 0x26, 0x23, 0x26, 0x3C,
  0x1E, 0xA1, 0xA1, 0x61, 0x12,
  0x3A, 0x40, 0x40, 0x20, 0x7A,
  0x38, 0x54, 0x54, 0x55, 0x59,
  0x21, 0x55, 0x55, 0x79, 0x41,
  0x21, 0x54, 0x54, 0x78, 0x41,
  0x21, 0x55, 0x54, 0x78, 0x40,
  0x20, 0x54, 0x55, 0x79, 0x40,
  0x0C, 0x1E, 0x52, 0x72, 0x12,
  0x39, 0x55, 0x55, 0x55, 0x59,
  0x39, 0x54, 0x54, 0x54, 0x59,
  0x39, 0x55, 0x54, 0x54, 0x58,
  0x00, 0x00, 0x45, 0x7C, 0x41,
  0x00, 0x02, 0x45, 0x7D, 0x42,
  0x00, 0x01, 0x45, 0x7C, 0x40,
  0xF0, 0x29, 0x24, 0x29, 0xF0,
  0xF0, 0x28, 0x25, 0x28, 0xF0,
  0x7C, 0x54, 0x55, 0x45, 0x00,
  0x20, 0x54, 0x54, 0x7C, 0x54,
  0x7C, 0x0A, 0x09, 0x7F, 0x49,
  0x32, 0x49, 0x49, 0x49, 0x32,
  0x32, 0x48, 0x48, 0x48, 0x32,
  0x32, 0x4A, 0x48, 0x48, 0x30,
  0x3A, 0x41, 0x41, 0x21, 0x7A,
  0x3A, 0x42, 0x40, 0x20, 0x78,
  0x00, 0x9D, 0xA0, 0xA0, 0x7D,
  0x39, 0x44, 0x44, 0x44, 0x39,
  0x3D, 0x40, 0x40, 0x40, 0x3D,
  0x3C, 0x24, 0xFF, 0x24, 0x24,
  0x48, 0x7E, 0x49, 0x43, 0x66,
  0x2B, 0x2F, 0xFC, 0x2F, 0x2B,
  0xFF, 0x09, 0x29, 0xF6, 0x20,
  0xC0, 0x88, 0x7E, 0x09, 0x03,
  0x20, 0x54, 0x54, 0x79, 0x41,
  0x00, 0x00, 0x44, 0x7D, 0x41,
  0x30, 0x48, 0x48, 0x4A, 0x32,
  0x38, 0x40, 0x40, 0x22, 0x7A,
  0x00, 0x7A, 0x0A, 0x0A, 0x72,
  0x7D, 0x0D, 0x19, 0x31, 0x7D,
  0x26, 0x29, 0x29, 0x2F, 0x28,
  0x26, 0x29, 0x29, 0x29, 0x26,
  0x30, 0x48, 0x4D, 0x40, 0x20,
  0x38, 0x08, 0x08, 0x08, 0x08,
  0x08, 0x08, 0x08, 0x08, 0x38,
  0x2F, 0x10, 0xC8, 0xAC, 0xBA,
  0x2F, 0x10, 0x28, 0x34, 0xFA,
  0x00, 0x00, 0x7B, 0x00, 0x00,
  0x08, 0x14, 0x2A, 0x14, 0x22,
  0x22, 0x14, 0x2A, 0x14, 0x08,
  0xAA, 0x00, 0x55, 0x00, 0xAA,
  0xAA, 0x55, 0xAA, 0x55, 0xAA,
  0x00, 0x00, 0x00, 0xFF, 0x00,
  0x10, 0x10, 0x10, 0xFF, 0x00,
  0x14, 0x14, 0x14, 0xFF, 0x00,
  0x10, 0x10, 0xFF, 0x00, 0xFF,
  0x10, 0x10, 0xF0, 0x10, 0xF0,
  0x14, 0x14, 0x14, 0xFC, 0x00,
  0x14, 0x14, 0xF7, 0x00, 0xFF,
  0x00, 0x00, 0xFF, 0x00, 0xFF,
  0x14, 0x14, 0xF4, 0x04, 0xFC,
  0x14, 0x14, 0x17, 0x10, 0x1F,
  0x10, 0x10, 0x1F, 0x10, 0x1F,
  0x14, 0x14, 0x14, 0x1F, 0x00,
  0x10, 0x10, 0x10, 0xF0, 0x00,
  0x00, 0x00, 0x00, 0x1F, 0x10,
  0x10, 0x10, 0x10, 0x1F, 0x10,
  0x10, 0x10, 0x10, 0xF0, 0x10,
  0x00, 0x00, 0x00, 0xFF, 0x10,
  0x10, 0x10, 0x10, 0x10, 0x10,
  0x10, 0x10, 0x10, 0xFF, 0x10,
  0x00, 0x00, 0x00, 0xFF, 0x14,
  0x00, 0x00, 0xFF, 0x00, 0xFF,
  0x00, 0x00, 0x1F, 0x10, 0x17,
  0x00, 0x00, 0xFC, 0x04, 0xF4,
  0x14, 0x14, 0x17, 0x10, 0x17,
  0x14, 0x14, 0xF4, 0x04, 0xF4,
  0x00, 0x00, 0xFF, 0x00, 0xF7,
  0x14, 0x14, 0x14, 0x14, 0x14,
  0x14, 0x14, 0xF7, 0x00, 0xF7,
  0x14, 0x14, 0x14, 0x17, 0x14,
  0x10, 0x10, 0x1F, 0x10, 0x1F,
  0x14, 0x14, 0x14, 0xF4, 0x14,
  0x10, 0x10, 0xF0, 0x10, 0xF0,
  0x00, 0x00, 0x1F, 0x10, 0x1F,
  0x00, 0x00, 0x00, 0x1F, 0x14,
  0x00, 0x00, 0x00, 0xFC, 0x14,
  0x00, 0x00, 0xF0, 0x10, 0xF0,
  0x10, 0x10, 0xFF, 0x10, 0xFF,
  0x14, 0x14, 0x14, 0xFF, 0x14,
  0x10, 0x10, 0x10, 0x1F, 0x00,
  0x00, 0x00, 0x00, 0xF0, 0x10,
  0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
  0xF0, 0xF0, 0xF0, 0xF0, 0xF0,
  0xFF, 0xFF, 0xFF, 0x00, 0x00,
  0x00, 0x00, 0x00, 0xFF, 0xFF,
  0x0F, 0x0F, 0x0F, 0x0F, 0x0F,
  0x38, 0x44, 0x44, 0x38, 0x44,
  0x7C, 0x2A, 0x2A, 0x3E, 0x14,
  0x7E, 0x02, 0x02, 0x06, 0x06,
  0x02, 0x7E, 0x02, 0x7E, 0x02,
  0x63, 0x55, 0x49, 0x41, 0x63,
  0x38, 0x44, 0x44, 0x3C, 0x04,
  0x40, 0x7E, 0x20, 0x1E, 0x20,
  0x06, 0x02, 0x7E, 0x02, 0x02,
  0x99, 0xA5, 0xE7, 0xA5, 0x99,
  0x1C, 0x2A, 0x49, 0x2A, 0x1C,
  0x4C, 0x72, 0x01, 0x72, 0x4C,
  0x30, 0x4A, 0x4D, 0x4D, 0x30,
  0x30, 0x48, 0x78, 0x48, 0x30,
  0xBC, 0x62, 0x5A, 0x46, 0x3D,
  0x3E, 0x49, 0x49, 0x49, 0x00,
  0x7E, 0x01, 0x01, 0x01, 0x7E,
  0x2A, 0x2A, 0x2A, 0x2A, 0x2A,
  0x44, 0x44, 0x5F, 0x44, 0x44,
  0x40, 0x51, 0x4A, 0x44, 0x40,
  0x40, 0x44, 0x4A, 0x51, 0x40,
  0x00, 0x00, 0xFF, 0x01, 0x03,
  0xE0, 0x80, 0xFF, 0x00, 0x00,
  0x08, 0x08, 0x6B, 0x6B, 0x08,
  0x36, 0x12, 0x36, 0x24, 0x36,
  0x06, 0x0F, 0x09, 0x0F, 0x06,
  0x00, 0x00, 0x18, 0x18, 0x00,
  0x00, 0x00, 0x10, 0x10, 0x00,
  0x30, 0x40, 0xFF, 0x01, 0x01,
  0x00, 0x1F, 0x01, 0x01, 0x1E,
  0x00, 0x19, 0x1D, 0x17, 0x12,
  0x00, 0x3C, 0x3C, 0x3C, 0x3C,
  0x00, 0x00, 0x00, 0x00, 0x00,
};


static uint8_t ColStart, RowStart;
static uint8_t Rotation;
static enum initRFlags TabColor;
static int16_t _width = 128;
static int16_t _height = 160;
# 535 "inc/ST7735.c"
void static writecommand(uint8_t c) {

  while(((*((volatile uint32_t *)0x4000800C))&0x00000010)==0x00000010){};
  (*((volatile uint32_t *)0x40004020)) = 0;
  (*((volatile uint32_t *)0x40004100)) = 0;
  (*((volatile uint32_t *)0x40008008)) = c;

  while(((*((volatile uint32_t *)0x4000800C))&0x00000010)==0x00000010){};
}


void static writedata(uint8_t c) {
  while(((*((volatile uint32_t *)0x4000800C))&0x00000002)==0){};
  (*((volatile uint32_t *)0x40004100)) = 0x40;
  (*((volatile uint32_t *)0x40008008)) = c;
}

void static deselect(void) {

  while(((*((volatile uint32_t *)0x4000800C))&0x00000010)==0x00000010){};
  (*((volatile uint32_t *)0x40004020)) = 0x08;
}





void Delay1ms(uint32_t n){uint32_t volatile time;
  while(n){
    time = 72724*2/91;
    while(time){
      time--;
    }
    n--;
  }
}







static const uint8_t
  Bcmd[] = {
    18,
    0x01, 0x80,
      50,
    0x11 , 0x80,
      255,
    0x3A , 1+0x80,
      0x05,
      10,
    0xB1, 3+0x80,
      0x00,
      0x06,
      0x03,
      10,
    0x36 , 1 ,
      0x08,
    0xB6, 2 ,
      0x15,

      0x02,
    0xB4 , 1 ,
      0x0,
    0xC0 , 2+0x80,
      0x02,
      0x70,
      10,
    0xC1 , 1 ,
      0x05,
    0xC2 , 2 ,
      0x01,
      0x02,
    0xC5 , 2+0x80,
      0x3C,
      0x38,
      10,
    0xFC , 2 ,
      0x11, 0x15,
    0xE0,16 ,
      0x09, 0x16, 0x09, 0x20,
      0x21, 0x1B, 0x13, 0x19,
      0x17, 0x15, 0x1E, 0x2B,
      0x04, 0x05, 0x02, 0x0E,
    0xE1,16+0x80,
      0x0B, 0x14, 0x08, 0x1E,
      0x22, 0x1D, 0x18, 0x1E,
      0x1B, 0x1A, 0x24, 0x2B,
      0x06, 0x06, 0x02, 0x0F,
      10,
    0x2A , 4 ,
      0x00, 0x02,
      0x00, 0x81,
    0x2B , 4 ,
      0x00, 0x02,
      0x00, 0x81,
    0x13 , 0x80,
      10,
    0x29 , 0x80,
      255 };
static const uint8_t
  Rcmd1[] = {
    15,
    0x01, 0x80,
      150,
    0x11 , 0x80,
      255,
    0xB1, 3 ,
      0x01, 0x2C, 0x2D,
    0xB2, 3 ,
      0x01, 0x2C, 0x2D,
    0xB3, 6 ,
      0x01, 0x2C, 0x2D,
      0x01, 0x2C, 0x2D,
    0xB4 , 1 ,
      0x07,
    0xC0 , 3 ,
      0xA2,
      0x02,
      0x84,
    0xC1 , 1 ,
      0xC5,
    0xC2 , 2 ,
      0x0A,
      0x00,
    0xC3 , 2 ,
      0x8A,
      0x2A,
    0xC4 , 2 ,
      0x8A, 0xEE,
    0xC5 , 1 ,
      0x0E,
    0x20 , 0 ,
    0x36 , 1 ,
      0xC8,
    0x3A , 1 ,
      0x05 };
static const uint8_t
  Rcmd2green[] = {
    2,
    0x2A , 4 ,
      0x00, 0x02,
      0x00, 0x7F+0x02,
    0x2B , 4 ,
      0x00, 0x01,
      0x00, 0x9F+0x01 };
static const uint8_t
  Rcmd2red[] = {
    2,
    0x2A , 4 ,
      0x00, 0x00,
      0x00, 0x7F,
    0x2B , 4 ,
      0x00, 0x00,
      0x00, 0x9F };
static const uint8_t
  Rcmd3[] = {
    4,
    0xE0, 16 ,
      0x02, 0x1c, 0x07, 0x12,
      0x37, 0x32, 0x29, 0x2d,
      0x29, 0x25, 0x2B, 0x39,
      0x00, 0x01, 0x03, 0x10,
    0xE1, 16 ,
      0x03, 0x1d, 0x07, 0x06,
      0x2E, 0x2C, 0x29, 0x2D,
      0x2E, 0x2E, 0x37, 0x3F,
      0x00, 0x00, 0x02, 0x10,
    0x13 , 0x80,
      10,
    0x29 , 0x80,
      100 };




void static commandList(const uint8_t *addr) {

  uint8_t numCommands, numArgs;
  uint16_t ms;

  numCommands = *(addr++);
  while(numCommands--) {
    writecommand(*(addr++));
    numArgs = *(addr++);
    ms = numArgs & 0x80;
    numArgs &= ~0x80;
    while(numArgs--) {
      writedata(*(addr++));
    }

    if(ms) {
      ms = *(addr++);
      if(ms == 255) ms = 500;
      Delay1ms(ms);
    }
  }
}



void static commonInit(const uint8_t *cmdList) {
  volatile uint32_t delay;
  ColStart = RowStart = 0;

  (*((volatile uint32_t *)0x400FE61C)) |= 0x01;
  (*((volatile uint32_t *)0x400FE608)) |= 0x01;
  while(((*((volatile uint32_t *)0x400FEA08))&0x01)==0){};



  (*((volatile uint32_t *)0x40004400)) |= 0xC8;
  (*((volatile uint32_t *)0x40004420)) &= ~0xC8;
  (*((volatile uint32_t *)0x4000451C)) |= 0xC8;





  (*((volatile uint32_t *)0x4000452C)) = ((*((volatile uint32_t *)0x4000452C))&0x00FF0FFF)+0x00000000;

 (*((volatile uint32_t *)0x40004528)) &= ~0xC8;


  (*((volatile uint32_t *)0x40004020)) = 0;
  (*((volatile uint32_t *)0x40004200)) = 0x80;
  Delay1ms(500);
  (*((volatile uint32_t *)0x40004200)) = 0;
  Delay1ms(500);
  (*((volatile uint32_t *)0x40004200)) = 0x80;
  Delay1ms(500);


  (*((volatile uint32_t *)0x40004420)) |= 0x2C;
  (*((volatile uint32_t *)0x4000451C)) |= 0x2C;

  (*((volatile uint32_t *)0x4000452C)) = ((*((volatile uint32_t *)0x4000452C))&0xFF0F00FF)+0x00202200;
  (*((volatile uint32_t *)0x40004528)) &= ~0x2C;
  (*((volatile uint32_t *)0x40008004)) &= ~0x00000002;
  (*((volatile uint32_t *)0x40008004)) &= ~0x00000004;

  (*((volatile uint32_t *)0x40008FC8)) = ((*((volatile uint32_t *)0x40008FC8))&~0x0000000F)+0x00000000;





  (*((volatile uint32_t *)0x40008010)) = ((*((volatile uint32_t *)0x40008010))&~0x000000FF)+10;
  (*((volatile uint32_t *)0x40008000)) &= ~(0x0000FF00 |
                  0x00000080 |
                  0x00000040);

  (*((volatile uint32_t *)0x40008000)) = ((*((volatile uint32_t *)0x40008000))&~0x00000030)+0x00000000;

  (*((volatile uint32_t *)0x40008000)) = ((*((volatile uint32_t *)0x40008000))&~0x0000000F)+0x00000007;
  (*((volatile uint32_t *)0x40008004)) |= 0x00000002;

  if(cmdList) commandList(cmdList);
}






void ST7735_InitB(void) {
  commonInit(Bcmd);
  ST7735_SetCursor(0,0);
  StTextColor = 0x07FF;
  ST7735_FillScreen(0);
}






void ST7735_InitR(enum initRFlags option) {
  commonInit(Rcmd1);
  if(option == INITR_GREENTAB) {
    commandList(Rcmd2green);
    ColStart = 2;
    RowStart = 1;
  } else {

    commandList(Rcmd2red);
  }
  commandList(Rcmd3);


  if (option == INITR_BLACKTAB) {
    writecommand(0x36);
    writedata(0xC0);
  }
  TabColor = option;
  ST7735_SetCursor(0,0);
  StTextColor = 0x07FF;
  ST7735_FillScreen(0);
}






void static setAddrWindow(uint8_t x0, uint8_t y0, uint8_t x1, uint8_t y1) {

  writecommand(0x2A);
  writedata(0x00);
  writedata(x0+ColStart);
  writedata(0x00);
  writedata(x1+ColStart);

  writecommand(0x2B);
  writedata(0x00);
  writedata(y0+RowStart);
  writedata(0x00);
  writedata(y1+RowStart);

  writecommand(0x2C);
}




void static pushColor(uint16_t color) {
  writedata((uint8_t)(color >> 8));
  writedata((uint8_t)color);
}
# 879 "inc/ST7735.c"
void ST7735_DrawPixel(int16_t x, int16_t y, uint16_t color) {

  if((x < 0) || (x >= _width) || (y < 0) || (y >= _height)) return;


  setAddrWindow(x,y,x,y);

  pushColor(color);

  deselect();
}
# 901 "inc/ST7735.c"
void ST7735_DrawFastVLine(int16_t x, int16_t y, int16_t h, uint16_t color) {
  uint8_t hi = color >> 8, lo = color;


  if((x >= _width) || (y >= _height)) return;
  if((y+h-1) >= _height) h = _height-y;
  setAddrWindow(x, y, x, y+h-1);

  while (h--) {
    writedata(hi);
    writedata(lo);
  }

  deselect();
}
# 927 "inc/ST7735.c"
void ST7735_DrawFastHLine(int16_t x, int16_t y, int16_t w, uint16_t color) {
  uint8_t hi = color >> 8, lo = color;


  if((x >= _width) || (y >= _height)) return;
  if((x+w-1) >= _width) w = _width-x;
  setAddrWindow(x, y, x+w-1, y);

  while (w--) {
    writedata(hi);
    writedata(lo);
  }

  deselect();
}







void ST7735_FillScreen(uint16_t color) {
  ST7735_FillRect(0, 0, _width, _height, color);

}
# 964 "inc/ST7735.c"
void ST7735_FillRect(int16_t x, int16_t y, int16_t w, int16_t h, uint16_t color) {
  uint8_t hi = color >> 8, lo = color;


  if((x >= _width) || (y >= _height)) return;
  if((x + w - 1) >= _width) w = _width - x;
  if((y + h - 1) >= _height) h = _height - y;

  setAddrWindow(x, y, x+w-1, y+h-1);

  for(y=h; y>0; y--) {
    for(x=w; x>0; x--) {
      writedata(hi);
      writedata(lo);
    }
  }

  deselect();
}
# 992 "inc/ST7735.c"
int16_t const smallCircle[6][3]={
    {2,3, 2},
  {1 , 4, 4},
 {0 , 5, 6},
 {0 , 5, 6},
  {1 , 4, 4},
    {2,3, 2}};
void ST7735_DrawSmallCircle(int16_t x, int16_t y, uint16_t color) {
  uint32_t i,w;
  uint8_t hi = color >> 8, lo = color;

  if((x>_width-5)||(y>_height-5)) return;
  for(i=0; i<6; i++){
    setAddrWindow(x+smallCircle[i][0], y+i, x+smallCircle[i][1], y+i);
    w = smallCircle[i][2];
    while (w--) {
      writedata(hi);
      writedata(lo);
    }
  }
  deselect();
}
# 1022 "inc/ST7735.c"
int16_t const circle[10][3]={
      { 4,5, 2},
    {2 , 7, 6},
  {1 , 8, 8},
  {1 , 8, 8},
 {0 , 9, 10},
 {0 , 9, 10},
  {1 , 8, 8},
  {1 , 8, 8},
    {2 , 7, 6},
     { 4,5, 2}};
void ST7735_DrawCircle(int16_t x, int16_t y, uint16_t color) {
  uint32_t i,w;
  uint8_t hi = color >> 8, lo = color;

  if((x>_width-9)||(y>_height-9)) return;
  for(i=0; i<10; i++){
    setAddrWindow(x+circle[i][0], y+i, x+circle[i][1], y+i);
    w = circle[i][2];
    while (w--) {
      writedata(hi);
      writedata(lo);
    }
  }
  deselect();
}







uint16_t ST7735_Color565(uint8_t r, uint8_t g, uint8_t b) {
  return ((b & 0xF8) << 8) | ((g & 0xFC) << 3) | (r >> 3);
}







uint16_t ST7735_SwapColor(uint16_t x) {
  return (x << 11) | (x & 0x07E0) | (x >> 11);
}
# 1089 "inc/ST7735.c"
void ST7735_DrawBitmap(int16_t x, int16_t y, const uint16_t *image, int16_t w, int16_t h){
  int16_t skipC = 0;
  int16_t originalWidth = w;
  int i = w*(h - 1);

  if((x >= _width) || ((y - h + 1) >= _height) || ((x + w) <= 0) || (y < 0)){
    return;
  }
  if((w > _width) || (h > _height)){




    return;
  }
  if((x + w - 1) >= _width){
    skipC = (x + w) - _width;
    w = _width - x;
  }
  if((y - h + 1) < 0){
    i = i - (h - y - 1)*originalWidth;
    h = y + 1;
  }
  if(x < 0){
    w = w + x;
    skipC = -1*x;
    i = i - x;
    x = 0;
  }
  if(y >= _height){
    h = h - (y - _height + 1);
    y = _height - 1;
  }

  setAddrWindow(x, y-h+1, x+w-1, y);

  for(y=0; y<h; y=y+1){
    for(x=0; x<w; x=x+1){

      writedata((uint8_t)(image[i] >> 8));

      writedata((uint8_t)image[i]);
      i = i + 1;
    }
    i = i + skipC;
    i = i - 2*originalWidth;
  }

  deselect();
}
# 1156 "inc/ST7735.c"
void ST7735_DrawCharS(int16_t x, int16_t y, char c, int16_t textColor, int16_t bgColor, uint8_t size){
  uint8_t line;
  int32_t i, j;
  if((x >= _width) ||
     (y >= _height) ||
     ((x + 6 * size - 1) < 0) ||
     ((y + 8 * size - 1) < 0))
    return;

  for (i=0; i<6; i++ ) {
    if (i == 5)
      line = 0x0;
    else
      line = Font[(c*5)+i];
    for (j = 0; j<8; j++) {
      if (line & 0x1) {
        if (size == 1)
          ST7735_DrawPixel(x+i, y+j, textColor);
        else {
          ST7735_FillRect(x+(i*size), y+(j*size), size, size, textColor);
        }
      } else if (bgColor != textColor) {
        if (size == 1)
          ST7735_DrawPixel(x+i, y+j, bgColor);
        else {
          ST7735_FillRect(x+i*size, y+j*size, size, size, bgColor);
        }
      }
      line >>= 1;
    }
  }
}
# 1203 "inc/ST7735.c"
void ST7735_DrawChar(int16_t x, int16_t y, char c, int16_t textColor, int16_t bgColor, uint8_t size){
  uint8_t line;
  int32_t col, row, i, j;
  if(((x + 6*size - 1) >= _width) ||
     ((y + 8*size - 1) >= _height) ||
     ((x + 6*size - 1) < 0) ||
     ((y + 8*size - 1) < 0)){
    return;
  }

  setAddrWindow(x, y, x+6*size-1, y+8*size-1);

  line = 0x01;

  for(row=0; row<8; row=row+1){
    for(i=0; i<size; i=i+1){

      for(col=0; col<5; col=col+1){
        if(Font[(c*5)+col]&line){

          for(j=0; j<size; j=j+1){
            pushColor(textColor);
          }
        } else{

          for(j=0; j<size; j=j+1){
            pushColor(bgColor);
          }
        }
      }

      for(j=0; j<size; j=j+1){
        pushColor(bgColor);
      }
    }
    line = line<<1;
  }

  deselect();
}
# 1253 "inc/ST7735.c"
uint32_t ST7735_DrawString(uint16_t x, uint16_t y, char *pt, int16_t textColor){
  uint32_t count = 0;
  if(y>15) return 0;
  while(*pt){
    ST7735_DrawCharS(x*6, y*10, *pt, textColor, 0x0000, 1);
    pt++;
    x = x+1;
    if(x>20) return count;
    count++;
  }
  return count;
}






char Message[12];
uint32_t Messageindex;

void fillmessage(uint32_t n){


  if(n >= 10){
    fillmessage(n/10);
    n = n%10;
  }
  Message[Messageindex] = (n+'0');
  if(Messageindex<11)Messageindex++;
}

void fillmessage4(uint32_t n){
  if(n>9999)n=9999;
  if(n>=1000){
    Messageindex = 0;
  } else if(n>=100){
    Message[0] = ' ';
    Messageindex = 1;
  }else if(n>=10){
    Message[0] = ' ';
    Message[1] = ' ';
    Messageindex = 2;
  }else{
    Message[0] = ' ';
    Message[1] = ' ';
    Message[2] = ' ';
    Messageindex = 3;
  }
  fillmessage(n);
}
void fillmessage5(uint32_t n){
  if(n>99999)n=99999;
  if(n>=10000){
    Messageindex = 0;
  } else if(n>=1000){
    Message[0] = ' ';
    Messageindex = 1;
  }else if(n>=100){
    Message[0] = ' ';
    Message[1] = ' ';
    Messageindex = 2;
  }else if(n>=10){
    Message[0] = ' ';
    Message[1] = ' ';
    Message[2] = ' ';
    Messageindex = 3;
  }else{
    Message[0] = ' ';
    Message[1] = ' ';
    Message[2] = ' ';
    Message[3] = ' ';
    Messageindex = 4;
  }
  fillmessage(n);
}
# 1337 "inc/ST7735.c"
void ST7735_SetCursor(uint32_t newX, uint32_t newY){
  if((newX > 20) || (newY > 15)){
    return;
  }
  StX = newX;
  StY = newY;
}







void ST7735_OutUDec(uint32_t n){
  Messageindex = 0;
  fillmessage(n);
  Message[Messageindex] = 0;
  ST7735_DrawString(StX,StY,Message,StTextColor);
  StX = StX+Messageindex;
  if(StX>20){
    StX = 20;
    ST7735_DrawCharS(StX*6,StY*10,'*',0x001F,0x0000, 1);
  }
}
# 1370 "inc/ST7735.c"
void ST7735_OutUDec4(uint32_t n){
  Messageindex = 0;
  fillmessage4(n);
  Message[Messageindex] = 0;
  ST7735_DrawString(StX,StY,Message,StTextColor);
  StX = StX+Messageindex;
  if(StX>20){
    StX = 20;
    ST7735_DrawCharS(StX*6,StY*10,'*',0x001F,0x0000, 1);
  }
}







void ST7735_OutUDec5(uint32_t n){
  Messageindex = 0;
  fillmessage5(n);
  Message[Messageindex] = 0;
  ST7735_DrawString(StX,StY,Message,StTextColor);
  StX = StX+Messageindex;
  if(StX>20){
    StX = 20;
    ST7735_DrawCharS(StX*6,StY*10,'*',0x001F,0x0000, 1);
  }
}
# 1417 "inc/ST7735.c"
void ST7735_SetRotation(uint8_t m) {

  writecommand(0x36);
  Rotation = m % 4;
  switch (Rotation) {
   case 0:
     if (TabColor == INITR_BLACKTAB) {
       writedata(0x40 | 0x80 | 0x00);
     } else {
       writedata(0x40 | 0x80 | 0x08);
     }
     _width = 128;
     _height = 160;
     break;
   case 1:
     if (TabColor == INITR_BLACKTAB) {
       writedata(0x80 | 0x20 | 0x00);
     } else {
       writedata(0x80 | 0x20 | 0x08);
     }
     _width = 160;
     _height = 128;
     break;
  case 2:
     if (TabColor == INITR_BLACKTAB) {
       writedata(0x00);
     } else {
       writedata(0x08);
     }
     _width = 128;
     _height = 160;
    break;
   case 3:
     if (TabColor == INITR_BLACKTAB) {
       writedata(0x40 | 0x20 | 0x00);
     } else {
       writedata(0x40 | 0x20 | 0x08);
     }
     _width = 160;
     _height = 128;
     break;
  }

  deselect();
}







void ST7735_InvertDisplay(int i) {
  if(i){
    writecommand(0x21);
  } else{
    writecommand(0x20);
  }
  deselect();
}





int32_t Ymax,Ymin,X;
int32_t Yrange;






void ST7735_PlotClear(int32_t ymin, int32_t ymax){
  ST7735_FillRect(0, 32, 128, 128, ST7735_Color565(228,228,228));
  if(ymax>ymin){
    Ymax = ymax;
    Ymin = ymin;
    Yrange = ymax-ymin;
  } else{
    Ymax = ymin;
    Ymin = ymax;
    Yrange = ymax-ymin;
  }

  X = 0;
}






void ST7735_PlotPoint(int32_t y){int32_t j;
  if(y<Ymin) y=Ymin;
  if(y>Ymax) y=Ymax;




  j = 32+(127*(Ymax-y))/Yrange;
  if(j<32) j = 32;
  if(j>159) j = 159;
  ST7735_DrawPixel(X, j, 0xF800);
  ST7735_DrawPixel(X+1, j, 0xF800);
  ST7735_DrawPixel(X, j+1, 0xF800);
  ST7735_DrawPixel(X+1, j+1, 0xF800);
}





int32_t lastj=0;
void ST7735_PlotLine(int32_t y){int32_t i,j;
  if(y<Ymin) y=Ymin;
  if(y>Ymax) y=Ymax;




  j = 32+(127*(Ymax-y))/Yrange;
  if(j < 32) j = 32;
  if(j > 159) j = 159;
  if(lastj < 32) lastj = j;
  if(lastj > 159) lastj = j;
  if(lastj < j){
    for(i = lastj+1; i<=j ; i++){
      ST7735_DrawPixel(X, i, 0xF800) ;
      ST7735_DrawPixel(X+1, i, 0xF800) ;
    }
  }else if(lastj > j){
    for(i = j; i<lastj ; i++){
      ST7735_DrawPixel(X, i, 0xF800) ;
      ST7735_DrawPixel(X+1, i, 0xF800) ;
    }
  }else{
    ST7735_DrawPixel(X, j, 0xF800) ;
    ST7735_DrawPixel(X+1, j, 0xF800) ;
  }
  lastj = j;
}







void ST7735_PlotPoints(int32_t y1,int32_t y2){int32_t j;
  if(y1<Ymin) y1=Ymin;
  if(y1>Ymax) y1=Ymax;




  j = 32+(127*(Ymax-y1))/Yrange;
  if(j<32) j = 32;
  if(j>159) j = 159;
  ST7735_DrawPixel(X, j, 0xF800);
  if(y2<Ymin) y2=Ymin;
  if(y2>Ymax) y2=Ymax;
  j = 32+(127*(Ymax-y2))/Yrange;
  if(j<32) j = 32;
  if(j>159) j = 159;
  ST7735_DrawPixel(X, j, 0x0000);
}





void ST7735_PlotBar(int32_t y){
int32_t j;
  if(y<Ymin) y=Ymin;
  if(y>Ymax) y=Ymax;




  j = 32+(127*(Ymax-y))/Yrange;
  ST7735_DrawFastVLine(X, j, 159-j, 0x0000);

}



uint8_t const dBfs[512]={
159, 159, 145, 137, 131, 126, 123, 119, 117, 114, 112, 110, 108, 107, 105, 104, 103, 101,
  100, 99, 98, 97, 96, 95, 94, 93, 93, 92, 91, 90, 90, 89, 88, 88, 87, 87, 86, 85, 85, 84,
  84, 83, 83, 82, 82, 81, 81, 81, 80, 80, 79, 79, 79, 78, 78, 77, 77, 77, 76, 76, 76, 75,
  75, 75, 74, 74, 74, 73, 73, 73, 72, 72, 72, 72, 71, 71, 71, 71, 70, 70, 70, 70, 69, 69,
  69, 69, 68, 68, 68, 68, 67, 67, 67, 67, 66, 66, 66, 66, 66, 65, 65, 65, 65, 65, 64, 64,
  64, 64, 64, 63, 63, 63, 63, 63, 63, 62, 62, 62, 62, 62, 62, 61, 61, 61, 61, 61, 61, 60,
  60, 60, 60, 60, 60, 59, 59, 59, 59, 59, 59, 59, 58, 58, 58, 58, 58, 58, 58, 57, 57, 57,
  57, 57, 57, 57, 56, 56, 56, 56, 56, 56, 56, 56, 55, 55, 55, 55, 55, 55, 55, 55, 54, 54,
  54, 54, 54, 54, 54, 54, 53, 53, 53, 53, 53, 53, 53, 53, 53, 52, 52, 52, 52, 52, 52, 52,
  52, 52, 52, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 50, 50, 50, 50, 50, 50, 50, 50, 50,
  50, 49, 49, 49, 49, 49, 49, 49, 49, 49, 49, 49, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48,
  48, 47, 47, 47, 47, 47, 47, 47, 47, 47, 47, 47, 47, 46, 46, 46, 46, 46, 46, 46, 46, 46,
  46, 46, 46, 46, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 44, 44, 44, 44, 44,
  44, 44, 44, 44, 44, 44, 44, 44, 44, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43,
  43, 43, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 41, 41, 41, 41, 41,
  41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40,
  40, 40, 40, 40, 40, 40, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39,
  39, 39, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 37,
  37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 36, 36, 36, 36,
  36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 35, 35, 35, 35, 35,
  35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 34, 34, 34, 34, 34, 34,
  34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 33, 33, 33, 33, 33,
  33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 32, 32, 32,
  32, 32, 32, 32, 32, 32, 32, 32, 32, 32
};







void ST7735_PlotdBfs(int32_t y){
int32_t j;
  y = y/2;
  if(y<0) y=0;
  if(y>511) y=511;




  j = dBfs[y];
  ST7735_DrawFastVLine(X, j, 159-j, 0x0000);

}







void ST7735_PlotNext(void){
  if(X==127){
    X = 0;
  } else{
    X++;
  }
}







void ST7735_PlotNextErase(void){
  if(X==127){
    X = 0;
  } else{
    X++;
  }
  ST7735_DrawFastVLine(X,32,128,ST7735_Color565(228,228,228));
}
# 1729 "inc/ST7735.c"
void ST7735_OutChar(char ch){
  if((ch == 10) || (ch == 13) || (ch == 27)){
    StY++; StX=0;
    if(StY>15){
      StY = 0;
    }
    ST7735_DrawString(0,StY,"                     ",StTextColor);
    return;
  }
  ST7735_DrawCharS(StX*6,StY*10,ch,0x07FF,0x0000, 1);
  StX++;
  if(StX>20){
    StX = 20;
    ST7735_DrawCharS(StX*6,StY*10,'*',0x001F,0x0000, 1);
  }
  return;
}







void ST7735_OutString(char *ptr){
  while(*ptr){
    ST7735_OutChar(*ptr);
    ptr = ptr + 1;
  }
}






void ST7735_SetTextColor(uint16_t color){
  StTextColor = color;
}


int fputc(int ch, FILE *f){
  ST7735_OutChar(ch);
  return 1;
}

int fgetc (FILE *f){
  return 0;
}

int ferror(FILE *f){

  return (-1);
}
# 1791 "inc/ST7735.c"
void Output_Init(void){
  ST7735_InitR(INITR_REDTAB);
  ST7735_FillScreen(0);
}


void Output_Clear(void){
  ST7735_FillScreen(0);
}

void Output_Off(void){
  Output_Clear();
}

void Output_On(void){
  Output_Init();
}




void Output_Color(uint32_t newColor){
  ST7735_SetTextColor(newColor);
}
# 1833 "inc/ST7735.c"
void ST7735_sDecOut2(int32_t n){

  int t = n;


  if(n < -9999){
    ST7735_OutString(" -**.**");
    return;
  }else if(n > 9999){
    ST7735_OutString("  **.**");
    return;
  }else{
    ST7735_OutString(" ");
    if(n < 0){
      t = -t;
      if(t < 100){
        ST7735_OutString(" -0.");
      }else if(t < 1000){
        ST7735_OutString(" -");
        ST7735_OutUDec(t/100);
        ST7735_OutString(".");
      }else{
        ST7735_OutString("-");
        ST7735_OutUDec(t/100);
        ST7735_OutString(".");
      }
    }else{
      if(t < 100){
        ST7735_OutString("  0.");
      }else if(t < 1000){
        ST7735_OutString("  ");
        ST7735_OutUDec(t/100);
        ST7735_OutString(".");
      }else{
        ST7735_OutString(" ");
        ST7735_OutUDec(t/100);
        ST7735_OutString(".");
      }
    }
    if((t%100) < 10){
      ST7735_OutString("0");
      ST7735_OutUDec(t%100);
    }else{
      ST7735_OutUDec(t%100);
    }
    return;
  }
}
# 1904 "inc/ST7735.c"
void ST7735_uBinOut6(uint32_t n){

  int t = ((n*100) +32) >> 6;

  if(n >= 64000){
    ST7735_OutString(" ***.**");
    return;
  }else{
      if(t < 100){
        ST7735_OutString("   0.");
      }else if(t < 1000){
        ST7735_OutString("   ");
        ST7735_OutUDec(t/100);
        ST7735_OutString(".");
      }else if(t < 10000){
        ST7735_OutString("  ");
        ST7735_OutUDec(t/100);
        ST7735_OutString(".");
      }
      else{
        ST7735_OutString(" ");
        ST7735_OutUDec(t/100);
        ST7735_OutString(".");
      }
      if((t%100) < 10){
        ST7735_OutString("0");
        ST7735_OutUDec(t%100);
      }else{
        ST7735_OutUDec(t%100);
      }
    return;
  }
}
# 1954 "inc/ST7735.c"
void plotLineX(uint16_t x1, uint16_t y1, uint16_t x2, uint16_t y2, uint16_t color){
  int32_t d = 0;
  int32_t dx = x2-x1;
  int32_t dy = y2-y1;
  int32_t plotY = 0;



  d = 2*abs(dy) - dx;

  plotY = y1;

  for(int32_t plotX = x1; plotX < x2; plotX++){
    if(abs(dx) > abs(dy)){
      ST7735_DrawPixel(plotX, plotY, color);
      ST7735_DrawPixel(plotX, plotY+1, color);
    }else{
      ST7735_DrawPixel(plotX, plotY, color);
      ST7735_DrawPixel(plotX+1, plotY, color);
    }
    if(d > 0){
      if(dy < 0){
        plotY--;
      }else{
        plotY++;
      }
      d -= 2*dx;
    }
    d += 2*abs(dy);
  }
}


void plotLineY(uint16_t x1, uint16_t y1, uint16_t x2, uint16_t y2, uint16_t color){
  int32_t d = 0;
  int32_t dx = x2-x1;
  int32_t dy = y2-y1;
  int32_t plotX = 0;



  d = 2*abs(dx) - dy;

  plotX = x1;

  for(int32_t plotY = y1; plotY < y2; plotY++){
    if(abs(dx) > abs(dy)){
      ST7735_DrawPixel(plotX, plotY, color);
      ST7735_DrawPixel(plotX, plotY+1, color);
    }else{
      ST7735_DrawPixel(plotX, plotY, color);
      ST7735_DrawPixel(plotX+1, plotY, color);
    }
    if(d > 0){
      if(dx < 0){
        plotX--;
      }else{
        plotX++;
      }
      d -= 2*dy;
    }
    d += 2*abs(dx);
  }
}
# 2031 "inc/ST7735.c"
void ST7735_Line(uint16_t x1, uint16_t y1, uint16_t x2, uint16_t y2, uint16_t color){

  if(abs(y2 - y1) < abs(x2 - x1)){

    if(x1 < x2){
      plotLineX(x1, y1, x2, y2, color);
    }else{
      plotLineX(x2, y2, x1, y1, color);
    }
  }else{

    if(y1 < y2){
      plotLineY(x1, y1, x2, y2, color);
    }else{
      plotLineY(x2, y2, x1, y1, color);
    }
  }
}
# 2058 "inc/ST7735.c"
void ST7735_SetX(int32_t newX){
  if(newX > 127){
    X = 127;
  }else if(newX < 0){
    X = 0;
  }else{
    X = newX;
  }
}
# 2090 "inc/ST7735.c"
int32_t low_x, high_x, low_y, high_y;
void ST7735_XYplotInit(int32_t minX, int32_t maxX, int32_t minY, int32_t maxY){


 Output_Clear();
 ST7735_SetCursor(0, 0);
# 2106 "inc/ST7735.c"
 low_x = minX;
 high_x = maxX;
 low_y = minY;
 high_y = maxY;

}
# 2132 "inc/ST7735.c"
void ST7735_XYplot(uint32_t num, int32_t bufX[], int32_t bufY[]){


 int32_t x_conversion, y_conversion, x_shift, y_shift;
 x_conversion = (128 * 100000) / (high_x - low_x);
 y_conversion = (160 * 100000) / (high_y - low_y);
 x_shift = 0;
 y_shift = 0;


 if(low_x < 0){

  x_shift = (low_x * x_conversion) / 100000;

  x_shift = x_shift * (-1);
 }

 if(low_y < 0){

  y_shift = (low_y * y_conversion) / 100000;

  y_shift = y_shift * (-1);
 }



 for(uint32_t index = 0; index < num; index ++){
  int32_t x, y;

  x = bufX[index];
  y = bufY[index];


  if((x < low_x) || (x > high_x) || (y < low_y) || (y > high_y)){

  }else{

   uint32_t point_x, point_y;


   point_x = ((bufX[index] * x_conversion) / 100000) + x_shift;
   point_y = 160 - (((bufY[index] * y_conversion) / 100000) + y_shift);


   ST7735_DrawPixel(point_x, point_y, ST7735_Color565(255, 0, 0));

  }

 }
}







int32_t get_exponential(int16_t power){
 int32_t result = 1;

 if(power == 0){
  return(result);
 }

 while(power > 0){
  result = result * 10;
  power --;
 }
 return(result);
}
# 2219 "inc/ST7735.c"
int16_t Extract_signed (int32_t number, int16_t place){
 number = number / get_exponential(place);

 number = number % 10;

 return(number);
}
# 2243 "inc/ST7735.c"
int16_t Extract_unsigned (uint32_t number, int16_t place){
 number = number / get_exponential(place);

 number = number % 10;

 return(number);
}
# 2262 "inc/ST7735.c"
char IntegerToChar(int16_t integer){

 if((integer > 9) || (integer < 0)){
  return('#');
 }

 char charValue = integer + '0';
 return(charValue);
}
# 2289 "inc/ST7735.c"
void ST7735_sDecOut3(int32_t n){




 if(n > 99999){
  ST7735_OutString(" **.***");
 }


 else if(n < -99999){
  ST7735_OutString("-**.***");
 }

 else{


  char *String_Builder;



  String_Builder = (char*)malloc(8*sizeof(char));

  int32_t input = n;

  if(n < 0){

    String_Builder[0] = '-';
    input = input * -1;
  }else{

   String_Builder[0] = ' ';
  }


  int16_t temporal = Extract_signed(input, 4);

  if(temporal == 0){
   String_Builder[1] = ' ';
  }else{
   String_Builder[1] = IntegerToChar(temporal);
  }


  temporal = Extract_signed(input,3);
  String_Builder[2] = IntegerToChar(temporal);



  String_Builder[3] = ':';


  temporal = Extract_signed(input, 2);
  String_Builder[4] = IntegerToChar(temporal);


  temporal = Extract_signed(input, 1);
  String_Builder[5] = IntegerToChar(temporal);


  temporal = Extract_signed(input, 0);
  String_Builder[6] = IntegerToChar(temporal);



  String_Builder[7] = 0;



  ST7735_OutString(String_Builder);

 }


}
# 2391 "inc/ST7735.c"
void ST7735_uBinOut5(uint32_t n){


 if(n > 31999){
  ST7735_OutString("***.**");
 }else{



  uint32_t blown_up = n * 100;

  char *String_Builder;


  String_Builder = (char*)malloc(7*sizeof(char));

  uint32_t temporal = Extract_unsigned((blown_up / 32), 4);


  if(temporal == 0){

   String_Builder[0] = ' ';

  }else{
   String_Builder[0] = IntegerToChar(temporal);
  }

  temporal = Extract_unsigned((blown_up / 32), 3);

  if((temporal == 0) && (String_Builder[0] == ' ')){
   String_Builder[1] = ' ';
  }else{
   String_Builder[1] = IntegerToChar(temporal);
  }

  temporal = Extract_unsigned((blown_up / 32), 2);

  String_Builder[2] = IntegerToChar(temporal);



  String_Builder[3] = '.';

  temporal = Extract_unsigned((blown_up / 32), 1);

  String_Builder[4] = IntegerToChar(temporal);

  temporal = Extract_unsigned((blown_up / 32), 0);

  String_Builder[5] = IntegerToChar(temporal);


  String_Builder[6] = 0;




  ST7735_OutString(String_Builder);

 }
}
