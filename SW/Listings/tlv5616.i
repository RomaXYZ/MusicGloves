# 1 "lib/TLV5616/TLV5616.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 366 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "lib/TLV5616/TLV5616.c" 2
# 13 "lib/TLV5616/TLV5616.c"
# 1 ".\\./lib/TLV5616/TLV5616.h" 1
# 13 ".\\./lib/TLV5616/TLV5616.h"
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
# 14 ".\\./lib/TLV5616/TLV5616.h" 2
# 37 ".\\./lib/TLV5616/TLV5616.h"
int TLV5616_Init();
# 47 ".\\./lib/TLV5616/TLV5616.h"
int TLV5616_Output(uint16_t data);
# 14 "lib/TLV5616/TLV5616.c" 2

int TLV5616_Init() {
    return 1;
}

int TLV5616_Output(uint16_t data) {
    return 1;
}
