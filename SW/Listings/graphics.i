# 1 "Graphics.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 366 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "Graphics.c" 2
# 1 ".\\Graphics.h" 1
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
# 2 ".\\Graphics.h" 2

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
# 2 "Graphics.c" 2


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
# 5 "Graphics.c" 2



const uint16_t Colors[13] = {0x0000, 0x001F, 0x047F,
 0x07FF, 0x32BF, 0xFFFF, 0x07E0, 0x87D0, 0xF671,
 0xFC83, 0xF800, 0xE41D, 0x90BF};



char noteToChars(uint32_t note, uint32_t magnitude, char *halfstep, char *char_magnitude){
 *char_magnitude = IntegerToChar(magnitude);

 switch(note){
  case 1:
  *halfstep = '/';
  return('C');
  break;

  case 2:
  *halfstep = 'b';
  return('D');
  break;

  case 3:
  *halfstep = '/';
  return('D');
  break;

  case 4:
  *halfstep = 'b';
  return('E');
  break;

  case 5:
  *halfstep = '/';
  return('E');
  break;

  case 6:
  *halfstep = '/';
  return('F');
  break;

  case 7:
  *halfstep = 'b';
  return('G');
  break;

  case 8:
  *halfstep = '/';
  return('G');
  break;

  case 9:
  *halfstep = 'b';
  return('A');
  break;

  case 10:
  *halfstep = '/';
  return('A');
  break;

  case 11:
  *halfstep = 'b';
  return('B');
  break;

  case 12:
  *halfstep = '/';
  return('B');
  break;

  default:
  *halfstep = '/';
  return('/');
  break;
 }
}


void DrawFirstNote(uint32_t note, uint32_t magnitude){

 ST7735_FillRect(16, 28, 40, 40, ST7735_Color565(0, 0, 0));

 if(note != 0){

  char this_halfstep = '/';
  char this_magnitude = '/';
  char this_pitch = '/';
  this_pitch = noteToChars(note, magnitude, &this_halfstep, &this_magnitude);


  uint16_t color = Colors[note];

  if(this_pitch != '/'){
   ST7735_DrawCharS(16, 30, this_pitch, color, ST7735_Color565(0, 0, 0), 4);
  }
  if(this_halfstep != '/'){
   ST7735_DrawCharS(42, 46,this_halfstep, color, ST7735_Color565(0, 0, 0), 2);
  }
  if(this_magnitude != '/'){
   ST7735_DrawCharS(42, 28,this_magnitude, color, ST7735_Color565(0, 0, 0), 2);
  }
 }



}
void DrawSecondNote(uint32_t note, uint32_t magnitude){

 ST7735_FillRect(76, 28, 40, 40, ST7735_Color565(0, 0, 0));

 if(note != 0){

  char this_halfstep = '/';
  char this_magnitude = '/';
  char this_pitch = '/';
  this_pitch = noteToChars(note, magnitude, &this_halfstep, &this_magnitude);


  uint16_t color = Colors[note];

  if(this_pitch != '/'){
   ST7735_DrawCharS(76, 30, this_pitch, color, ST7735_Color565(0, 0, 0), 4);
  }
  if(this_halfstep != '/'){
   ST7735_DrawCharS(102, 46,this_halfstep, color, ST7735_Color565(0, 0, 0), 2);
  }
  if(this_magnitude != '/'){
  ST7735_DrawCharS(102, 28,this_magnitude, color, ST7735_Color565(0, 0, 0), 2);
  }
 }


}

void DrawThirdNote(uint32_t note, uint32_t magnitude){


 ST7735_FillRect(16, 78, 40, 40, ST7735_Color565(0, 0, 0));

 if(note != 0){

  char this_halfstep = '/';
  char this_magnitude = '/';
  char this_pitch = '/';
  this_pitch = noteToChars(note, magnitude, &this_halfstep, &this_magnitude);


  uint16_t color = Colors[note];

  if(this_pitch != '/'){
   ST7735_DrawCharS(16, 80, this_pitch, color, ST7735_Color565(0, 0, 0), 4);
  }
  if(this_halfstep != '/'){
   ST7735_DrawCharS(42, 96,this_halfstep, color, ST7735_Color565(0, 0, 0), 2);
  }
  if(this_magnitude != '/'){
   ST7735_DrawCharS(42, 78,this_magnitude, color, ST7735_Color565(0, 0, 0), 2);
  }
 }


}

void DrawFourthNote(uint32_t note, uint32_t magnitude){


 ST7735_FillRect(76, 78, 40, 40, ST7735_Color565(0, 0, 0));

 if(note != 0){

  char this_halfstep = '/';
  char this_magnitude = '/';
  char this_pitch = '/';
  this_pitch = noteToChars(note, magnitude, &this_halfstep, &this_magnitude);


  uint16_t color = Colors[note];

  if(this_pitch != '/'){
   ST7735_DrawCharS(76, 80, this_pitch, color, ST7735_Color565(0, 0, 0), 4);
  }
  if(this_halfstep != '/'){
   ST7735_DrawCharS(102, 96,this_halfstep, color, ST7735_Color565(0, 0, 0), 2);
  }
  if(this_magnitude != '/'){
   ST7735_DrawCharS(102, 78,this_magnitude, color, ST7735_Color565(0, 0, 0), 2);
  }
 }


}

void DrawFourNotes(uint32_t note1, uint32_t magnitude1,
          uint32_t note2, uint32_t magnitude2,
          uint32_t note3, uint32_t magnitude3,
          uint32_t note4, uint32_t magnitude4)
{
 DrawFirstNote(note1, magnitude1);
 DrawSecondNote(note2, magnitude2);
 DrawThirdNote(note3, magnitude3);
 DrawFourthNote(note4, magnitude4);
}

void FlipMetronomeOn(uint32_t tempo){

 ST7735_FillRect(0, 140, 128, 20, ST7735_Color565(0, 0, 0));


 ST7735_DrawCharS(0, 140, 'M', ST7735_Color565(255, 255, 0), 0x0000, 2);
 ST7735_DrawCharS(15, 140, 'E', ST7735_Color565(255, 255, 0), 0x0000, 2);
 ST7735_DrawCharS(30, 140, 'T', ST7735_Color565(255, 255, 0), 0x0000, 2);
 ST7735_DrawCharS(45, 140, ':', ST7735_Color565(255, 255, 0), 0x0000, 2);

 uint32_t temp_tempo = tempo;


 char hundred = '/';
 char ten = '/';
 char one = '/';

 one = IntegerToChar(temp_tempo % 10);
 temp_tempo = temp_tempo - (temp_tempo % 10);
 ten = IntegerToChar((temp_tempo % 100)/10);
 temp_tempo = temp_tempo - ((temp_tempo % 100)/100);
 hundred = IntegerToChar((temp_tempo)/100);


 int start = 0;
 if(hundred != '/' && hundred != '0'){
  start = 1;
 }
 else if(ten != '/' && ten != '0'){
  start = 2;
 }
 else if(one != '/' && one != '0'){
  start = 3;
 }

 switch(start){
  case 0:

   ST7735_DrawCharS(115, 140, '0', ST7735_Color565(255, 255, 0), 0x0000, 2);

  break;

  case 1:

   ST7735_DrawCharS(115, 140, one, ST7735_Color565(255, 255, 0), 0x0000, 2);
   ST7735_DrawCharS(100, 140, ten, ST7735_Color565(255, 255, 0), 0x0000, 2);
   ST7735_DrawCharS(85, 140, hundred, ST7735_Color565(255, 255, 0), 0x0000, 2);

  break;

  case 2:

   ST7735_DrawCharS(115, 140, one, ST7735_Color565(255, 255, 0), 0x0000, 2);
   ST7735_DrawCharS(100, 140, ten, ST7735_Color565(255, 255, 0), 0x0000, 2);

  break;

  case 3:

   ST7735_DrawCharS(115, 140, one, ST7735_Color565(255, 255, 0), 0x0000, 2);
  break;

 }

}

void FlipMetronomeOff(void){
 ST7735_FillRect(0, 140, 128, 20, ST7735_Color565(0, 0, 0));

}

void ArmMetroIndicator(void){
 ST7735_DrawCharS(0, 140, 'A', ST7735_Color565(255, 0, 0), 0x0000, 2);
 ST7735_DrawCharS(12, 140, 'R', ST7735_Color565(255, 0, 0), 0x0000, 2);
 ST7735_DrawCharS(24, 140, 'M', ST7735_Color565(255, 0, 0), 0x0000, 2);
 ST7735_DrawCharS(36, 140, 'I', ST7735_Color565(255, 0, 0), 0x0000, 2);
 ST7735_DrawCharS(48, 140, 'N', ST7735_Color565(255, 0, 0), 0x0000, 2);
 ST7735_DrawCharS(60, 140, 'G', ST7735_Color565(255, 0, 0), 0x0000, 2);

 ST7735_DrawCharS(84, 140, 'M', ST7735_Color565(255, 0, 0), 0x0000, 2);
 ST7735_DrawCharS(96, 140, 'E', ST7735_Color565(255, 0, 0), 0x0000, 2);
 ST7735_DrawCharS(108, 140, 'T', ST7735_Color565(255, 0, 0), 0x0000, 2);

}

int songSelect, instrumentSelect;

void DrawSongMenu(void){
 ST7735_FillScreen(0x0000);
 songSelect = 0;


 ST7735_DrawCharS(36 ,0, 'S', ST7735_Color565(0, 0, 255), 0x0000, 2);
 ST7735_DrawCharS(48,0, 'o', ST7735_Color565(0, 0, 255), 0x0000, 2);
 ST7735_DrawCharS(60,0, 'n', ST7735_Color565(0, 0, 255), 0x0000, 2);
 ST7735_DrawCharS(72,0, 'g', ST7735_Color565(0, 0, 255), 0x0000, 2);
 ST7735_DrawCharS(84,0, 's', ST7735_Color565(0, 0, 255), 0x0000, 2);



 ST7735_DrawCharS(6, 24, '>', ST7735_Color565(0, 255, 0), 0x0000, 1);
# 325 "Graphics.c"
 ST7735_DrawCharS(24, 144, 'E', ST7735_Color565(0, 255, 0), 0x0000, 1);
 ST7735_DrawCharS(30, 144, 'x', ST7735_Color565(0, 255, 0), 0x0000, 1);
 ST7735_DrawCharS(36, 144, 'i', ST7735_Color565(0, 255, 0), 0x0000, 1);
 ST7735_DrawCharS(42, 144, 't', ST7735_Color565(0, 255, 0), 0x0000, 1);




 ST7735_DrawCharS(24, 24, 'S', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(30, 24, 'o', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(36, 24, 'n', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(42, 24, 'g', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(54, 24, 'o', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(60, 24, 'f', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(72, 24, 'S', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(78, 24, 't', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(84, 24, 'o', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(90, 24, 'r', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(96, 24, 'm', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(102, 24, 's', ST7735_Color565(255, 0, 0), 0x0000, 1);



 ST7735_DrawCharS(24, 36, 'F', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(30, 36, 'a', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(36, 36, 'i', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(42, 36, 'r', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(48, 36, 'y', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(60, 36, 'F', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(66, 36, 'o', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(72, 36, 'u', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(78, 36, 'n', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(84, 36, 't', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(90, 36, 'a', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(96, 36, 'i', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(102, 36, 'n', ST7735_Color565(255, 0, 0), 0x0000, 1);


 ST7735_DrawCharS(24, 48, 'D', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(30, 48, 'i', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(36, 48, 'r', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(42, 48, 'e', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(54, 48, 'D', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(60, 48, 'i', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(66, 48, 'r', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(72, 48, 'e', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(84, 48, 'D', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(90, 48, 'o', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(96, 48, 'c', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(102, 48, 'k', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(108, 48, 's', ST7735_Color565(255, 0, 0), 0x0000, 1);

}

void MoveSongArrowDown(void){

 ST7735_FillRect(6, 12*songSelect + 24, 5, 8, 0x0000);

 songSelect ++;

 if(songSelect > 10){

  songSelect = 0;
 }


 ST7735_DrawCharS(6, 12*songSelect + 24, '>', ST7735_Color565(0, 255, 0), 0x0000, 1);
}

void MoveSongArrowUp(void){

 ST7735_FillRect(6, 12*songSelect + 24, 5, 8, 0x0000);

 songSelect --;

 if(songSelect < 0){

  songSelect = 10;
 }


 ST7735_DrawCharS(6, 12*songSelect + 24, '>', ST7735_Color565(0, 255, 0), 0x0000, 1);
}

void DisplayNowPlaying(void){

  switch(songSelect){
   case 0:

    ST7735_DrawCharS(0, 0, 'S', ST7735_Color565(0, 255, 0), 0x0000, 1);
    ST7735_DrawCharS(6, 0, 'o', ST7735_Color565(0, 255, 0), 0x0000, 1);
    ST7735_DrawCharS(12, 0, 'n', ST7735_Color565(0, 255, 0), 0x0000, 1);
    ST7735_DrawCharS(18, 0, 'g', ST7735_Color565(0, 255, 0), 0x0000, 1);
    ST7735_DrawCharS(30, 0, 'o', ST7735_Color565(0, 255, 0), 0x0000, 1);
    ST7735_DrawCharS(36, 0, 'f', ST7735_Color565(0, 255, 0), 0x0000, 1);
    ST7735_DrawCharS(48, 0, 'S', ST7735_Color565(0, 255, 0), 0x0000, 1);
    ST7735_DrawCharS(56, 0, 't', ST7735_Color565(0, 255, 0), 0x0000, 1);
    ST7735_DrawCharS(64, 0, 'o', ST7735_Color565(0, 255, 0), 0x0000, 1);
    ST7735_DrawCharS(70, 0, 'r', ST7735_Color565(0, 255, 0), 0x0000, 1);
    ST7735_DrawCharS(76, 0, 'm', ST7735_Color565(0, 255, 0), 0x0000, 1);
    ST7735_DrawCharS(82, 0, 's', ST7735_Color565(0, 255, 0), 0x0000, 1);
   break;

   case 1:
    ST7735_DrawCharS(0, 0, 'F', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(6, 0, 'a', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(12, 0, 'i', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(18, 0, 'r', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(24, 0, 'y', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(36, 0, 'F', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(42, 0, 'o', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(48, 0, 'u', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(56, 0, 'n', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(64, 0, 't', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(70, 0, 'a', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(76, 0, 'i', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(84, 0, 'n', ST7735_Color565(255, 0, 0), 0x0000, 1);
   break;

   case 2:
    ST7735_DrawCharS(0, 0, 'D', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(6, 0, 'i', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(12, 0, 'r', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(18, 0, 'e', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(30, 0, 'D', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(36, 0, 'i', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(42, 0, 'r', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(48, 0, 'e', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(60, 0, 'D', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(66, 0, 'o', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(72, 0, 'c', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(78, 0, 'k', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(84, 0, 's', ST7735_Color565(255, 0, 0), 0x0000, 1);
   break;


   default:

   break;
  }
}


void ClearOutNowPlaying(void){
 ST7735_FillRect(0, 0, 128, 10, 0);
}

void DrawInstrumentMenu(void){

 ST7735_FillScreen(0x0000);
 instrumentSelect = 0;


 ST7735_DrawCharS(4 ,0, 'I', ST7735_Color565(0, 0, 255), 0x0000, 2);
 ST7735_DrawCharS(16,0, 'n', ST7735_Color565(0, 0, 255), 0x0000, 2);
 ST7735_DrawCharS(28,0, 's', ST7735_Color565(0, 0, 255), 0x0000, 2);
 ST7735_DrawCharS(40,0, 't', ST7735_Color565(0, 0, 255), 0x0000, 2);
 ST7735_DrawCharS(52,0, 'r', ST7735_Color565(0, 0, 255), 0x0000, 2);
 ST7735_DrawCharS(64 ,0, 'm', ST7735_Color565(0, 0, 255), 0x0000, 2);
 ST7735_DrawCharS(76,0, 'e', ST7735_Color565(0, 0, 255), 0x0000, 2);
 ST7735_DrawCharS(88,0, 'n', ST7735_Color565(0, 0, 255), 0x0000, 2);
 ST7735_DrawCharS(100,0, 't', ST7735_Color565(0, 0, 255), 0x0000, 2);
 ST7735_DrawCharS(112,0, 's', ST7735_Color565(0, 0, 255), 0x0000, 2);


 ST7735_DrawCharS(6, 24, '>', ST7735_Color565(0, 255, 0), 0x0000, 1);
# 504 "Graphics.c"
 ST7735_DrawCharS(24, 144, 'E', ST7735_Color565(0, 255, 0), 0x0000, 1);
 ST7735_DrawCharS(30, 144, 'x', ST7735_Color565(0, 255, 0), 0x0000, 1);
 ST7735_DrawCharS(36, 144, 'i', ST7735_Color565(0, 255, 0), 0x0000, 1);
 ST7735_DrawCharS(42, 144, 't', ST7735_Color565(0, 255, 0), 0x0000, 1);




 ST7735_DrawCharS(24, 24, 'F', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(30, 24, 'l', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(36, 24, 'u', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(42, 24, 't', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(48, 24, 'e', ST7735_Color565(255, 0, 0), 0x0000, 1);


 ST7735_DrawCharS(24, 36, 'T', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(30, 36, 'r', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(36, 36, 'u', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(42, 36, 'm', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(48, 36, 'p', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(54, 36, 'e', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(60, 36, 't', ST7735_Color565(255, 0, 0), 0x0000, 1);


 ST7735_DrawCharS(24, 48, 'B', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(30, 48, 'a', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(36, 48, 's', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(42, 48, 's', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(48, 48, 'o', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(54, 48, 'o', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(60, 48, 'n', ST7735_Color565(255, 0, 0), 0x0000, 1);


 ST7735_DrawCharS(24, 60, 'H', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(30, 60, 'o', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(36, 60, 'r', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(42, 60, 'n', ST7735_Color565(255, 0, 0), 0x0000, 1);


 ST7735_DrawCharS(24, 72, 'P', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(30, 72, 'i', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(36, 72, 'a', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(42, 72, 'n', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(48, 72, 'o', ST7735_Color565(255, 0, 0), 0x0000, 1);


 ST7735_DrawCharS(24, 84, 'G', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(30, 84, 'u', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(36, 84, 'i', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(42, 84, 't', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(48, 84, 'a', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(54, 84, 'r', ST7735_Color565(255, 0, 0), 0x0000, 1);


 ST7735_DrawCharS(24, 96, 'O', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(30, 96, 'b', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(36, 96, 'o', ST7735_Color565(255, 0, 0), 0x0000, 1);
 ST7735_DrawCharS(42, 96, 'e', ST7735_Color565(255, 0, 0), 0x0000, 1);

}

void MoveInstrumentArrowDown(void){

 ST7735_FillRect(6, 12*instrumentSelect + 24, 5, 8, 0x0000);

 instrumentSelect ++;

 if(instrumentSelect > 10){

  instrumentSelect = 0;
 }


 ST7735_DrawCharS(6, 12*instrumentSelect + 24, '>', ST7735_Color565(0, 255, 0), 0x0000, 1);
}

void MoveInstrumentArrowUp(void){

 ST7735_FillRect(6, 12*instrumentSelect + 24, 5, 8, 0x0000);

 instrumentSelect --;

 if(instrumentSelect < 0){

  instrumentSelect = 10;
 }


 ST7735_DrawCharS(6, 12*instrumentSelect + 24, '>', ST7735_Color565(0, 255, 0), 0x0000, 1);
}

void DisplayInstrPlaying(void){

  switch(instrumentSelect){
   case 0:

    ST7735_DrawCharS(0, 10, 'F', ST7735_Color565(0, 255, 0), 0x0000, 1);
    ST7735_DrawCharS(6, 10, 'l', ST7735_Color565(0, 255, 0), 0x0000, 1);
    ST7735_DrawCharS(12, 10, 'u', ST7735_Color565(0, 255, 0), 0x0000, 1);
    ST7735_DrawCharS(18, 10, 't', ST7735_Color565(0, 255, 0), 0x0000, 1);
    ST7735_DrawCharS(24, 10, 'e', ST7735_Color565(0, 255, 0), 0x0000, 1);
   break;

   case 1:
    ST7735_DrawCharS(0, 10, 'T', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(6, 10, 'r', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(12, 10, 'u', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(18, 10, 'm', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(24, 10, 'p', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(30, 10, 'e', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(36, 10, 't', ST7735_Color565(255, 0, 0), 0x0000, 1);
   break;

   case 2:

    ST7735_DrawCharS(0, 10, 'B', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(6, 10, 'a', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(12, 10, 's', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(18, 10, 's', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(24, 10, 'o', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(30, 10, 'o', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(36, 10, 'n', ST7735_Color565(255, 0, 0), 0x0000, 1);
   break;

   case 3:

    ST7735_DrawCharS(0, 10, 'H', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(6, 10, 'o', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(12, 10, 'r', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(18, 10, 'n', ST7735_Color565(255, 0, 0), 0x0000, 1);
   break;

   case 4:

    ST7735_DrawCharS(0, 10, 'P', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(6, 10, 'i', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(12, 10, 'a', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(18, 10, 'n', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(24, 10, 'o', ST7735_Color565(255, 0, 0), 0x0000, 1);
   break;

   case 5:

    ST7735_DrawCharS(0, 10, 'G', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(6, 10, 'u', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(12, 10, 'i', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(18, 10, 't', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(24, 10, 'a', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(30, 10, 'r', ST7735_Color565(255, 0, 0), 0x0000, 1);
   break;

   case 6:

    ST7735_DrawCharS(0, 10, 'O', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(6, 10, 'b', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(12, 10, 'o', ST7735_Color565(255, 0, 0), 0x0000, 1);
    ST7735_DrawCharS(18, 10, 'e', ST7735_Color565(255, 0, 0), 0x0000, 1);
   break;


   default:

   break;
  }
}


void ClearOutInstrPlaying(void){
 ST7735_FillRect(0, 10, 128, 10, 0);
}
