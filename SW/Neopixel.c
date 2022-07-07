#include <Neopixel.h>

#include <stdint.h>

#include "DMATimer.h"
#include "./inc/tm4c123gh6pm.h"

void EnableInterrupts(void);
int Vol;

int old_Colors[4];

// Blink the on-board LED.
#define GPIO_PORTE0 (*((volatile uint32_t *)0x40024004))
#define NUMLEDS  12        // number of LEDs in the string
#define SIZE 3*8*4*NUMLEDS // size of color encoding buffer
#define PINGPONGS 3        // number of DMA ping-pong transfers needed to send the whole encoding buffer ((SIZE/PINGPONGS/2)<=1024 and an integer)
// Each LED has three 8-bit color values stored in the order:
// [Green]  [Red]  [Blue]
// With each bit of each byte of each color of each LED stored
// in four bytes.  These four bytes encode a 0 as:
// {0x01, 0x00, 0x00, 0x00}
// and a 1 as:
// {0x01, 0x01, 0x00, 0x00}
// Note: These values are for LED string on GPIO pin 0.
// In other words, there are NUMLEDS LEDs per string of lights,
// 3 colors (green, red, blue) per LED, 8 bits per color, and
// 4 bytes per bit of color.
uint8_t Buffer[SIZE];      // the color encoding buffer
uint32_t Cursor;           // pointer into Buffer (0 to SIZE-1)

// delay function from sysctl.c
// which delays 3*ulCount cycles
#ifdef __TI_COMPILER_VERSION__
  //Code Composer Studio Code
  void Delay(uint32_t ulCount){
  __asm (  "loop    subs    r0, #1\n"
      "    bne     loop\n");
}

#else
  //Keil uVision Code
//		void Delay( uint32_t u1Count){
////			__asm{ 
////				subs    r0, #1
////				bne     Delay
////				bx      lr
////				
////			}
//			__asm("subs r0, #1\n" 
//				"bne Delay\n"
//				"bx lr\n");
//		}
	void Delay(uint32_t u1Count){
			for(int i = 0; i < u1Count; i ++){}
	}

#endif

//------------sendreset------------
// Send a reset command to the WS2812 LED driver through PE0.
// This function uses a blind wait, so it takes at least 50
// usec to complete.
// Input: none
// Output: none
// Assumes: 80 MHz system clock, PE0 initialized
void sendreset(void){
  GPIO_PORTE0 = 0x00;              // hold data low
  Delay(1333);                     // delay ~4,000 cycles (50 usec)
//  Delay(1333);                   // delay ~4,000 cycles (50 usec)
}

//------------clearbuffer------------
// Clear the entire RAM buffer and restart the cursor to
// the beginning of the row of LEDs.  To actually update the
// physical LEDs, initiate a DMA transfer from 'Buffer' to
// GPIO_PORTE0 (0x40024004).
// Input: none
// Output: none
void clearbuffer(void){
  int i;
  Cursor = 0;                      // restart at the beginning of the buffer
  for(i=0; i<SIZE; i=i+4){
    Buffer[i] = 1;                 // clear all color values for all LEDs by encoding 0's
    Buffer[i+1] = 0;
    Buffer[i+2] = 0;
    Buffer[i+3] = 0;
  }
}

//------------addcolor------------
// Private helper function that adds a color to the buffer.
// Configure the next LED with the desired color values and
// move to the next LED automatically.  This updates the RAM
// buffer and increments the cursor.  To actually update the
// physical LEDs, initiate a DMA transfer from 'Buffer' to
// GPIO_PORTE0 (0x40024004).  A color value of zero means
// that color is not illuminated.
// Input: red   8-bit red color value
//        green 8-bit green color value
//        blue  8-bit blue color value
// Output: none
void addColor(uint8_t red, uint8_t green, uint8_t blue){
  int i;
  for(i=0x80; i>0x00; i=i>>1){     // store the green byte first
    if(green&i){
      Buffer[Cursor] = 1;
      Buffer[Cursor+1] = 1;
      Buffer[Cursor+2] = 0;
      Buffer[Cursor+3] = 0;
    } else{
      Buffer[Cursor] = 1;
      Buffer[Cursor+1] = 0;
      Buffer[Cursor+2] = 0;
      Buffer[Cursor+3] = 0;
    }
    Cursor = Cursor + 4;
  }
  for(i=0x80; i>0x00; i=i>>1){     // store the red byte second
    if(red&i){
      Buffer[Cursor] = 1;
      Buffer[Cursor+1] = 1;
      Buffer[Cursor+2] = 0;
      Buffer[Cursor+3] = 0;
    } else{
      Buffer[Cursor] = 1;
      Buffer[Cursor+1] = 0;
      Buffer[Cursor+2] = 0;
      Buffer[Cursor+3] = 0;
    }
    Cursor = Cursor + 4;
  }
  for(i=0x80; i>0x00; i=i>>1){     // store the blue byte third
    if(blue&i){
      Buffer[Cursor] = 1;
      Buffer[Cursor+1] = 1;
      Buffer[Cursor+2] = 0;
      Buffer[Cursor+3] = 0;
    } else{
      Buffer[Cursor] = 1;
      Buffer[Cursor+1] = 0;
      Buffer[Cursor+2] = 0;
      Buffer[Cursor+3] = 0;
    }
    Cursor = Cursor + 4;
  }
  if(Cursor >= SIZE){              // check if at the end of the buffer
    Cursor = 0;                    // wrap back to the beginning
  }
}

//------------setcursor------------
// Point the cursor at the desired LED index.  This LED will
// be the next one configured by the next call to addcolor().
// If the new cursor parameter is greater than the total
// number of LEDs, it will wrap around.  For example,
// setcursor(11) with a row of 10 LEDs will wrap around to the
// second (index=1) LED.
// Input: newCursor 8-bit new cursor index
// Output: none
void setcursor(uint8_t newCursor){
  newCursor = newCursor%(SIZE/3/8/4);
  Cursor = newCursor*3*8*4;
}

void printBuffer(void){
	sendreset();         // send a reset
	DMA_Transfer((uint8_t *)Buffer, SIZE/PINGPONGS, PINGPONGS);
}



void NeoPixel_Init(void){
	
                                   // activate clock for Port E
  SYSCTL_RCGCGPIO_R |= SYSCTL_RCGCGPIO_R4;
                                   // allow time for clock to stabilize
  while((SYSCTL_PRGPIO_R&SYSCTL_PRGPIO_R4) == 0){};
  GPIO_PORTE_DIR_R |= 0x01;        // make PE0 out
  GPIO_PORTE_AFSEL_R &= ~0x01;     // disable alt funct on PE0
  GPIO_PORTE_DR8R_R |= 0x01;       // enable 8 mA drive on PE0
  GPIO_PORTE_DEN_R |= 0x01;        // enable digital I/O on PE0
                                   // configure PE0 as GPIO
  GPIO_PORTE_PCTL_R = (GPIO_PORTE_PCTL_R&0xFFFFFFF0)+0x00000000;
  GPIO_PORTE_AMSEL_R &= ~0x01;     // disable analog functionality on PE0
  sendreset();
	DMA_Init(32, (uint32_t *)&GPIO_PORTE0); // initialize DMA channel 8 for Timer5A transfer, every 24 cycles (0.4 usec)
	Vol = 10; // Full volume by default
		
	for(int i = 0; i < 4; i ++){
		old_Colors[i] = 0;
	}
	
}

// RGB representation for each note
//const int RGB_C[3] = {100, 0, 0}; // RED
//const int RGB_Csharp[3] = {97, 3, 0}; // Red-Orange
//const int RGB_D[3] = {85, 15, 2}; // Orange
//const int RGB_Dsharp[3] = {70, 30, 0}; // Yellow
//const int RGB_E[3] = {33, 33, 33}; // White
//const int RGB_F[3] = {0, 100, 0}; // Green
//const int RGB_Fsharp[3] = {10, 90, 10}; // Aquamarine
//const int RGB_G[3] = {8, 47, 44}; // Some blue
//const int RGB_Gsharp[3] = {7, 8, 85}; // Some blue
//const int RGB_A[3] = {0, 0, 100}; // Blue
//const int RGB_Asharp[3] = {85, 0, 15}; // Pink?
//const int RGB_B[3] = {50, 0, 50}; // Purple

const int RGB[13][3] = {{0, 0, 0}, {100, 0, 0}, {90, 10, 0}, {70, 30, 0}, {65, 25, 10}, {33, 33, 33}, {0, 100, 0}, {15, 80, 15}, {8, 47, 44}, 
	{7, 8, 85}, {0, 0, 100}, {50, 0, 50}, {85, 0, 15} };

// C(1), C#(2), D(3), D#(4), E(5), F(6), F#(7), G(8), G#(9), A(10), A#(11), B(12)
void SetNeoNotes(uint32_t note1, uint32_t note2, uint32_t note3, uint32_t note4){
	sendreset();
	
	int num_notes = 0;
	uint32_t notes[4];
	int note_index = 0;
	if(note1 != 0){
		num_notes++;
		notes[note_index] = note1;
		note_index++;
	}
	if(note2 != 0){
		num_notes++;
		notes[note_index] = note2;
		note_index++;
	}
	if(note3 != 0){
		num_notes++;
		notes[note_index] = note3;
		note_index++;
	}
	if(note4 != 0){
		num_notes++;
		notes[note_index] = note4;
		note_index++;
	}
	
	for(int i = note_index; i < 4; i ++){
		notes[i] = 0;
	}
	
	// Copy current colors to old colors
	for(int i = 0; i < 4; i ++){
		old_Colors[i] = notes[i];
	}
	
	// Draw the circle
	switch(num_notes){
		
		case 0:
			// No note is being played, play a blank screen
			for(int i = 0; i < 12; i ++){
				addColor(0, 0, 0);
			}
			printBuffer();
			
		break;
		
		case 1:
			// Only 1 note is being played, make it populate the entire disc
			for(int i = 0; i < 12; i ++){
				addColor((Vol*RGB[notes[0]][0])/100, (Vol*RGB[notes[0]][1])/100, (Vol*RGB[notes[0]][2])/100);
			}
			printBuffer();
			
			
		break;
		
		case 2:
			// Two notes are being played, spread it between two halves
			// Cover the first half
			for(int i = 0; i < 6; i ++){
				addColor((Vol*RGB[notes[0]][0])/100, (Vol*RGB[notes[0]][1])/100, (Vol*RGB[notes[0]][2])/100);
			}
			// Cover the next half
			for(int i = 0; i < 6; i ++){
				addColor((Vol*RGB[notes[1]][0])/100, (Vol*RGB[notes[1]][1])/100, (Vol*RGB[notes[1]][2])/100);
			}
			printBuffer();
			
		break;
		
		case 3:
			// Three notes are being played, spread it between 3 thirds
			// Cover the first third
			for(int i = 0; i < 4; i ++){
				addColor((Vol*RGB[notes[0]][0])/100, (Vol*RGB[notes[0]][1])/100, (Vol*RGB[notes[0]][2])/100);
			}
			// Cover the second third
			// Cover the next half
			for(int i = 0; i < 4; i ++){
				addColor((Vol*RGB[notes[1]][0])/100, (Vol*RGB[notes[1]][1])/100, (Vol*RGB[notes[1]][2])/100);
			}
			// Cover the third third
			for(int i = 0; i < 4; i ++){
				addColor((Vol*RGB[notes[2]][0])/100, (Vol*RGB[notes[2]][1])/100, (Vol*RGB[notes[2]][2])/100);
			}
			printBuffer();
			
		break;
		
		case 4:
			// Four notes are being played, spread it between 4 quarters
			// Cover the first quarter
			for(int i = 0; i < 3; i ++){
				addColor((Vol*RGB[notes[0]][0])/100, (Vol*RGB[notes[0]][1])/100, (Vol*RGB[notes[0]][2])/100);
			}
			// Cover the second quarter
			for(int i = 0; i < 3; i ++){
				addColor((Vol*RGB[notes[1]][0])/100, (Vol*RGB[notes[1]][1])/100, (Vol*RGB[notes[1]][2])/100);
			}
			// Cover the third quarter
			for(int i = 0; i < 3; i ++){
				addColor((Vol*RGB[notes[2]][0])/100, (Vol*RGB[notes[2]][1])/100, (Vol*RGB[notes[2]][2])/100);
			}
			// Cover the fourth quarter
			for(int i = 0; i < 3; i ++){
				addColor((Vol*RGB[notes[3]][0])/100, (Vol*RGB[notes[3]][1])/100, (Vol*RGB[notes[3]][2])/100);
			}
			printBuffer();
			
		break;
		
	}
}


// 100 = full volume, 0 = Quiet
void setBrightness(int volume){
	if(volume > 100){
		Vol = 100;
		
	}
	else if(volume < 0){
		Vol = 0;
	}
	else{
		Vol = volume;
	}
	
	SetNeoNotes(old_Colors[0], old_Colors[1], old_Colors[2], old_Colors[3]);
}

// Make each color appear on the neopixel
void runNeoTest(void){
	sendreset();
	for(int i = 1; i < 13; i ++){
		addColor((Vol*RGB[i][0])/100, (Vol*RGB[i][1])/100, (Vol*RGB[i][2])/100);
	}
	printBuffer();
}



