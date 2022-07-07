# 1 "Music.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 366 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "Music.c" 2


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
# 4 "Music.c" 2
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
# 5 "Music.c" 2
# 1 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\math.h" 1 3
# 157 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\math.h" 3
extern __attribute__((__pcs__("aapcs"))) unsigned __ARM_dcmp4(double , double );
extern __attribute__((__pcs__("aapcs"))) unsigned __ARM_fcmp4(float , float );







extern __attribute__((__nothrow__)) __attribute__((__pcs__("aapcs"))) int __ARM_fpclassifyf(float );
extern __attribute__((__nothrow__)) __attribute__((__pcs__("aapcs"))) int __ARM_fpclassify(double );



static __inline __attribute__((__nothrow__)) __attribute__((__pcs__("aapcs"))) int __ARM_isfinitef(float __x)
{
    return (((*(unsigned *)&(__x)) >> 23) & 0xff) != 0xff;
}
static __inline __attribute__((__nothrow__)) __attribute__((__pcs__("aapcs"))) int __ARM_isfinite(double __x)
{
    return (((*(1 + (unsigned *)&(__x))) >> 20) & 0x7ff) != 0x7ff;
}



static __inline __attribute__((__nothrow__)) __attribute__((__pcs__("aapcs"))) int __ARM_isinff(float __x)
{
    return ((*(unsigned *)&(__x)) << 1) == 0xff000000;
}
static __inline __attribute__((__nothrow__)) __attribute__((__pcs__("aapcs"))) int __ARM_isinf(double __x)
{
    return (((*(1 + (unsigned *)&(__x))) << 1) == 0xffe00000) && ((*(unsigned *)&(__x)) == 0);
}



static __inline __attribute__((__nothrow__)) __attribute__((__pcs__("aapcs"))) int __ARM_islessgreaterf(float __x, float __y)
{
    unsigned __f = __ARM_fcmp4(__x, __y) >> 28;
    return (__f == 8) || (__f == 2);
}
static __inline __attribute__((__nothrow__)) __attribute__((__pcs__("aapcs"))) int __ARM_islessgreater(double __x, double __y)
{
    unsigned __f = __ARM_dcmp4(__x, __y) >> 28;
    return (__f == 8) || (__f == 2);
}





static __inline __attribute__((__nothrow__)) __attribute__((__pcs__("aapcs"))) int __ARM_isnanf(float __x)
{
    return (0x7f800000 - ((*(unsigned *)&(__x)) & 0x7fffffff)) >> 31;
}
static __inline __attribute__((__nothrow__)) __attribute__((__pcs__("aapcs"))) int __ARM_isnan(double __x)
{
    unsigned __xf = (*(1 + (unsigned *)&(__x))) | (((*(unsigned *)&(__x)) == 0) ? 0 : 1);
    return (0x7ff00000 - (__xf & 0x7fffffff)) >> 31;
}



static __inline __attribute__((__nothrow__)) __attribute__((__pcs__("aapcs"))) int __ARM_isnormalf(float __x)
{
    unsigned __xe = ((*(unsigned *)&(__x)) >> 23) & 0xff;
    return (__xe != 0xff) && (__xe != 0);
}
static __inline __attribute__((__nothrow__)) __attribute__((__pcs__("aapcs"))) int __ARM_isnormal(double __x)
{
    unsigned __xe = ((*(1 + (unsigned *)&(__x))) >> 20) & 0x7ff;
    return (__xe != 0x7ff) && (__xe != 0);
}



static __inline __attribute__((__nothrow__)) __attribute__((__pcs__("aapcs"))) int __ARM_signbitf(float __x)
{
    return (*(unsigned *)&(__x)) >> 31;
}
static __inline __attribute__((__nothrow__)) __attribute__((__pcs__("aapcs"))) int __ARM_signbit(double __x)
{
    return (*(1 + (unsigned *)&(__x))) >> 31;
}
# 266 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\math.h" 3
  typedef float float_t;
  typedef double double_t;
# 282 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\math.h" 3
extern const int math_errhandling;







extern __attribute__((__nothrow__)) double acos(double );



extern __attribute__((__nothrow__)) double asin(double );





extern __attribute__((__nothrow__)) __attribute__((__const__)) double atan(double );



extern __attribute__((__nothrow__)) double atan2(double , double );





extern __attribute__((__nothrow__)) double cos(double );




extern __attribute__((__nothrow__)) double sin(double );





extern void __use_accurate_range_reduction(void);



extern __attribute__((__nothrow__)) double tan(double );





extern __attribute__((__nothrow__)) double cosh(double );




extern __attribute__((__nothrow__)) double sinh(double );






extern __attribute__((__nothrow__)) __attribute__((__const__)) double tanh(double );



extern __attribute__((__nothrow__)) double exp(double );






extern __attribute__((__nothrow__)) double frexp(double , int * ) __attribute__((__nonnull__(2)));







extern __attribute__((__nothrow__)) double ldexp(double , int );




extern __attribute__((__nothrow__)) double log(double );





extern __attribute__((__nothrow__)) double log10(double );



extern __attribute__((__nothrow__)) double modf(double , double * ) __attribute__((__nonnull__(2)));





extern __attribute__((__nothrow__)) double pow(double , double );






extern __attribute__((__nothrow__)) double sqrt(double );
# 410 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\math.h" 3
    static __inline double _sqrt(double __x) { return sqrt(__x); }
# 427 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\math.h" 3
    static __inline float _sqrtf(float __x) { return (float)sqrt(__x); }







extern __attribute__((__nothrow__)) __attribute__((__const__)) double ceil(double );


extern __attribute__((__nothrow__)) __attribute__((__const__)) double fabs(double );



extern __attribute__((__nothrow__)) __attribute__((__const__)) double floor(double );



extern __attribute__((__nothrow__)) double fmod(double , double );
# 467 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\math.h" 3
extern __attribute__((__nothrow__)) double acosh(double );



extern __attribute__((__nothrow__)) double asinh(double );



extern __attribute__((__nothrow__)) double atanh(double );



extern __attribute__((__nothrow__)) double cbrt(double );



static __inline __attribute__((__nothrow__)) __attribute__((__const__)) double copysign(double __x, double __y)



{
    (*(1 + (unsigned *)&(__x))) = ((*(1 + (unsigned *)&(__x))) & 0x7fffffff) | ((*(1 + (unsigned *)&(__y))) & 0x80000000);
    return __x;
}
static __inline __attribute__((__nothrow__)) __attribute__((__const__)) float copysignf(float __x, float __y)



{
    (*(unsigned *)&(__x)) = ((*(unsigned *)&(__x)) & 0x7fffffff) | ((*(unsigned *)&(__y)) & 0x80000000);
    return __x;
}
extern __attribute__((__nothrow__)) double erf(double );



extern __attribute__((__nothrow__)) double erfc(double );



extern __attribute__((__nothrow__)) double expm1(double );
# 533 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\math.h" 3
extern __attribute__((__nothrow__)) double hypot(double , double );






extern __attribute__((__nothrow__)) int ilogb(double );



extern __attribute__((__nothrow__)) int ilogbf(float );



extern __attribute__((__nothrow__)) int ilogbl(long double );
# 646 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\math.h" 3
extern __attribute__((__nothrow__)) double lgamma (double );




extern __attribute__((__nothrow__)) double log1p(double );



extern __attribute__((__nothrow__)) double logb(double );



extern __attribute__((__nothrow__)) float logbf(float );



extern __attribute__((__nothrow__)) long double logbl(long double );



extern __attribute__((__nothrow__)) double nextafter(double , double );




extern __attribute__((__nothrow__)) float nextafterf(float , float );




extern __attribute__((__nothrow__)) long double nextafterl(long double , long double );




extern __attribute__((__nothrow__)) double nexttoward(double , long double );




extern __attribute__((__nothrow__)) float nexttowardf(float , long double );




extern __attribute__((__nothrow__)) long double nexttowardl(long double , long double );




extern __attribute__((__nothrow__)) double remainder(double , double );



extern __attribute__((__nothrow__)) __attribute__((__const__)) double rint(double );



extern __attribute__((__nothrow__)) double scalbln(double , long int );



extern __attribute__((__nothrow__)) float scalblnf(float , long int );



extern __attribute__((__nothrow__)) long double scalblnl(long double , long int );



extern __attribute__((__nothrow__)) double scalbn(double , int );



extern __attribute__((__nothrow__)) float scalbnf(float , int );



extern __attribute__((__nothrow__)) long double scalbnl(long double , int );
# 740 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\math.h" 3
extern __attribute__((__nothrow__)) __attribute__((__const__)) float fabsf(float);
static __inline __attribute__((__nothrow__)) __attribute__((__const__)) float _fabsf(float __f) { return fabsf(__f); }
extern __attribute__((__nothrow__)) float sinf(float );
extern __attribute__((__nothrow__)) float cosf(float );
extern __attribute__((__nothrow__)) float tanf(float );
extern __attribute__((__nothrow__)) float acosf(float );
extern __attribute__((__nothrow__)) float asinf(float );
extern __attribute__((__nothrow__)) float atanf(float );
extern __attribute__((__nothrow__)) float atan2f(float , float );
extern __attribute__((__nothrow__)) float sinhf(float );
extern __attribute__((__nothrow__)) float coshf(float );
extern __attribute__((__nothrow__)) float tanhf(float );
extern __attribute__((__nothrow__)) float expf(float );
extern __attribute__((__nothrow__)) float logf(float );
extern __attribute__((__nothrow__)) float log10f(float );
extern __attribute__((__nothrow__)) float powf(float , float );
extern __attribute__((__nothrow__)) float sqrtf(float );
extern __attribute__((__nothrow__)) float ldexpf(float , int );
extern __attribute__((__nothrow__)) float frexpf(float , int * ) __attribute__((__nonnull__(2)));
extern __attribute__((__nothrow__)) __attribute__((__const__)) float ceilf(float );
extern __attribute__((__nothrow__)) __attribute__((__const__)) float floorf(float );
extern __attribute__((__nothrow__)) float fmodf(float , float );
extern __attribute__((__nothrow__)) float modff(float , float * ) __attribute__((__nonnull__(2)));
# 780 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\math.h" 3
__attribute__((__nothrow__)) long double acosl(long double );
__attribute__((__nothrow__)) long double asinl(long double );
__attribute__((__nothrow__)) long double atanl(long double );
__attribute__((__nothrow__)) long double atan2l(long double , long double );
__attribute__((__nothrow__)) long double ceill(long double );
__attribute__((__nothrow__)) long double cosl(long double );
__attribute__((__nothrow__)) long double coshl(long double );
__attribute__((__nothrow__)) long double expl(long double );
__attribute__((__nothrow__)) long double fabsl(long double );
__attribute__((__nothrow__)) long double floorl(long double );
__attribute__((__nothrow__)) long double fmodl(long double , long double );
__attribute__((__nothrow__)) long double frexpl(long double , int* ) __attribute__((__nonnull__(2)));
__attribute__((__nothrow__)) long double ldexpl(long double , int );
__attribute__((__nothrow__)) long double logl(long double );
__attribute__((__nothrow__)) long double log10l(long double );
__attribute__((__nothrow__)) long double modfl(long double , long double * ) __attribute__((__nonnull__(2)));
__attribute__((__nothrow__)) long double powl(long double , long double );
__attribute__((__nothrow__)) long double sinl(long double );
__attribute__((__nothrow__)) long double sinhl(long double );
__attribute__((__nothrow__)) long double sqrtl(long double );
__attribute__((__nothrow__)) long double tanl(long double );
__attribute__((__nothrow__)) long double tanhl(long double );






extern __attribute__((__nothrow__)) float acoshf(float );
__attribute__((__nothrow__)) long double acoshl(long double );
extern __attribute__((__nothrow__)) float asinhf(float );
__attribute__((__nothrow__)) long double asinhl(long double );
extern __attribute__((__nothrow__)) float atanhf(float );
__attribute__((__nothrow__)) long double atanhl(long double );
__attribute__((__nothrow__)) long double copysignl(long double , long double );
extern __attribute__((__nothrow__)) float cbrtf(float );
__attribute__((__nothrow__)) long double cbrtl(long double );
extern __attribute__((__nothrow__)) float erff(float );
__attribute__((__nothrow__)) long double erfl(long double );
extern __attribute__((__nothrow__)) float erfcf(float );
__attribute__((__nothrow__)) long double erfcl(long double );
extern __attribute__((__nothrow__)) float expm1f(float );
__attribute__((__nothrow__)) long double expm1l(long double );
extern __attribute__((__nothrow__)) float log1pf(float );
__attribute__((__nothrow__)) long double log1pl(long double );
extern __attribute__((__nothrow__)) float hypotf(float , float );
__attribute__((__nothrow__)) long double hypotl(long double , long double );
extern __attribute__((__nothrow__)) float lgammaf(float );
__attribute__((__nothrow__)) long double lgammal(long double );
extern __attribute__((__nothrow__)) float remainderf(float , float );
__attribute__((__nothrow__)) long double remainderl(long double , long double );
extern __attribute__((__nothrow__)) float rintf(float );
__attribute__((__nothrow__)) long double rintl(long double );







extern __attribute__((__nothrow__)) double exp2(double );
extern __attribute__((__nothrow__)) float exp2f(float );
__attribute__((__nothrow__)) long double exp2l(long double );
extern __attribute__((__nothrow__)) double fdim(double , double );
extern __attribute__((__nothrow__)) float fdimf(float , float );
__attribute__((__nothrow__)) long double fdiml(long double , long double );
# 855 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\math.h" 3
extern __attribute__((__nothrow__)) double fma(double , double , double );
extern __attribute__((__nothrow__)) float fmaf(float , float , float );

static __inline __attribute__((__nothrow__)) long double fmal(long double __x, long double __y, long double __z) { return (long double)fma((double)__x, (double)__y, (double)__z); }


extern __attribute__((__nothrow__)) __attribute__((__const__)) double fmax(double , double );
extern __attribute__((__nothrow__)) __attribute__((__const__)) float fmaxf(float , float );
__attribute__((__nothrow__)) long double fmaxl(long double , long double );
extern __attribute__((__nothrow__)) __attribute__((__const__)) double fmin(double , double );
extern __attribute__((__nothrow__)) __attribute__((__const__)) float fminf(float , float );
__attribute__((__nothrow__)) long double fminl(long double , long double );
extern __attribute__((__nothrow__)) double log2(double );
extern __attribute__((__nothrow__)) float log2f(float );
__attribute__((__nothrow__)) long double log2l(long double );
extern __attribute__((__nothrow__)) long lrint(double );
extern __attribute__((__nothrow__)) long lrintf(float );

static __inline __attribute__((__nothrow__)) long lrintl(long double __x) { return lrint((double)__x); }


extern __attribute__((__nothrow__)) long long llrint(double );
extern __attribute__((__nothrow__)) long long llrintf(float );

static __inline __attribute__((__nothrow__)) long long llrintl(long double __x) { return llrint((double)__x); }


extern __attribute__((__nothrow__)) long lround(double );
extern __attribute__((__nothrow__)) long lroundf(float );

static __inline __attribute__((__nothrow__)) long lroundl(long double __x) { return lround((double)__x); }


extern __attribute__((__nothrow__)) long long llround(double );
extern __attribute__((__nothrow__)) long long llroundf(float );

static __inline __attribute__((__nothrow__)) long long llroundl(long double __x) { return llround((double)__x); }


extern __attribute__((__nothrow__)) __attribute__((__const__)) double nan(const char * );
extern __attribute__((__nothrow__)) __attribute__((__const__)) float nanf(const char * );

static __inline __attribute__((__nothrow__)) __attribute__((__const__)) long double nanl(const char *__t) { return (long double)nan(__t); }
# 908 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\math.h" 3
extern __attribute__((__nothrow__)) __attribute__((__const__)) double nearbyint(double );
extern __attribute__((__nothrow__)) __attribute__((__const__)) float nearbyintf(float );
__attribute__((__nothrow__)) long double nearbyintl(long double );
extern __attribute__((__nothrow__)) double remquo(double , double , int * );
extern __attribute__((__nothrow__)) float remquof(float , float , int * );

static __inline long double remquol(long double __x, long double __y, int *__q) { return (long double)remquo((double)__x, (double)__y, __q); }


extern __attribute__((__nothrow__)) __attribute__((__const__)) double round(double );
extern __attribute__((__nothrow__)) __attribute__((__const__)) float roundf(float );
__attribute__((__nothrow__)) long double roundl(long double );
extern __attribute__((__nothrow__)) double tgamma(double );
extern __attribute__((__nothrow__)) float tgammaf(float );
__attribute__((__nothrow__)) long double tgammal(long double );
extern __attribute__((__nothrow__)) __attribute__((__const__)) double trunc(double );
extern __attribute__((__nothrow__)) __attribute__((__const__)) float truncf(float );
__attribute__((__nothrow__)) long double truncl(long double );
# 6 "Music.c" 2


# 1 "././inc/tm4c123gh6pm.h" 1
# 9 "Music.c" 2

# 1 "././inc/CortexM.h" 1
# 45 "././inc/CortexM.h"
void DisableInterrupts(void);





void EnableInterrupts(void);






long StartCritical(void);






void EndCritical(long sr);







void WaitForInterrupt(void);

void Clock_Delay(uint32_t ulCount);




void Clock_Delay1ms(uint32_t n);
# 11 "Music.c" 2

# 1 "./Music.h" 1
void PlaySongDemo(void);

void PlayChordProgression(int baseChord1, int baseChord2);

void Play4Notes(int baseNum, int note2, int note3, int note4);

void Play1Note(int baseNum);

void SetVolume(int vol);

void SetMetronome(int tempo);

int* PlayNotes(int baseNote, int chord, int octave);

void PlayFairyFountain(void);
# 13 "Music.c" 2
# 1 "./DAC.h" 1
# 11 "./DAC.h"
void DAC_Init(int data);



void DAC_Out(int data);
# 14 "Music.c" 2
# 1 "./Notes.h" 1


# 1 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\String.h" 1 3
# 58 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\String.h" 3
extern __attribute__((__nothrow__)) void *memcpy(void * __restrict ,
                    const void * __restrict , size_t ) __attribute__((__nonnull__(1,2)));






extern __attribute__((__nothrow__)) void *memmove(void * ,
                    const void * , size_t ) __attribute__((__nonnull__(1,2)));
# 77 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\String.h" 3
extern __attribute__((__nothrow__)) char *strcpy(char * __restrict , const char * __restrict ) __attribute__((__nonnull__(1,2)));






extern __attribute__((__nothrow__)) char *strncpy(char * __restrict , const char * __restrict , size_t ) __attribute__((__nonnull__(1,2)));
# 93 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\String.h" 3
extern __attribute__((__nothrow__)) char *strcat(char * __restrict , const char * __restrict ) __attribute__((__nonnull__(1,2)));






extern __attribute__((__nothrow__)) char *strncat(char * __restrict , const char * __restrict , size_t ) __attribute__((__nonnull__(1,2)));
# 117 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\String.h" 3
extern __attribute__((__nothrow__)) int memcmp(const void * , const void * , size_t ) __attribute__((__nonnull__(1,2)));







extern __attribute__((__nothrow__)) int strcmp(const char * , const char * ) __attribute__((__nonnull__(1,2)));






extern __attribute__((__nothrow__)) int strncmp(const char * , const char * , size_t ) __attribute__((__nonnull__(1,2)));
# 141 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\String.h" 3
extern __attribute__((__nothrow__)) int strcasecmp(const char * , const char * ) __attribute__((__nonnull__(1,2)));







extern __attribute__((__nothrow__)) int strncasecmp(const char * , const char * , size_t ) __attribute__((__nonnull__(1,2)));
# 158 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\String.h" 3
extern __attribute__((__nothrow__)) int strcoll(const char * , const char * ) __attribute__((__nonnull__(1,2)));
# 169 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\String.h" 3
extern __attribute__((__nothrow__)) size_t strxfrm(char * __restrict , const char * __restrict , size_t ) __attribute__((__nonnull__(2)));
# 193 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\String.h" 3
extern __attribute__((__nothrow__)) void *memchr(const void * , int , size_t ) __attribute__((__nonnull__(1)));
# 209 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\String.h" 3
extern __attribute__((__nothrow__)) char *strchr(const char * , int ) __attribute__((__nonnull__(1)));
# 218 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\String.h" 3
extern __attribute__((__nothrow__)) size_t strcspn(const char * , const char * ) __attribute__((__nonnull__(1,2)));
# 232 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\String.h" 3
extern __attribute__((__nothrow__)) char *strpbrk(const char * , const char * ) __attribute__((__nonnull__(1,2)));
# 247 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\String.h" 3
extern __attribute__((__nothrow__)) char *strrchr(const char * , int ) __attribute__((__nonnull__(1)));
# 257 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\String.h" 3
extern __attribute__((__nothrow__)) size_t strspn(const char * , const char * ) __attribute__((__nonnull__(1,2)));
# 270 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\String.h" 3
extern __attribute__((__nothrow__)) char *strstr(const char * , const char * ) __attribute__((__nonnull__(1,2)));
# 280 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\String.h" 3
extern __attribute__((__nothrow__)) char *strtok(char * __restrict , const char * __restrict ) __attribute__((__nonnull__(2)));
extern __attribute__((__nothrow__)) char *_strtok_r(char * , const char * , char ** ) __attribute__((__nonnull__(2,3)));
# 321 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\String.h" 3
extern __attribute__((__nothrow__)) void *memset(void * , int , size_t ) __attribute__((__nonnull__(1)));





extern __attribute__((__nothrow__)) char *strerror(int );







extern __attribute__((__nothrow__)) size_t strlen(const char * ) __attribute__((__nonnull__(1)));






extern __attribute__((__nothrow__)) size_t strlcpy(char * , const char * , size_t ) __attribute__((__nonnull__(1,2)));
# 362 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\String.h" 3
extern __attribute__((__nothrow__)) size_t strlcat(char * , const char * , size_t ) __attribute__((__nonnull__(1,2)));
# 388 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\String.h" 3
extern __attribute__((__nothrow__)) void _membitcpybl(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) void _membitcpybb(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) void _membitcpyhl(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) void _membitcpyhb(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) void _membitcpywl(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) void _membitcpywb(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) void _membitmovebl(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) void _membitmovebb(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) void _membitmovehl(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) void _membitmovehb(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) void _membitmovewl(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) void _membitmovewb(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
# 4 "./Notes.h" 2
# 181 "./Notes.h"
enum RGB_Notes{
 None, C, DF, D, EF, E, F, GF, G, AF, A, BF, B
};

struct Song {
 char* songName;
 uint16_t* notes;
 uint32_t* notelengths;
 uint32_t size;
};
# 15 "Music.c" 2
# 1 "././inc/Timer0A.h" 1
# 35 "././inc/Timer0A.h"
void Timer0A_Init(void(*task)(void), uint32_t period, uint32_t priority);
void Timer0A_Stop(void);
# 16 "Music.c" 2
# 1 "././inc/Timer1A.h" 1
# 34 "././inc/Timer1A.h"
void Timer1A_Init(void(*task)(void), uint32_t period, uint32_t priority);

void Timer1A_Stop(void);

void Timer1A_ChangePeriod(int newPeriod);
# 17 "Music.c" 2
# 30 "Music.c"
const int PERIODS[] = { 40496, 38224, 36080 , 34056 , 32144 , 30336 , 28640 , 27032 , 25504 , 24080, 22728 , 21452 , 20248 , 19112 , 18040 , 17028 , 16072 , 15168 , 14320 , 13516 , 12752 , 12040 , 11364 , 10726 ,
 10124 , 9556 , 9020 , 8514 , 8036, 7584 , 7160 , 6758, 6376 , 6020, 5682 , 5363 , 5062 , 4778 , 4510 , 4257 , 4018, 3792 , 3580 , 3379, 3188 , 3010, 2841 ,
 2682, 2531 , 2389 , 2255, 2129 , 2009, 1896 , 1790 , 1690, 1594 , 1505, 1421 , 1341, 1266 , 1195 , 1128, 1064 , 1005, 948 , 895 , 845, 797 , 753,
 710 , 670, 633 , 597 , 564, 532 , 502, 474 , 448 , 422, 399 , 376, 355 , 335, 316, 299};

const unsigned short Wave2[128] = {
  1068, 1100, 1169, 1170, 1175, 1168, 1161, 1145, 1130, 1121, 1113, 1108, 1102, 1090, 1076, 1055, 1032,
 1005, 985, 974, 963, 975, 987, 1037, 1082, 1200, 1343, 1540, 1737, 1800, 1863, 1700, 1575, 1300, 1031,
 750, 538, 412, 309,
  320, 330, 401, 472, 550, 626, 707, 807, 912, 1038, 1145, 1270, 1350, 1420, 1441, 1461, 1420, 1375, 1287, 1201,
  1100, 1005, 900, 819, 700, 658, 600, 532, 512, 496, 545, 594,
 700, 804, 925, 1055, 1151, 1248, 1278, 1323,
  1275, 1233, 1100, 1049, 920, 895, 860, 826, 820, 826, 838, 850,
 856, 862, 862, 861, 880, 899, 930, 961,
  980, 1006, 1014, 1023, 1034, 1046, 1064, 1092, 1130, 1177, 1200, 1224,
 1205, 1186, 1158, 1133, 1055, 1098, 1100, 1102,
  1105, 1109, 1090, 1076, 1051, 1027, 1015, 1003, 1002
};


const int Click64[64] = {
 2065, 2230, 2154, 2106, 2149, 2052, 2619, 2503, 1596, 1515, 2995,
 3459, 954, 42, 2185, 3905, 2881, 511, 579, 2755, 3726, 1991, 551, 1671, 3082,
 3084, 1684, 823, 1900, 3071, 2476, 1255, 1601, 2290, 2474, 2327, 1379, 1563,
 2333, 2275, 2039, 1589, 1900, 2300, 2096, 1942, 1697, 2163, 2354, 1987, 1864,
 1648, 2291, 2376, 1719, 1864, 1957, 2161, 2169, 1836, 1897, 2172, 2266, 1980
};

const int Sin64[64] = {
 2048, 2244, 2440, 2628, 2812, 2992, 3160, 3316, 3464, 3596, 3712, 3812,
 3896, 3960, 4008, 4040, 4048, 4040, 4008, 3960, 3896, 3812, 3712, 3596,
 3464, 3316, 3160, 2992, 2812, 2628, 2440, 2244, 2048, 1852, 1656, 1468,
 1284, 1104, 936, 780, 632, 500, 384, 284, 200, 136, 88, 56, 48, 56, 88,
 136, 200, 284, 384, 500, 632, 780, 936, 1104, 1284, 1468, 1656, 1852
};

const int SinZeroMean64[64] = {
 0, 196, 392, 580, 764, 944, 1112, 1268, 1416, 1548, 1664, 1764, 1848,
 1912, 1960, 1992, 2000, 1992, 1960, 1912, 1848, 1764, 1664, 1548, 1416,
 1268, 1112, 944, 764, 580, 392, 196, 0, -196, -392, -580, -764, -944,
 -1112, -1268, -1416, -1548, -1664, -1764, -1848, -1912, -1960, -1992,
 -2000, -1992, -1960, -1912, -1848, -1764, -1664, -1548, -1416, -1268,
 -1112, -944, -764, -580, -392, -196
};

const int32_t Flute64[64] = {
 2005, 2618, 2923, 3358, 3733, 3981, 4050, 3981, 3675, 3393, 2946, 2535,
 2218, 2006, 1770, 1713, 1571, 1605, 1513, 1431, 1348, 1173, 983, 865,
 761, 678, 725, 821, 960, 1136, 1383, 1678, 2005, 2618, 2923, 3358, 3733,
 3981, 4050, 3981, 3675, 3393, 2946, 2535, 2218, 2006, 1770, 1713, 1571,
 1605, 1513, 1431, 1348, 1173, 983, 865, 761, 678, 725, 821, 960, 1136, 1383, 1678
};

const unsigned short Bassoon64[64] = {
 2154, 2399, 2414, 2380, 2305, 2263, 2237, 2174, 2067, 1954, 1900, 1958,
 2188, 2820, 3774, 4079, 3382, 2065, 871, 317, 368, 712, 1084, 1523, 2082,
 2643, 3007, 3106, 2898, 2476, 2002, 1552, 1162, 857, 770, 1007, 1515, 2123,
 2590, 2772, 2554, 2108, 1736, 1569, 1569, 1627, 1656, 1653, 1745, 1895, 2004,
 2046, 2101, 2213, 2418, 2532, 2440, 2312, 2227, 2237, 2254, 2174, 2055, 1997
};

const unsigned short Guitar64[64] = {
 1871, 1871, 1877, 1810, 1633, 1359, 1083, 861, 786, 912, 1223, 1711, 2268,
 2711, 3043, 3244, 3303, 3156, 2869, 2437, 1914, 1443, 1150, 1158, 1477, 2040,
 2767, 3451, 3922, 4075, 3877, 3483, 3024, 2571, 2271, 2065, 1947, 1898, 1880,
 1904, 2019, 2174, 2300, 2469, 2515, 2477, 2295, 2024, 1737, 1445, 1274, 1215,
1298, 1389, 1429, 1429, 1408, 1402, 1472, 1598, 1745, 1871, 1871, 1871
};

const unsigned short Instruments[3][64] = {
 {
 2005, 2618, 2923, 3358, 3733, 3981, 4050, 3981, 3675, 3393, 2946, 2535,
 2218, 2006, 1770, 1713, 1571, 1605, 1513, 1431, 1348, 1173, 983, 865,
 761, 678, 725, 821, 960, 1136, 1383, 1678, 2005, 2618, 2923, 3358, 3733,
 3981, 4050, 3981, 3675, 3393, 2946, 2535, 2218, 2006, 1770, 1713, 1571,
 1605, 1513, 1431, 1348, 1173, 983, 865, 761, 678, 725, 821, 960, 1136, 1383, 1678
},

{
 2154, 2399, 2414, 2380, 2305, 2263, 2237, 2174, 2067, 1954, 1900, 1958,
 2188, 2820, 3774, 4079, 3382, 2065, 871, 317, 368, 712, 1084, 1523, 2082,
 2643, 3007, 3106, 2898, 2476, 2002, 1552, 1162, 857, 770, 1007, 1515, 2123,
 2590, 2772, 2554, 2108, 1736, 1569, 1569, 1627, 1656, 1653, 1745, 1895, 2004,
 2046, 2101, 2213, 2418, 2532, 2440, 2312, 2227, 2237, 2254, 2174, 2055, 1997
},

{
 1871, 1871, 1877, 1810, 1633, 1359, 1083, 861, 786, 912, 1223, 1711, 2268,
 2711, 3043, 3244, 3303, 3156, 2869, 2437, 1914, 1443, 1150, 1158, 1477, 2040,
 2767, 3451, 3922, 4075, 3877, 3483, 3024, 2571, 2271, 2065, 1947, 1898, 1880,
 1904, 2019, 2174, 2300, 2469, 2515, 2477, 2295, 2024, 1737, 1445, 1274, 1215,
 1298, 1389, 1429, 1429, 1408, 1402, 1472, 1598, 1745, 1871, 1871, 1871
}

};






struct Song kaepora;

uint32_t kpLength[148] = {6, 2, 6, 2, 2, 2, 2, 2, 4, 4, 4, 4, 2, 2, 2, 2, 4, 2, 2, 4, 4, 6, 2, 6, 2, 2, 2, 2, 2,
 4 ,4 ,4 ,4, 2, 2, 2, 2, 6, 2, 8, 6, 2, 6, 2, 2, 2, 2, 2, 4, 4, 4, 4, 2, 2, 2, 2, 4, 2, 2, 4, 4, 6, 2,
 6, 2, 2, 2, 2, 2, 4, 4, 4, 4, 2, 2, 2, 2, 6, 2, 8, 4, 2, 2, 4, 2, 2, 4, 2, 2, 4, 4, 4, 2, 2, 4, 4,
 16, 4, 2, 2, 4, 2, 2, 4, 2, 2, 4, 4, 4, 2, 2, 4, 4, 16, 4, 2, 2, 4, 2, 2, 4, 2, 2,4, 4, 4, 2, 2,
  4, 4, 16, 4, 2, 2, 4, 2, 2, 4, 2, 2, 4, 4, 4, 2, 2, 6, 2, 16};
uint16_t kpNotes[148] = {19112, 20248, 19112, 20248, 19112, 17028, 16072, 14320, 12752, 19112, 12752, 9556, 10726, 12040, 12752, 14320, 16072, 17028, 19112, 20248, 25504, 19112, 20248, 19112, 20248, 19112, 17028, 16072, 14320, 12752, 19112, 14320, 12040, 12752, 14320, 16072, 17028, 17028, 19112, 19112, 19112, 20248, 19112, 20248, 19112, 17028, 16072, 14320, 12752, 19112, 12752, 9556, 10726, 12040, 12752, 14320, 16072, 17028, 19112, 20248, 25504, 19112, 20248, 19112, 20248, 19112, 17028, 16072, 14320, 12752, 19112, 14320, 12040, 12752, 14320, 16072, 17028, 17028, 19112, 19112,
5363, 6376, 6020, 5363, 6376, 6020, 5363, 4018, 4257, 4778, 5363, 4778, 6020, 5363, 6020, 6376, 6020, 7160, 8514, 8036, 7160, 8514, 8036, 7160, 4257, 4778, 5363, 6020, 6020, 5363, 6020, 6376, 7160, 6376, 5363, 6376, 6020, 5363, 6376, 6020, 5363, 4018, 4257, 4778, 5363, 4778, 6020, 5363, 6020, 6376, 6020, 7160, 8514, 8036, 7160, 8514, 8036, 7160, 4257, 4778, 5363, 6020, 6020, 6376, 7160, 8514, 8036, 8036
};



uint32_t songLength[35] = {
 4, 4, 4, 4, 8,
 4, 4, 4, 4, 8,
 4, 4, 4, 4, 8,
 4, 4, 4, 4, 8,
 2, 2, 4, 4, 2, 2, 8,
 4, 2, 2, 2, 2, 2, 2, 8
};
uint16_t songNotes[35][3] = {
 {8514, 0, 0},
 {5682, 7160, 0},
 {5682, 7160, 0},
 {8514, 0, 0},
 {5062, 6376, 0},
 {8514, 0, 0},
 {4778, 5682, 0},
 {4778, 5682, 0},
 {8514, 0, 0},
 {5062, 9556, 0},
 {8514, 0, 0},
 {5682, 7160, 0},
 {5682, 7160, 0},
 {8514, 0, 0},
 {5062, 6376, 0},
 {8514, 0, 0},
 {4778, 5682, 0},
 {4778, 5682, 0},
 {8514, 0, 0},
 {5062, 6376, 0},

 {4257, 8514, 0},
 {2841, 8514, 0},
 {2129, 5682, 7160},
 {2129, 5682, 7160},
 {4257, 8514, 0},
 {2841, 8514, 0},
 {2129, 5062, 6376},

 {1896, 8514, 0},
 {1896, 4778, 5682},
 {1790, 4778, 5682},
 {1896, 4778, 5682},
 {1790, 4778, 5682},
 {1896, 8514, 0},
 {2389, 8514, 0},
 {2841, 5062, 6376},


};

int PERIOD = 0;
int FIRST = 4778;
int SECOND = 0;
int THIRD = 0;
int FOURTH;
int32_t VOL = 10000;
int INUM = 0;
int T[4];

int NINDEX = 0;
int COUNT = 0;


int BASE;


int PERIOD2 = 0;
int FIRST2;
int SECOND2;
int THIRD2;
int BASE2;
int INUM2 = 0;
int T2[3];
# 225 "Music.c"
int singleI;
int Metronome;
int MetronomeStage;
int M;
unsigned short out1;
unsigned short out2;

int32_t moment1;
int32_t moment2;

int playing;




void metronomeHit(){
 if(MetronomeStage==64){
  MetronomeStage=0;
  Timer1A_ChangePeriod(7256);
 }else if(MetronomeStage==63){
  MetronomeStage++;
  Timer1A_ChangePeriod((480000000/Metronome-500000));
 }else
  MetronomeStage++;
}

void SetMetronome(int tempo){
 if(tempo!=Metronome){
  if(Metronome!=0)
   Timer1A_Stop();
  MetronomeStage = 64;
  Metronome = tempo;
  if(Metronome!=0)
   Timer1A_Init(&metronomeHit, (480000000/Metronome-500000), 5);
 }
}




void SetVolume(int vol){
 VOL = vol*vol;
 if(vol<0)
  VOL = 0;
 else if(vol>100)
  VOL = 100*100;
}




void play1Note(void){
 singleI = (singleI+1);
 if(singleI==64)
  singleI=0;
 moment1 = Instruments[INUM][singleI]/3;
 moment2 = Instruments[INUM][singleI]/2;

 if(MetronomeStage!=64){
  moment1 = Click64[MetronomeStage]/2 + Instruments[INUM][singleI]/3;
  moment2 = Click64[MetronomeStage]/3 + Instruments[INUM][singleI]/2;
  out1 = ((moment1-(uint32_t)1707)*VOL+((uint32_t)1707*(uint32_t)10000))/(uint32_t)10000;
  out2 = ((moment2-(uint32_t)1707)*VOL+((uint32_t)1707*(uint32_t)10000))/(uint32_t)10000;
 }else{
  out1 = ((moment1-(uint32_t)683)*VOL+((uint32_t)683*(uint32_t)10000))/(uint32_t)10000;
  out2 = ((moment2-(uint32_t)1024)*VOL+((uint32_t)1024*(uint32_t)10000))/(uint32_t)10000;
 }



 DAC_Out(out1);
 DAC_Out((1<<15)+out2);


}

void Play1Note(int baseNum){
 if(playing)
  Timer0A_Stop();

 BASE = baseNum;
 FIRST = PERIODS[baseNum];
 PERIOD = FIRST;
 Timer0A_Init(&play1Note, FIRST, 4);


 playing = 1;
}

void twoNotes(void){

  T[0] = (T[0]+PERIOD);
 T[1] = (T[1]+PERIOD);
 if(T[0]>FIRST*64)
  T[0]-=(FIRST*64);
 if(T[1]>SECOND*64)
  T[1]-=(SECOND*64);

 int moment = (((Instruments[INUM][T[0]/FIRST]))
     +((Instruments[INUM][T[1]/SECOND])))/2;

 int moment2 = moment/2;
 int moment1 = moment/3;

 if(MetronomeStage!=64){
  moment1 += Click64[MetronomeStage]/2;
  moment2 += Click64[MetronomeStage]/3;
  out1 = ((moment1-(uint32_t)1707)*VOL+((uint32_t)1707*(uint32_t)10000))/(uint32_t)10000;
  out2 = ((moment2-(uint32_t)1707)*VOL+((uint32_t)1707*(uint32_t)10000))/(uint32_t)10000;
 }else{
  out1 = ((moment1-(uint32_t)683)*VOL+((uint32_t)683*(uint32_t)10000))/(uint32_t)10000;
  out2 = ((moment2-(uint32_t)1024)*VOL+((uint32_t)1024*(uint32_t)10000))/(uint32_t)10000;
 }

 DAC_Out(out1);
 DAC_Out((1<<15)+(out2));

}

void Play2Notes(int baseNum, int note2){
 if(playing)
  Timer0A_Stop();

 T[0]=0;
 T[1]=0;
 T[2]=0;
 T[3]=0;

 PERIOD = PERIODS[baseNum];

 FIRST=PERIOD;
 SECOND=PERIODS[note2];

 Timer0A_Init(&twoNotes, PERIOD, 5);

 playing = 1;

}

void threeNotes(void){

  T[0] = (T[0]+PERIOD);
 T[1] = (T[1]+PERIOD);
 T[2] = (T[2]+PERIOD);
 if(T[0]>FIRST*64)
  T[0]-=(FIRST*64);
 if(T[1]>SECOND*64)
  T[1]-=(SECOND*64);
 if(T[2]>THIRD*64)
  T[2]-=(THIRD*64);

 int moment = (((Instruments[INUM][T[0]/FIRST]))
     +((Instruments[INUM][T[1]/SECOND]))
     +((Instruments[INUM][T[2]/THIRD])))/3;

 int moment2 = moment/2;
 int moment1 = moment/3;

 if(MetronomeStage!=64){
  moment1 += Click64[MetronomeStage]/2;
  moment2 += Click64[MetronomeStage]/3;
  out1 = ((moment1-(uint32_t)1707)*VOL+((uint32_t)1707*(uint32_t)10000))/(uint32_t)10000;
  out2 = ((moment2-(uint32_t)1707)*VOL+((uint32_t)1707*(uint32_t)10000))/(uint32_t)10000;
 }else{
  out1 = ((moment1-(uint32_t)683)*VOL+((uint32_t)683*(uint32_t)10000))/(uint32_t)10000;
  out2 = ((moment2-(uint32_t)1024)*VOL+((uint32_t)1024*(uint32_t)10000))/(uint32_t)10000;
 }

 DAC_Out(out1);
 DAC_Out((1<<15)+(out2));

}

void Play3Notes(int baseNum, int note2, int note3){
 if(playing)
  Timer0A_Stop();

 T[0]=0;
 T[1]=0;
 T[2]=0;
 T[3]=0;

 PERIOD = PERIODS[baseNum];

 FIRST=PERIOD;
 SECOND=PERIODS[note2];
 THIRD=PERIODS[note3];

 Timer0A_Init(&threeNotes, PERIOD, 5);


}

void fourNotes(void){

  T[0] = (T[0]+PERIOD);
 T[1] = (T[1]+PERIOD);
 T[2] = (T[2]+PERIOD);
 T[3] = (T[3]+PERIOD);
 if(T[0]>FIRST*64)
  T[0]-=(FIRST*64);
 if(T[1]>SECOND*64)
  T[1]-=(SECOND*64);
 if(T[2]>THIRD*64)
  T[2]-=(THIRD*64);
 if(T[3]>FOURTH*64)
  T[3]-=(FOURTH*64);

 int moment = (((Instruments[INUM][T[0]/FIRST]))
     +((Instruments[INUM][T[1]/SECOND]))
     +((Instruments[INUM][T[2]/THIRD]))
     +((Instruments[INUM][T[3]/FOURTH])))/4;

 int moment2 = moment/2;
 int moment1 = moment/3;

 if(MetronomeStage!=64){
  moment1 += Click64[MetronomeStage]/2;
  moment2 += Click64[MetronomeStage]/3;
  out1 = ((moment1-(uint32_t)1707)*VOL+((uint32_t)1707*(uint32_t)10000))/(uint32_t)10000;
  out2 = ((moment2-(uint32_t)1707)*VOL+((uint32_t)1707*(uint32_t)10000))/(uint32_t)10000;
 }else{
  out1 = ((moment1-(uint32_t)683)*VOL+((uint32_t)683*(uint32_t)10000))/(uint32_t)10000;
  out2 = ((moment2-(uint32_t)1024)*VOL+((uint32_t)1024*(uint32_t)10000))/(uint32_t)10000;
 }

 DAC_Out(out1);
 DAC_Out((1<<15)+(out2));

}

void Play4Notes(int baseNum, int note2, int note3, int note4){
 if(playing)
  Timer0A_Stop();

 T[0]=0;
 T[1]=0;
 T[2]=0;
 T[3]=0;

 PERIOD = PERIODS[baseNum];

 FIRST=PERIOD;
 SECOND=PERIODS[note2];
 THIRD=PERIODS[note3];
 FOURTH=PERIODS[note4];

 Timer0A_Init(&fourNotes, PERIOD, 5);

 playing = 1;

}
# 512 "Music.c"
const int CHORDS[6][4] = {

 {C, None, None, None},
 {C, E, G, None},
 {C, EF, G, None},
 {C, GF, AF, None},
 {C, E, G, B },
 {C, EF, G, BF }

};

int* PlayNotes(int baseNote, int chord, int octave){
 int baseNum = (12*(octave-1))+baseNote;
 int* ret;
 if(chord==3){
  baseNum-=1;
  Play3Notes(baseNum-1, baseNum+GF, baseNum+AF);
 }else if(CHORDS[chord][1]==None)
  Play1Note(baseNum);
 else if(CHORDS[chord][2]==None)
  Play2Notes(baseNum, baseNum+CHORDS[chord][1]-1);
 else if(CHORDS[chord][3]==None)
  Play3Notes(baseNum, baseNum+CHORDS[chord][1]-1, baseNum+CHORDS[chord][2]-1);
 else
  Play4Notes(baseNum, baseNum+CHORDS[chord][1]-1, baseNum+CHORDS[chord][2]-1, baseNum+CHORDS[chord][3]-1);

}







uint32_t FairyFountainLength[134] = {
 3, 3, 3, 3, 3, 3,
 1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1,
1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1,
1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1,
1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1,
1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1,
1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1,
1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1,
1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1
};

uint16_t FairyFountainNotes[134][4] = {
{27,23,20,17}, {29,27,23,20}, {32,29,27,23},
{35,32,29,27}, {39,35,32,29}, {41,39,35,32},

 {58,11,0,0}, {51,23,11,0}, {47,27,11,0}, {44,34,11,0},
 {56,34,0,0}, {51,34,11,0}, {47,34,11,0}, {44,34,11,0},
 {55,34,0,0}, {51,27,11,0}, {47,34,11,0}, {44,32,11,0},
 {56,37,11,0}, {51,34,11,0}, {47,32,11,0}, {44,27,0,0},

 {56,10,0,0}, {49,22,10,0}, {46,25,10,0}, {42,32,10,0},
 {54,32,10,0}, {49,32,10,0}, {46,32,10,0}, {42,32,0,0},
 {53,10,0,0}, {49,22,10,0}, {46,32,10,0}, {42,30,10,0},
 {54,37,10,0}, {49,32,10,0}, {46,34,10,0}, {42,25,0,0},

{54,8,0,0}, {47,20,8,0}, {44,23,8,0}, {41,30,8,0},
 {53,30,8,0}, {47,30,8,0}, {44,30,8,0}, {41,30,0,0},
 {52,8,0,0}, {47,20,8,0}, {44,30,8,0}, {41,29,8,0},
 {53,32,8,0}, {47,29,8,0}, {44,25,8,0}, {41,23,0,0},

{53,6,0,0}, {46,18,6,0}, {42,22,6,0}, {39,29,6,0},
 {51,29,6,0}, {46,29,6,0}, {42,29,6,0}, {39,29,0,0},
 {50,6,0,0}, {46,22,6,0}, {42,29,6,0}, {39,27,6,0},
 {51,32,6,0}, {46,30,6,0}, {42,37,6,0}, {39,35,0,0},

 {58,11,0,0}, {51,23,11,0}, {47,27,11,0}, {44,34,11,0},
 {56,34,11,0}, {51,34,11,0}, {47,34,11,0}, {44,34,0,0},
 {55,11,0,0}, {51,27,11,0}, {47,34,11,0}, {44,32,11,0},
 {56,39,11,0}, {51,34,11,0}, {47,32,11,0}, {44,27,0,0},

 {59,10,0,0}, {52,22,10,0}, {49,25,10,0}, {43,37,10,0},
 {58,37,10,0}, {52,37,10,0}, {49,37,10,0}, {43,37,0,0},
 {57,15,0,0}, {52,27,15,0}, {49,37,15,0}, {43,34,15,0},
 {58,40,15,0}, {52,39,15,0}, {49,37,15,0}, {43,34,0,0},

 {61,8,0,0}, {51,23,8,0}, {47,27,8,0}, {44,35,8,0},
 {59,35,8,0}, {51,35,8,0}, {47,35,8,0}, {44,35,0,0},
 {58,8,0,0}, {51,23,8,0}, {47,35,8,0}, {44,34,8,0},
 {59,37,8,0}, {51,35,8,0}, {47,34,8,0}, {44,27,0,0},

 {58,13,0,0}, {47,25,13,0}, {44,32,13,0}, {41,35,13,0},
 {56,23,13,0}, {47,35,13,0}, {44,35,13,0}, {41,35,0,0},
 {54,13,0,0}, {47,25,13,0}, {44,35,13,0}, {41,32,13,0},
 {53,41,13,0}, {47,39,13,0}, {44,46,13,0}, {41,41,0,0}

};


void playNoteSong(){


 T[0] = (T[0]+PERIOD);
 T[1] = (T[1]+PERIOD);
 T[2] = (T[2]+PERIOD);
 if(T[0]>songNotes[NINDEX][0]*64)
  T[0]-=(songNotes[NINDEX][0]*64);
 if(T[1]>songNotes[NINDEX][1]*64)
  T[1]-=(songNotes[NINDEX][1]*64);
 if(T[2]>songNotes[NINDEX][2]*64)
  T[2]-=(songNotes[NINDEX][2]*64);
 int num = (songNotes[NINDEX][0]!=0)+(songNotes[NINDEX][1]!=0)+(songNotes[NINDEX][2]!=0);
 int moment = (((songNotes[NINDEX][0]!=0)?(Instruments[INUM][T[0]/songNotes[NINDEX][0]]):(0))
  +((songNotes[NINDEX][1]!=0)?(Instruments[INUM][T[1]/songNotes[NINDEX][1]]):(0))
 +((songNotes[NINDEX][2]!=0)?(Instruments[INUM][T[2]/songNotes[NINDEX][2]]):(0)))/num;


 int moment2 = moment/2;
 int moment1 = moment/3;

 out1 = ((moment1-(uint32_t)683)*VOL+((uint32_t)683*(uint32_t)10000))/(uint32_t)10000;
 out2 = ((moment2-(uint32_t)1024)*VOL+((uint32_t)1024*(uint32_t)10000))/(uint32_t)10000;
  DAC_Out(out1);
 DAC_Out((1<<15)+out2);






}




void nextNoteSong(){
 Timer1A_Stop();
 Timer0A_Stop();

 COUNT = 0;
 NINDEX++;

 T[0] = 0;
 T[1] = 0;
 T[2] = 0;
 if(NINDEX!=35){
  PERIOD = songNotes[NINDEX][0];
  Timer0A_Init(&playNoteSong, PERIOD, 5);
  Timer1A_Init(&nextNoteSong, songLength[NINDEX]*7500000, 4);
 }else
  DAC_Out(0);

}

void PlaySongDemo(void){
 T[0]=0;
 T[1]=0;
 T[2]=0;
 VOL = 10000;
 int playing = 1;
 PERIOD = songNotes[NINDEX][0];
 INUM = 1;
 NINDEX = 0;
 Timer0A_Init(&playNoteSong, PERIOD, 5);
 Timer1A_Init(&nextNoteSong, songLength[NINDEX]*7500000, 4);
# 695 "Music.c"
}




void nextNoteFF(){

 Timer1A_Stop();




 T[0] = 0;
 T[1] = 0;
 T[2] = 0;
 if(NINDEX!=134){
  FIRST = FairyFountainNotes[NINDEX][0];
  SECOND = FairyFountainNotes[NINDEX][1];
  THIRD = FairyFountainNotes[NINDEX][2];
  FOURTH = FairyFountainNotes[NINDEX][3];

  if(SECOND==0)
   Play1Note(FIRST);
  else if(THIRD==0)
   Play2Notes(FIRST, SECOND);
  else if(FOURTH==0)
   Play3Notes(FIRST, SECOND, THIRD);
  else
   Play4Notes(FIRST, SECOND, THIRD, FOURTH);
  Timer1A_Init(&nextNoteFF, 15384615*FairyFountainLength[NINDEX], 4);
 }else{
  DAC_Out(0);
  Timer0A_Stop();
  playing=0;
 }
 NINDEX++;

}

void PlayFairyFountain(void){
 DAC_Init(1024);
 T[0]=0;
 T[1]=0;
 T[2]=0;
 VOL = 10000;
 int playing = 1;
 PERIOD = FairyFountainNotes[NINDEX][0];
 INUM = 1;
 NINDEX = 0;
 Timer1A_Init(&nextNoteFF, 10, 4);;

}



void Timer0A_Function2(void){

  T[0] = (T[0]+PERIOD);
 T[1] = (T[1]+PERIOD);
 T[2] = (T[2]+PERIOD);
 if(T[0]>FIRST*64)
  T[0]-=(FIRST*64);
 if(T[1]>SECOND*64)
  T[1]-=(SECOND*64);
 if(T[2]>THIRD*64)
  T[2]-=(THIRD*64);
 int num = (FIRST!=0)+(SECOND!=0)+(THIRD!=0);
 int moment = (((FIRST!=0)?(Instruments[INUM][T[0]/FIRST]):(0))
  +((SECOND!=0)?(Instruments[INUM][T[1]/SECOND]):(0))
 +((THIRD!=0)?(Instruments[INUM][T[2]/THIRD]):(0)))/num;


 T2[0] = (T2[0]+PERIOD);
 T2[1] = (T2[1]+PERIOD);
 T2[2] = (T2[2]+PERIOD);
 if(T2[0]>FIRST2*64)
  T2[0]-=(FIRST2*64);
 if(T2[1]>SECOND2*64)
  T2[1]-=(SECOND2*64);
 if(T2[2]>THIRD2*64)
  T2[2]-=(THIRD2*64);
 int num2 = (FIRST2!=0)+(SECOND2!=0)+(THIRD2!=0);
 int moment2 = (((FIRST2!=0)?(Instruments[INUM2][T2[0]/FIRST2]):(0))
  +((SECOND2!=0)?(Instruments[INUM2][T2[1]/SECOND2]):(0))
 +((THIRD2!=0)?(Instruments[INUM2][T2[2]/THIRD2]):(0)))/num2;
  DAC_Out(moment>>VOL);
 DAC_Out((1<<15)+(moment2>>VOL));

}


void nextOne(void){
 Timer0A_Stop();
 if(SECOND==PERIODS[BASE]){
  SECOND = PERIODS[BASE+4];
  PERIOD = SECOND;
 }else if(THIRD==PERIODS[BASE]){
  THIRD = PERIODS[BASE+7];
  PERIOD = THIRD;
 }else{
  BASE+=1;
  if(BASE==36+13)
   BASE=36;
  FIRST = PERIODS[BASE];
  SECOND = PERIODS[BASE];
  THIRD = PERIODS[BASE];
  PERIOD = FIRST;
 }
 if(SECOND2==PERIODS[BASE2]){
  SECOND2 = PERIODS[BASE2+3];
  PERIOD2 = SECOND2;
 }else if(THIRD2==PERIODS[BASE2]){
  THIRD2 = PERIODS[BASE2+7];
  PERIOD2 = THIRD2;
 }else{
  BASE2+=1;
  if(BASE2==36+13)
   BASE2=36;
  FIRST2 = PERIODS[BASE2];
  SECOND2 = PERIODS[BASE2];
  THIRD2 = PERIODS[BASE2];
  PERIOD2 = FIRST2;
 }
 Timer0A_Init(&Timer0A_Function2, PERIOD, 4);

}
void PlayChordProgression(int baseChord1, int baseChord2){

 DisableInterrupts();
 DAC_Init(0);
 EnableInterrupts();
 T[0]=0;
 T[1]=0;
 T[2]=0;
 VOL = 10000;
 int playing = 1;
 PERIOD = FIRST;
 Timer0A_Init(&Timer0A_Function2, PERIOD, 5);
 Timer1A_Init(&nextOne, 4*7500000, 6);




 BASE = baseChord1;
 FIRST = PERIODS[BASE];
 SECOND = PERIODS[BASE];
 THIRD = PERIODS[BASE];

 BASE2 = baseChord2;
 FIRST2 = PERIODS[BASE2];
 SECOND2 = PERIODS[BASE2];
 THIRD2 = PERIODS[BASE2];
}



void stopChords(){
 Timer0A_Stop();
 Timer1A_Stop();
}
