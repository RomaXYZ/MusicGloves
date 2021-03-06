#include <stdio.h>
#include <stdint.h>
#include <String.h>

#define B0 40496
#define C1 38224
#define DF1 36080
#define D1 34056
#define EF1 32144
#define E1 30336
#define F1 28640
#define GF1 27032
#define G1 25504
#define AF1 24080
#define A1 22728
#define BF1 21452
#define B1 20248
#define C2 19112
#define DF2 18040
#define D2 17028
#define EF2 16072
#define E2 15168
#define F2 14320
#define GF2 13516
#define G2 12752
#define AF2 12040
#define A2 11364
#define BF2 10726
#define B2 10124
#define C3 9556
#define DF3 9020
#define D3 8514
#define EF3 8036
#define E3 7584
#define F3 7160
#define GF3 6758
#define G3 6376
#define AF3 6020
#define A3 5682
#define BF3 5363
#define B3 5062
#define C4 4778
#define DF4 4510
#define D4 4257
#define EF4 4018
#define E4 3792
#define F4 3580
#define GF4 3379
#define G4 3188
#define AF4 3010
#define A4 2841
#define BF4 2682
#define B4 2531
#define C5 2389
#define DF5 2255
#define D5 2129
#define EF5 2009
#define E5 1896
#define F5 1790
#define GF5 1690
#define G5 1594
#define AF5 1505
#define A5 1421
#define BF5 1341
#define B5 1266
#define C6 1195
#define DF6 1128
#define D6 1064
#define EF6 1005
#define E6 948
#define F6 895
#define GF6 845
#define G6 797
#define AF6 753
#define A6 710
#define BF6 670
#define B6 633
#define C7 597
#define DF7 564
#define D7 532
#define EF7 502
#define E7 474
#define F7 448
#define GF7 422
#define G7 399
#define AF7 376
#define A7 355
#define BF7 335
#define B7 316
#define C8 299


#define B0NUMBER 0
#define C1NUMBER 1
#define DF1NUMBER 2
#define D1NUMBER 3
#define EF1NUMBER 4
#define E1NUMBER 5
#define F1NUMBER 6
#define GF1NUMBER 7
#define G1NUMBER 8
#define AF1NUMBER 9
#define A1NUMBER 10
#define BF1NUMBER 11
#define B1NUMBER 12
#define C2NUMBER 13
#define DF2NUMBER 14
#define D2NUMBER 15
#define EF2NUMBER 16
#define E2NUMBER 17
#define F2NUMBER 18
#define GF2NUMBER 19
#define G2NUMBER 20
#define AF2NUMBER 21
#define A2NUMBER 22
#define BF2NUMBER 23
#define B2NUMBER 24
#define C3NUMBER 25
#define DF3NUMBER 26
#define D3NUMBER 27
#define EF3NUMBER 28
#define E3NUMBER 29
#define F3NUMBER 30
#define GF3NUMBER 31
#define G3NUMBER 32
#define AF3NUMBER 33
#define A3NUMBER 34
#define BF3NUMBER 35
#define B3NUMBER 36
#define C4NUMBER 37
#define DF4NUMBER 38
#define D4NUMBER 39
#define EF4NUMBER 40
#define E4NUMBER 41
#define F4NUMBER 42
#define GF4NUMBER 43
#define G4NUMBER 44
#define AF4NUMBER 45
#define A4NUMBER 46
#define BF4NUMBER 47
#define B4NUMBER 48
#define C5NUMBER 49
#define DF5NUMBER 50
#define D5NUMBER 51
#define EF5NUMBER 52
#define E5NUMBER 53
#define F5NUMBER 54
#define GF5NUMBER 55
#define G5NUMBER 56
#define AF5NUMBER 57
#define A5NUMBER 58
#define BF5NUMBER 59
#define B5NUMBER 60
#define C6NUMBER 61
#define DF6NUMBER 62
#define D6NUMBER 63
#define EF6NUMBER 64
#define E6NUMBER 65
#define F6NUMBER 66
#define GF6NUMBER 67
#define G6NUMBER 68
#define AF6NUMBER 69
#define A6NUMBER 70
#define BF6NUMBER 71
#define B6NUMBER 72
#define C7NUMBER 73
#define DF7NUMBER 74
#define D7NUMBER 75
#define EF7NUMBER 76
#define E7NUMBER 77
#define F7NUMBER 78
#define GF7NUMBER 79
#define G7NUMBER 80
#define AF7NUMBER 81
#define A7NUMBER 82
#define BF7NUMBER 83
#define B7NUMBER 84
#define C8NUMBER 85

// Handy definitions
enum RGB_Notes{
	None, C, DF, D, EF, E, F, GF, G, AF, A, BF, B
};

struct Song {
	char* songName;
	uint16_t* notes;
	uint32_t* notelengths;
	uint32_t size;
};