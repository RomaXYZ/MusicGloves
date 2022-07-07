

#include <stdio.h>
#include <stdint.h>
#include <math.h>


#include "./inc/tm4c123gh6pm.h"

#include "./inc/CortexM.h"

#include "Music.h"
#include "DAC.h"
#include "Notes.h"
#include "./inc/Timer0A.h"
#include "./inc/Timer1A.h"

/** MMAP Pin definitions. */
#define PF0   (*((volatile uint32_t *)0x40025004)) // Left Button
#define PF1   (*((volatile uint32_t *)0x40025008)) // RED LED
#define PF2   (*((volatile uint32_t *)0x40025010)) // BLUE LED
#define PF3   (*((volatile uint32_t *)0x40025020)) // GREEN LED
#define PF4   (*((volatile uint32_t *)0x40025040)) // Right Button






const int PERIODS[] = { B0, C1, DF1 , D1 , EF1 , E1 , F1 , GF1 , G1 , AF1, A1 , BF1 , B1 , C2 , DF2 , D2 , EF2 , E2 , F2 , GF2 , G2 , AF2 , A2 , BF2 , 
	B2 , C3 , DF3 , D3 , EF3, E3 , F3 , GF3, G3 , AF3, A3 , BF3 , B3 , C4 , DF4 , D4 , EF4, E4 , F4 , GF4, G4 , AF4, A4 , 
	BF4, B4 , C5 , DF5, D5 , EF5, E5 , F5 , GF5, G5 , AF5, A5 , BF5, B5 , C6 , DF6, D6 , EF6, E6 , F6 , GF6, G6 , AF6, 
	A6 , BF6, B6 , C7 , DF7, D7 , EF7, E7 , F7 , GF7, G7 , AF7, A7 , BF7, B7, C8};

const unsigned short Wave2[128] = {
  1068,   1100, 1169,   1170, 1175,   1168, 1161,   1145, 1130,   1121, 1113,   1108, 1102,   1090, 1076,   1055, 1032,   
	1005, 985,   974, 963,    975, 987,    1037, 1082,   1200, 1343,   1540, 1737,   1800, 1863,   1700, 1575,  1300,  1031,  
	750,	538,    412, 309,
  320, 330,    401, 472,   550, 626,   707,  807,  912,  1038, 1145,  1270,  1350, 1420,  1441, 1461,  1420,  1375,  1287, 1201,
  1100, 1005,  900, 819,  700,  658,  600,  532,  512,  496,  545,  594,    
	700, 804,  925,  1055, 1151,  1248, 1278,  1323,
  1275, 1233, 1100,  1049, 920,  895,  860,  826,  820,   826,  838,  850,    
	856, 862,  862,  861,  880,  899,  930,  961,
  980, 1006, 1014,  1023, 1034,  1046,  1064, 1092,  1130, 1177, 1200,  1224,   
	1205, 1186,  1158, 1133,  1055, 1098, 1100,  1102,
  1105, 1109,  1090, 1076, 1051,  1027, 1015,  1003, 1002
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
uint16_t kpNotes[148] = {C2, B1, C2, B1, C2, D2, EF2, F2, G2, C2, G2, C3, BF2, AF2, G2, F2, EF2, D2, C2, B1, G1, C2, B1, C2, B1, C2, D2, EF2, F2, G2, C2, F2, AF2, G2, F2, EF2, D2, D2, C2, C2, C2, B1, C2, B1, C2, D2, EF2, F2, G2, C2, G2, C3, BF2, AF2, G2, F2, EF2, D2, C2, B1, G1, C2, B1, C2, B1, C2, D2, EF2, F2, G2, C2, F2, AF2, G2, F2, EF2, D2, D2, C2, C2,
BF3, G3, AF3, BF3, G3, AF3, BF3, EF4, D4, C4, BF3, C4, AF3, BF3, AF3, G3, AF3, F3, D3, EF3, F3, D3, EF3, F3, D4, C4, BF3, AF3, AF3, BF3, AF3, G3, F3, G3, BF3, G3, AF3, BF3, G3, AF3, BF3, EF4, D4, C4, BF3, C4, AF3, BF3, AF3, G3, AF3, F3, D3, EF3, F3, D3, EF3, F3, D4, C4, BF3, AF3, AF3, G3, F3, D3, EF3, EF3 
};

#define SONGSIZE 35

uint32_t songLength[SONGSIZE] = {
	4, 4, 4, 4, 8, 
	4, 4, 4, 4, 8, 
	4, 4, 4, 4, 8, 
	4, 4, 4, 4, 8, 
	2, 2, 4, 4, 2, 2, 8, 
	4, 2, 2, 2, 2, 2, 2, 8
};
uint16_t songNotes[SONGSIZE][3] = {
	{D3, 0, 0},
	{A3, F3, 0},
	{A3, F3, 0},
	{D3, 0, 0},
	{B3, G3, 0},
	{D3, 0, 0},
	{C4, A3, 0},
	{C4, A3, 0},
	{D3, 0, 0},
	{B3, C3, 0},
	{D3, 0, 0},
	{A3, F3, 0},
	{A3, F3, 0},
	{D3, 0, 0},
	{B3, G3, 0},
	{D3, 0, 0},
	{C4, A3, 0},
	{C4, A3, 0},
	{D3, 0, 0},
	{B3, G3, 0},
	
	{D4, D3, 0},
	{A4, D3, 0},
	{D5, A3, F3},
	{D5, A3, F3},
	{D4, D3, 0},
	{A4, D3, 0},
	{D5, B3, G3},

	{E5, D3, 0},
	{E5, C4, A3},
	{F5, C4, A3},
	{E5, C4, A3},
	{F5, C4, A3},
	{E5, D3, 0},
	{C5, D3, 0},
	{A4, B3, G3},
	

};

int PERIOD = 0;
int FIRST = C4;
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

#define TENBPM 480000000
#define MEAN (uint32_t)2048	
#define MEAN2 (uint32_t)1024						
#define MEAN3 (uint32_t)683						  
#define MEAN6 (uint32_t)1707						
#define MAXVOL (uint32_t)10000					

int singleI;
int Metronome;
int MetronomeStage;
int M;
unsigned short out1;
unsigned short out2;

int32_t moment1;
int32_t moment2;

int playing;

//************************ Metronome ************************
//************************           ************************

void metronomeHit(){
	if(MetronomeStage==64){
		MetronomeStage=0;
		Timer1A_ChangePeriod(7256);
	}else if(MetronomeStage==63){
		MetronomeStage++;
		Timer1A_ChangePeriod((TENBPM/Metronome-500000));
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
			Timer1A_Init(&metronomeHit, (TENBPM/Metronome-500000), 5);
	}
}

//*************************  Volume  ************************
//*************************          ************************

void SetVolume(int vol){
	VOL = vol*vol;
	if(vol<0)
		VOL = 0;
	else if(vol>100)
		VOL = 100*100;
}

//************************   Notes   ************************
//************************   1 - 4   ************************

void play1Note(void){
	singleI = (singleI+1);
	if(singleI==64)
		singleI=0;
	moment1 = Instruments[INUM][singleI]/3;
	moment2 = Instruments[INUM][singleI]/2;
   // 0 to 63
	if(MetronomeStage!=64){
		moment1 = Click64[MetronomeStage]/2 + Instruments[INUM][singleI]/3;
		moment2 = Click64[MetronomeStage]/3 + Instruments[INUM][singleI]/2;
		out1 = ((moment1-MEAN6)*VOL+(MEAN6*MAXVOL))/MAXVOL;
		out2 = ((moment2-MEAN6)*VOL+(MEAN6*MAXVOL))/MAXVOL;
	}else{
		out1 = ((moment1-MEAN3)*VOL+(MEAN3*MAXVOL))/MAXVOL;
		out2 = ((moment2-MEAN2)*VOL+(MEAN2*MAXVOL))/MAXVOL;
	}


	
	DAC_Out(out1);
	DAC_Out((1<<15)+out2);
//	DAC_Out((moment1*VOL/10000));
//	DAC_Out((1<<15)+(moment2*VOL/10000));
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
	//we want the (totaltimegone)/(C1*64 period) to get the x/64 
  T[0] = (T[0]+PERIOD); // Time Passed since last reset
	T[1] = (T[1]+PERIOD); // 
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
		out1 = ((moment1-MEAN6)*VOL+(MEAN6*MAXVOL))/MAXVOL;
		out2 = ((moment2-MEAN6)*VOL+(MEAN6*MAXVOL))/MAXVOL;
	}else{
		out1 = ((moment1-MEAN3)*VOL+(MEAN3*MAXVOL))/MAXVOL;
		out2 = ((moment2-MEAN2)*VOL+(MEAN2*MAXVOL))/MAXVOL;
	}
	
	DAC_Out(out1);
	DAC_Out((1<<15)+(out2));
	
}

void Play2Notes(int baseNum, int note2){//Chords!
	if(playing)
		Timer0A_Stop();
	//DAC_Init(1024);
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
	//we want the (totaltimegone)/(C1*64 period) to get the x/64 
  T[0] = (T[0]+PERIOD); // Time Passed since last reset
	T[1] = (T[1]+PERIOD); // 
	T[2] = (T[2]+PERIOD); //
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
		out1 = ((moment1-MEAN6)*VOL+(MEAN6*MAXVOL))/MAXVOL;
		out2 = ((moment2-MEAN6)*VOL+(MEAN6*MAXVOL))/MAXVOL;
	}else{
		out1 = ((moment1-MEAN3)*VOL+(MEAN3*MAXVOL))/MAXVOL;
		out2 = ((moment2-MEAN2)*VOL+(MEAN2*MAXVOL))/MAXVOL;
	}
	
	DAC_Out(out1);
	DAC_Out((1<<15)+(out2));
	
}

void Play3Notes(int baseNum, int note2, int note3){//Chords!
	if(playing)
		Timer0A_Stop();
	//DAC_Init(1024);
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
	//we want the (totaltimegone)/(C1*64 period) to get the x/64 
  T[0] = (T[0]+PERIOD); // Time Passed since last reset
	T[1] = (T[1]+PERIOD); // 
	T[2] = (T[2]+PERIOD); // 
	T[3] = (T[3]+PERIOD); // 
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
		out1 = ((moment1-MEAN6)*VOL+(MEAN6*MAXVOL))/MAXVOL;
		out2 = ((moment2-MEAN6)*VOL+(MEAN6*MAXVOL))/MAXVOL;
	}else{
		out1 = ((moment1-MEAN3)*VOL+(MEAN3*MAXVOL))/MAXVOL;
		out2 = ((moment2-MEAN2)*VOL+(MEAN2*MAXVOL))/MAXVOL;
	}
	
	DAC_Out(out1);
	DAC_Out((1<<15)+(out2));
	
}

void Play4Notes(int baseNum, int note2, int note3, int note4){//Chords!
	if(playing)
		Timer0A_Stop();
	//DAC_Init(1024);
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

//************************ Main Notes ************************
//************************            ************************
//const int CHORDS[11][4] = {
//	
//	{C, None, None, None},
//	{C, E, 		None, None},
//	{C, E, 		G, 		None},
//	{C, E, 		G, 		B		},
//	{C, E, 		G, 		BF	},
//	{C, EF, 	None, None},
//	{C, EF, 	G, 		None},
//	{C, EF, 	GF, 	None},
//	{C, EF, 	G, 		BF	},
//	{C, EF, 	GF, 	BF	},
//	{C, GF, 	AF, 	None}
//	
//};

//void PlayNotes(int baseNote, int chord, int octave){
//	int baseNum = (12*(octave-1))+baseNote;
//	if(chord==10){
//		baseNum-=1;
//		Play3Notes(baseNum-1, baseNum+GF, baseNum+AF);
//	}else if(CHORDS[chord][1]==None)
//		Play1Note(baseNum);
//	else if(CHORDS[chord][2]==None)
//		Play2Notes(baseNum, baseNum+CHORDS[chord][1]-1);
//	else if(CHORDS[chord][3]==None)
//		Play3Notes(baseNum, baseNum+CHORDS[chord][1]-1, baseNum+CHORDS[chord][2]-1);
//	else
//		Play4Notes(baseNum, baseNum+CHORDS[chord][1]-1, baseNum+CHORDS[chord][2]-1, baseNum+CHORDS[chord][3]-1);
//	
//}

const int CHORDS[6][4] = {
	
	{C, None, None, None},
	{C, E, 		G, 		None},
	{C, EF, 	G, 		None},
	{C, GF, 	AF, 	None},
	{C, E, 		G, 		B		},
	{C, EF, 	G, 		BF	}
	
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

//*****************************Test Functions******************************
//*************************************************************************
//*************************************************************************
//*************************************************************************
//*************************************************************************

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
{D3NUMBER,BF2NUMBER,G2NUMBER,E2NUMBER}, {E3NUMBER,D3NUMBER,BF2NUMBER,G2NUMBER}, {G3NUMBER,E3NUMBER,D3NUMBER,BF2NUMBER}, 
{BF3NUMBER,G3NUMBER,E3NUMBER,D3NUMBER}, {D4NUMBER,BF3NUMBER,G3NUMBER,E3NUMBER}, {E4NUMBER,D4NUMBER,BF3NUMBER,G3NUMBER},

	{A5NUMBER,BF1NUMBER,0,0}, {D5NUMBER,BF2NUMBER,BF1NUMBER,0}, {BF4NUMBER,D3NUMBER,BF1NUMBER,0}, {G4NUMBER,A3NUMBER,BF1NUMBER,0},
	{G5NUMBER,A3NUMBER,0,0}, {D5NUMBER,A3NUMBER,BF1NUMBER,0}, {BF4NUMBER,A3NUMBER,BF1NUMBER,0}, {G4NUMBER,A3NUMBER,BF1NUMBER,0}, 
	{GF5NUMBER,A3NUMBER,0,0}, {D5NUMBER,D3NUMBER,BF1NUMBER,0}, {BF4NUMBER,A3NUMBER,BF1NUMBER,0}, {G4NUMBER,G3NUMBER,BF1NUMBER,0},
	{G5NUMBER,C4NUMBER,BF1NUMBER,0}, {D5NUMBER,A3NUMBER,BF1NUMBER,0}, {BF4NUMBER,G3NUMBER,BF1NUMBER,0}, {G4NUMBER,D3NUMBER,0,0},

	{G5NUMBER,A1NUMBER,0,0}, {C5NUMBER,A2NUMBER,A1NUMBER,0}, {A4NUMBER,C3NUMBER,A1NUMBER,0}, {F4NUMBER,G3NUMBER,A1NUMBER,0},
	{F5NUMBER,G3NUMBER,A1NUMBER,0}, {C5NUMBER,G3NUMBER,A1NUMBER,0}, {A4NUMBER,G3NUMBER,A1NUMBER,0}, {F4NUMBER,G3NUMBER,0,0}, 
	{E5NUMBER,A1NUMBER,0,0}, {C5NUMBER,A2NUMBER,A1NUMBER,0}, {A4NUMBER,G3NUMBER,A1NUMBER,0}, {F4NUMBER,F3NUMBER,A1NUMBER,0},
	{F5NUMBER,C4NUMBER,A1NUMBER,0}, {C5NUMBER,G3NUMBER,A1NUMBER,0}, {A4NUMBER,A3NUMBER,A1NUMBER,0}, {F4NUMBER,C3NUMBER,0,0},

{F5NUMBER,G1NUMBER,0,0}, {BF4NUMBER,G2NUMBER,G1NUMBER,0}, {G4NUMBER,BF2NUMBER,G1NUMBER,0}, {E4NUMBER,F3NUMBER,G1NUMBER,0},
	{E5NUMBER,F3NUMBER,G1NUMBER,0}, {BF4NUMBER,F3NUMBER,G1NUMBER,0}, {G4NUMBER,F3NUMBER,G1NUMBER,0}, {E4NUMBER,F3NUMBER,0,0},
	{EF5NUMBER,G1NUMBER,0,0}, {BF4NUMBER,G2NUMBER,G1NUMBER,0}, {G4NUMBER,F3NUMBER,G1NUMBER,0}, {E4NUMBER,E3NUMBER,G1NUMBER,0},
	{E5NUMBER,G3NUMBER,G1NUMBER,0}, {BF4NUMBER,E3NUMBER,G1NUMBER,0}, {G4NUMBER,C3NUMBER,G1NUMBER,0}, {E4NUMBER,BF2NUMBER,0,0},

{E5NUMBER,F1NUMBER,0,0}, {A4NUMBER,F2NUMBER,F1NUMBER,0}, {F4NUMBER,A2NUMBER,F1NUMBER,0}, {D4NUMBER,E3NUMBER,F1NUMBER,0},
	{D5NUMBER,E3NUMBER,F1NUMBER,0}, {A4NUMBER,E3NUMBER,F1NUMBER,0}, {F4NUMBER,E3NUMBER,F1NUMBER,0}, {D4NUMBER,E3NUMBER,0,0}, 
	{DF5NUMBER,F1NUMBER,0,0}, {A4NUMBER,A2NUMBER,F1NUMBER,0}, {F4NUMBER,E3NUMBER,F1NUMBER,0}, {D4NUMBER,D3NUMBER,F1NUMBER,0},
	{D5NUMBER,G3NUMBER,F1NUMBER,0}, {A4NUMBER,F3NUMBER,F1NUMBER,0}, {F4NUMBER,C4NUMBER,F1NUMBER,0}, {D4NUMBER,BF3NUMBER,0,0},

	{A5NUMBER,BF1NUMBER,0,0}, {D5NUMBER,BF2NUMBER,BF1NUMBER,0}, {BF4NUMBER,D3NUMBER,BF1NUMBER,0}, {G4NUMBER,A3NUMBER,BF1NUMBER,0},
	{G5NUMBER,A3NUMBER,BF1NUMBER,0}, {D5NUMBER,A3NUMBER,BF1NUMBER,0}, {BF4NUMBER,A3NUMBER,BF1NUMBER,0}, {G4NUMBER,A3NUMBER,0,0}, 
	{GF5NUMBER,BF1NUMBER,0,0}, {D5NUMBER,D3NUMBER,BF1NUMBER,0}, {BF4NUMBER,A3NUMBER,BF1NUMBER,0}, {G4NUMBER,G3NUMBER,BF1NUMBER,0},
	{G5NUMBER,D4NUMBER,BF1NUMBER,0}, {D5NUMBER,A3NUMBER,BF1NUMBER,0}, {BF4NUMBER,G3NUMBER,BF1NUMBER,0}, {G4NUMBER,D3NUMBER,0,0},

	{BF5NUMBER,A1NUMBER,0,0}, {EF5NUMBER,A2NUMBER,A1NUMBER,0}, {C5NUMBER,C3NUMBER,A1NUMBER,0}, {GF4NUMBER,C4NUMBER,A1NUMBER,0},
	{A5NUMBER,C4NUMBER,A1NUMBER,0}, {EF5NUMBER,C4NUMBER,A1NUMBER,0}, {C5NUMBER,C4NUMBER,A1NUMBER,0}, {GF4NUMBER,C4NUMBER,0,0},
	{AF5NUMBER,D2NUMBER,0,0}, {EF5NUMBER,D3NUMBER,D2NUMBER,0}, {C5NUMBER,C4NUMBER,D2NUMBER,0}, {GF4NUMBER,A3NUMBER,D2NUMBER,0},
	{A5NUMBER,EF4NUMBER,D2NUMBER,0}, {EF5NUMBER,D4NUMBER,D2NUMBER,0}, {C5NUMBER,C4NUMBER,D2NUMBER,0}, {GF4NUMBER,A3NUMBER,0,0},

	{C6NUMBER,G1NUMBER,0,0}, {D5NUMBER,BF2NUMBER,G1NUMBER,0}, {BF4NUMBER,D3NUMBER,G1NUMBER,0}, {G4NUMBER,BF3NUMBER,G1NUMBER,0},
	{BF5NUMBER,BF3NUMBER,G1NUMBER,0}, {D5NUMBER,BF3NUMBER,G1NUMBER,0}, {BF4NUMBER,BF3NUMBER,G1NUMBER,0}, {G4NUMBER,BF3NUMBER,0,0}, 
	{A5NUMBER,G1NUMBER,0,0}, {D5NUMBER,BF2NUMBER,G1NUMBER,0}, {BF4NUMBER,BF3NUMBER,G1NUMBER,0}, {G4NUMBER,A3NUMBER,G1NUMBER,0},
	{BF5NUMBER,C4NUMBER,G1NUMBER,0}, {D5NUMBER,BF3NUMBER,G1NUMBER,0}, {BF4NUMBER,A3NUMBER,G1NUMBER,0}, {G4NUMBER,D3NUMBER,0,0},

	{A5NUMBER,C2NUMBER,0,0}, {BF4NUMBER,C3NUMBER,C2NUMBER,0}, {G4NUMBER,G3NUMBER,C2NUMBER,0}, {E4NUMBER,BF3NUMBER,C2NUMBER,0},
	{G5NUMBER,BF2NUMBER,C2NUMBER,0}, {BF4NUMBER,BF3NUMBER,C2NUMBER,0}, {G4NUMBER,BF3NUMBER,C2NUMBER,0}, {E4NUMBER,BF3NUMBER,0,0}, 
	{F5NUMBER,C2NUMBER,0,0}, {BF4NUMBER,C3NUMBER,C2NUMBER,0}, {G4NUMBER,BF3NUMBER,C2NUMBER,0}, {E4NUMBER,G3NUMBER,C2NUMBER,0},
	{E5NUMBER,E4NUMBER,C2NUMBER,0}, {BF4NUMBER,D4NUMBER,C2NUMBER,0}, {G4NUMBER,A4NUMBER,C2NUMBER,0}, {E4NUMBER,E4NUMBER,0,0}

};


void playNoteSong(){
	//JitterMeasure();
	//DumpCapture(0);
	T[0] = (T[0]+PERIOD); // Time Passed since last reset
	T[1] = (T[1]+PERIOD); // 
	T[2] = (T[2]+PERIOD); // 
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
	
	out1 = ((moment1-MEAN3)*VOL+(MEAN3*MAXVOL))/MAXVOL;
	out2 = ((moment2-MEAN2)*VOL+(MEAN2*MAXVOL))/MAXVOL;
  DAC_Out(out1);
	DAC_Out((1<<15)+out2);
	/*DumpCapture(0);
	int timediff = timebuf[DumpCount()-2]-timebuf[DumpCount()-1];
	if(timediff>maxtime)
		maxtime=timediff;
	total += timediff;
	*/
}




void nextNoteSong(){
	Timer1A_Stop();
	Timer0A_Stop();
	//uint32_t jitter = JitterGet();
	COUNT = 0;
	NINDEX++;
	
	T[0] = 0;
	T[1] = 0;
	T[2] = 0;
	if(NINDEX!=SONGSIZE){
		PERIOD = songNotes[NINDEX][0];
		Timer0A_Init(&playNoteSong, PERIOD, 5);
		Timer1A_Init(&nextNoteSong, songLength[NINDEX]*7500000, 4);
	}else
		DAC_Out(0);
	
}

void PlaySongDemo(void){//Chords!
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
	/*
	Timer0A_Init(&nextNote, CurrentSong.notelengths[0]*SPEED, 4);
	Timer1A_Init(&playNote, (int)CurrentSong.notes[0], 5);
  */
//	while(1){                       Volume
//		if(SW2_Get()==1){
//			DisableInterrupts();
//			VOL++;
//			if(VOL==5)
//				VOL = 0;
//			SW2_Clear();
//			EnableInterrupts();
//		}
//		if(SW3_Get()==1){            Instrument
//			DisableInterrupts();
//			INUM++;
//			if(INUM==3)
//				INUM=0;
//			SW3_Clear();
//			EnableInterrupts();
//		}
//	}
	

}

//************************* Fairy Fountain *************************
//*************************                *************************

void nextNoteFF(){

	Timer1A_Stop();
	
	//uint32_t jitter = JitterGet();

	
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
//********************************** Chord Progression ****************************************
//**********************************                   ****************************************

void Timer0A_Function2(void){
	//we want the (totaltimegone)/(C1*64 period) to get the x/64 
  T[0] = (T[0]+PERIOD); // Time Passed since last reset
	T[1] = (T[1]+PERIOD); // 
	T[2] = (T[2]+PERIOD); // 
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
	
	
	T2[0] = (T2[0]+PERIOD); // Time Passed since last reset
	T2[1] = (T2[1]+PERIOD); // 
	T2[2] = (T2[2]+PERIOD); // 
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
void PlayChordProgression(int baseChord1, int baseChord2){//Chords!
	
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
	/*
	Timer0A_Init(&nextNote, CurrentSong.notelengths[0]*SPEED, 4);
	Timer1A_Init(&playNote, (int)CurrentSong.notes[0], 5);
	*/
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

