# 1 "MusicGloves.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 366 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "MusicGloves.c" 2
# 50 "MusicGloves.c"
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
# 51 "MusicGloves.c" 2
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
# 52 "MusicGloves.c" 2
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
# 53 "MusicGloves.c" 2


# 1 "././inc/tm4c123gh6pm.h" 1
# 56 "MusicGloves.c" 2

# 1 "././inc/LaunchPad.h" 1
# 54 "././inc/LaunchPad.h"
void LaunchPad_Init(void);
# 65 "././inc/LaunchPad.h"
uint8_t LaunchPad_Input(void);
void LaunchPad_WaitForTouch(void);
void LaunchPad_WaitForRelease(void);





void LaunchPad_Output(uint8_t data);
# 58 "MusicGloves.c" 2

# 1 "././inc/CortexM.h" 1
# 45 "././inc/CortexM.h"
void DisableInterrupts(void);





void EnableInterrupts(void);






long StartCritical(void);






void EndCritical(long sr);







void WaitForInterrupt(void);

void Clock_Delay(uint32_t ulCount);




void Clock_Delay1ms(uint32_t n);
# 60 "MusicGloves.c" 2

# 1 "././inc/TExaS.h" 1
# 30 "././inc/TExaS.h"
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
# 50 "././inc/TExaS.h"
void TExaS_Init(enum TExaSmode mode);





void TExaS_Stop(void);
# 62 "MusicGloves.c" 2

# 1 "././inc/ST7735.h" 1
# 116 "././inc/ST7735.h"
enum initRFlags{
  none,
  INITR_GREENTAB,
  INITR_REDTAB,
  INITR_BLACKTAB
};
# 141 "././inc/ST7735.h"
void ST7735_InitB(void);






void ST7735_InitR(enum initRFlags option);
# 162 "././inc/ST7735.h"
void ST7735_DrawPixel(int16_t x, int16_t y, uint16_t color);
# 173 "././inc/ST7735.h"
void ST7735_DrawFastVLine(int16_t x, int16_t y, int16_t h, uint16_t color);
# 185 "././inc/ST7735.h"
void ST7735_DrawFastHLine(int16_t x, int16_t y, int16_t w, uint16_t color);







void ST7735_FillScreen(uint16_t color);
# 205 "././inc/ST7735.h"
void ST7735_FillRect(int16_t x, int16_t y, int16_t w, int16_t h, uint16_t color);
# 215 "././inc/ST7735.h"
void ST7735_DrawSmallCircle(int16_t x, int16_t y, uint16_t color);
# 225 "././inc/ST7735.h"
void ST7735_DrawCircle(int16_t x, int16_t y, uint16_t color);






uint16_t ST7735_Color565(uint8_t r, uint8_t g, uint8_t b);






uint16_t ST7735_SwapColor(uint16_t x) ;
# 261 "././inc/ST7735.h"
void ST7735_DrawBitmap(int16_t x, int16_t y, const uint16_t *image, int16_t w, int16_t h);
# 278 "././inc/ST7735.h"
void ST7735_DrawCharS(int16_t x, int16_t y, char c, int16_t textColor, int16_t bgColor, uint8_t size);
# 293 "././inc/ST7735.h"
void ST7735_DrawChar(int16_t x, int16_t y, char c, int16_t textColor, int16_t bgColor, uint8_t size);
# 305 "././inc/ST7735.h"
uint32_t ST7735_DrawString(uint16_t x, uint16_t y, char *pt, int16_t textColor);;
# 316 "././inc/ST7735.h"
void ST7735_SetCursor(uint32_t newX, uint32_t newY);
# 325 "././inc/ST7735.h"
void ST7735_OutUDec(uint32_t n);
# 334 "././inc/ST7735.h"
void ST7735_OutUDec4(uint32_t n);
# 343 "././inc/ST7735.h"
void ST7735_OutUDec5(uint32_t n);






void ST7735_SetRotation(uint8_t m) ;







void ST7735_InvertDisplay(int i) ;
# 370 "././inc/ST7735.h"
void ST7735_PlotClear(int32_t ymin, int32_t ymax);






void ST7735_PlotPoint(int32_t y);






void ST7735_PlotLine(int32_t y);







void ST7735_PlotPoints(int32_t y1,int32_t y2);






void ST7735_PlotBar(int32_t y);







void ST7735_PlotdBfs(int32_t y);







void ST7735_PlotNext(void);







void ST7735_PlotNextErase(void);
# 474 "././inc/ST7735.h"
void ST7735_OutChar(char ch);
# 483 "././inc/ST7735.h"
void ST7735_OutString(char *ptr);







void ST7735_SetTextColor(uint16_t color);






void Output_Init(void);


void Output_Clear(void);


void Output_Off(void);


void Output_On(void);





void Output_Color(uint32_t newColor);
# 531 "././inc/ST7735.h"
void ST7735_sDecOut2(int32_t n);
# 555 "././inc/ST7735.h"
void ST7735_uBinOut6(uint32_t n);
# 568 "././inc/ST7735.h"
void ST7735_XYplotInit(int32_t minX, int32_t maxX, int32_t minY, int32_t maxY);
# 579 "././inc/ST7735.h"
void ST7735_XYplot(uint32_t num, int32_t bufX[], int32_t bufY[]);
# 593 "././inc/ST7735.h"
void ST7735_Line(uint16_t x1, uint16_t y1, uint16_t x2, uint16_t y2,
                 uint16_t color);
# 604 "././inc/ST7735.h"
void ST7735_SetX(int32_t newX);
# 621 "././inc/ST7735.h"
void ST7735_sDecOut3(int32_t n);
# 649 "././inc/ST7735.h"
void ST7735_uBinOut5(uint32_t n);

char IntegerToChar(int16_t integer);

int16_t Extract_unsigned (uint32_t number, int16_t place);
# 64 "MusicGloves.c" 2

# 1 ".\\Graphics.h" 1


void DrawFirstNote(uint32_t note, uint32_t magnitude);

void DrawSecondNote(uint32_t note, uint32_t magnitude);

void DrawThirdNote(uint32_t note, uint32_t magnitude);

void DrawFourthNote(uint32_t note, uint32_t magnitude);

void FlipMetronomeOn(uint32_t tempo);

void FlipMetronomeOff(void);

void ArmMetroIndicator(void);

void DrawFourNotes(uint32_t note1, uint32_t magnitude1,
          uint32_t note2, uint32_t magnitude2,
          uint32_t note3, uint32_t magnitude3,
          uint32_t note4, uint32_t magnitude4);

void DrawSongMenu(void);

void MoveSongArrowUp(void);

void MoveSongArrowDown(void);

void DisplayNowPlaying(void);

void ClearOutNowPlaying(void);

void DrawInstrumentMenu(void);

void MoveInstrumentArrowDown(void);

void MoveInstrumentArrowUp(void);

void DisplayInstrPlaying(void);

void ClearOutInstrPlaying(void);
# 66 "MusicGloves.c" 2
# 1 ".\\Neopixel.h" 1


void addColor(uint8_t red, uint8_t green, uint8_t blue);

void NeoPixel_Init(void);

void printBuffer(void);

void SetNeoNotes(uint32_t note1, uint32_t note2, uint32_t note3, uint32_t note4);

void setBrightness(int volume);

void runNeoTest(void);

void sendreset(void);
# 67 "MusicGloves.c" 2
# 1 "./Music.h" 1
void PlaySongDemo(void);

void PlayChordProgression(int baseChord1, int baseChord2);

void Play4Notes(int baseNum, int note2, int note3, int note4);

void Play1Note(int baseNum);

void SetVolume(int vol);

void SetMetronome(int tempo);

int* PlayNotes(int baseNote, int chord, int octave);

void PlayFairyFountain(void);
# 68 "MusicGloves.c" 2
# 1 "./DAC.h" 1
# 11 "./DAC.h"
void DAC_Init(int data);



void DAC_Out(int data);
# 69 "MusicGloves.c" 2
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
# 70 "MusicGloves.c" 2
# 1 "././inc/PLL.h" 1
# 35 "././inc/PLL.h"
void PLL_Init(uint32_t freq);
# 71 "MusicGloves.c" 2
# 1 "./Buttons.h" 1
# 13 "./Buttons.h"
void Button_Init(void);



void SlidePot_Init(void);



void Keypad_Init(void);



int Buttons_Get(void);



int Keypad_Get(void);

int GetVolume(void);

uint8_t GetSW1(void);

uint8_t GetSW2(void);

uint8_t GetSW3(void);
# 72 "MusicGloves.c" 2
# 1 "./FlexSensor.h" 1



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
# 73 "MusicGloves.c" 2





int main_NeoPixel(void) {
    DisableInterrupts();
# 88 "MusicGloves.c"
  PLL_Init(4);
  NeoPixel_Init();


  EnableInterrupts();
  SetNeoNotes(AF, A, BF, B);
  setBrightness(50);

    while(1) {
        WaitForInterrupt();

    }
    return 1;
}

int main_Chords(void){

 DisableInterrupts();
  LaunchPad_Init();
 PLL_Init(4);
 DAC_Init(0);
 EnableInterrupts();
 Play4Notes(37, 41, 44, 49);


 while(1){
  WaitForInterrupt();
 }

 return 1;
}

int main_keypad(void) {
  int test;
  int key = -1;

    DisableInterrupts();
    LaunchPad_Init();
    PLL_Init(4);
   Keypad_Init();
    EnableInterrupts();
    while(1) {
   key = Keypad_Get();
   if(key>=0)
    key = -1;

   test = 0;
  }

}

int main_lcddisplay(void) {
    DisableInterrupts();
# 149 "MusicGloves.c"
  PLL_Init(4);
  ST7735_InitR(INITR_REDTAB);



  EnableInterrupts();






  ST7735_FillScreen(0x0000);






  DrawInstrumentMenu();
# 184 "MusicGloves.c"
    while(1) {
        WaitForInterrupt();

    }
    return 1;
}

int main_flex(void) {
 DisableInterrupts();
 PLL_Init(4);
 Flex_Init();
 EnableInterrupts();
 int flexVal = 0;
 while(1) {
  flexVal = Return_Note();
 }
 return 1;
}

int main_flex_music(void){


 DisableInterrupts();
  LaunchPad_Init();
 PLL_Init(4);
 DAC_Init(0);
 Flex_Init();
 EnableInterrupts();
 int newNote = Return_Note();
 int newChord = Return_Chord();
 int newVol = Return_Volume();

 int currentNote = newNote;
 int currentChord = newChord;
 int currentVol = newVol;
 int octave = 4;
 PlayNotes(currentNote, currentChord, octave);

 while(1){

  newNote = Return_Note();
  newChord = Return_Chord();
  newVol = Return_Volume();



  if(newNote!=currentNote || newChord!=currentChord){
   currentNote=newNote;
   currentChord=newChord;
   PlayNotes(currentNote, currentChord, octave);
  }
  if(newVol!=currentVol){
   currentVol = newVol;
   SetVolume(currentVol);
  }
 }

 return 1;
}

int main_idk(void){
 DisableInterrupts();
 PLL_Init(4);
 Button_Init();
 Keypad_Init();
 SlidePot_Init();
 DAC_Init(0);
 ST7735_InitR(INITR_REDTAB);
 NeoPixel_Init();
 EnableInterrupts();
 int currentVol = GetVolume();
 int lastVol = currentVol;
 int metro = 0;
 int flexVal = 0;
 int single = 1;

 int keyNum = 0;
 int metroStart = 0;

 Play1Note(37);
 ST7735_FillScreen(0x0000);
 DrawFirstNote(C, 4);
 SetNeoNotes(C, None, None, None);
 setBrightness(25);
 Keypad_Get();

 while(1){
   keyNum = Keypad_Get();
   currentVol = GetVolume();
   if(currentVol!=lastVol){
    lastVol=currentVol;
    SetVolume(currentVol);

   }
# 291 "MusicGloves.c"
   if(keyNum == 0){
    if(!metroStart){
      SetMetronome(10);
      FlipMetronomeOn(100);
      metro = 10;
      metroStart = 1;
    }
    if(metroStart){
       SetMetronome(0);
      FlipMetronomeOff();
      metro = 0;
      metroStart = 0;
    }
   }

   if(keyNum == 11){
    if(metroStart){
     if(metro < 20){
      metro = metro + 1;
      SetMetronome(metro);
      FlipMetronomeOff();
      FlipMetronomeOn(metro * 10);
     }

    }
   }

   if(keyNum == 10){
    if(metroStart){
     if(metro > 0){
      metro--;
      SetMetronome(metro);
      FlipMetronomeOff();
      FlipMetronomeOn(metro*10);
     }
    }
   }

   if(GetSW2()){
    flexVal++;
    if(flexVal==13)
     flexVal=0;
    if(single){
     Play1Note(37 +flexVal);
     SetNeoNotes(((37 +flexVal-1)%12)+1, None, None, None);
     DrawFourNotes(((37 +flexVal-1)%12)+1,4+((C+flexVal)/13),None,0,None,0,None,0);
    }
    else{
     Play4Notes(37 +flexVal, 41 +flexVal, 44 +flexVal, 60 +flexVal);
     SetNeoNotes(((37 +flexVal-1)%12)+1, ((41 +flexVal-1)%12)+1, ((44 +flexVal-1)%12)+1, ((48 +flexVal-1)%12)+1);
     DrawFourNotes(((37 +flexVal-1)%12)+1, 4+((C+flexVal)/13),
            ((41 +flexVal-1)%12)+1, 4+((E+flexVal)/13),
            ((44 +flexVal-1)%12)+1, 4+((G+flexVal)/13),
            ((48 +flexVal-1)%12)+1, 4+((B+flexVal)/13)
            );
    }
   }
   else if(GetSW3()){
    single = (!single)&1;
    if(single){
     Play1Note(37 +flexVal);
     SetNeoNotes(((37 +flexVal-1)%12)+1, None, None, None);
     DrawFourNotes(((37 +flexVal-1)%12)+1,4+((C+flexVal)/13),None,0,None,0,None,0);
    }
    else{
     Play4Notes(37 +flexVal, 41 +flexVal, 44 +flexVal, 60 +flexVal);
     SetNeoNotes(((37 +flexVal-1)%12)+1, ((41 +flexVal-1)%12)+1, ((44 +flexVal-1)%12)+1, ((48 +flexVal-1)%12)+1);
     DrawFourNotes(((37 +flexVal-1)%12)+1, 4+((C+flexVal)/13),
            ((41 +flexVal-1)%12)+1, 4+((E+flexVal)/13),
            ((44 +flexVal-1)%12)+1, 4+((G+flexVal)/13),
            ((48 +flexVal-1)%12)+1, 4+((B+flexVal)/13)
            );
    }
   }
 }

 return(1);
}

int main_final(void){
 DisableInterrupts();
 PLL_Init(4);
 Button_Init();
 Keypad_Init();
 SlidePot_Init();
 ST7735_InitR(INITR_REDTAB);
 NeoPixel_Init();
 DAC_Init(0);
 EnableInterrupts();
 ST7735_FillScreen(0x0000);
 SetNeoNotes(C, None, None, None);

 Play1Note(37);
 int keyNum = 0;
 while(1){
  keyNum = Keypad_Get();
  if(keyNum!=-1){
   FlipMetronomeOff();
   FlipMetronomeOn(keyNum);
  }
 }
 return 1;
}
