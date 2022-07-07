/**
 * @file MusicGloves.c
 * @author Jesse Valdelamar, Cole Choe, Wilson Odom, Ravi Akalkotkar
					, Jonathan Valvano, Matthew Yu
 *    Mohit, 17525
 * @brief
 *    An empty main file for running Muic Gloves
 * 
 * @version 0.1
 * @date 2022-03-30  3/30/2022
 *
 * @copyright Copyright (c) 2022
 * @note Potential Pinouts:
 *    Backlight (pin 10) connected to +3.3 V
 *    MISO (pin 9) unconnected
 *    SCK (pin 8) connected to PA2 (SSI0Clk)
 *    MOSI (pin 7) connected to PA5 (SSI0Tx)
 *    TFT_CS (pin 6) connected to PA3 (SSI0Fss)
 *    CARD_CS (pin 5) unconnected
 *    Data/Command (pin 4) connected to PA6 (GPIO)
 *    RESET (pin 3) connected to PA7 (GPIO)
 *    VCC (pin 2) connected to +3.3 V
 *    Gnd (pin 1) connected to ground
 * 
 *    Center of 10k-ohm potentiometer connected to PE2/AIN1
 *    Bottom of 10k-ohm potentiometer connected to ground
 *    Top of 10k-ohm potentiometer connected to +3.3V 
 *
 *    Warning. Initial code for the RGB driver creates bright flashing lights. Remove this code
 *    and do not run if you have epilepsy.
 */

/* This example accompanies the book
   "Embedded Systems: Real Time Interfacing to Arm Cortex M Microcontrollers",
   ISBN: 978-1463590154, Jonathan Valvano, copyright (c) 2021

 Copyright 2022 by Jonathan W. Valvano, valvano@mail.utexas.edu
    You may use, edit, run or distribute this file
    as long as the above copyright notice remains
 THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
 OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
 MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
 VALVANO SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL,
 OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 For more information about my classes, my research, and my books, see
 http://users.ece.utexas.edu/~valvano/
 */

/** File includes. */
#include <stdio.h>
#include <stdint.h>
#include <math.h>

/* Register definitions. */
#include "./inc/tm4c123gh6pm.h"
/* Port F switch and LED control. */
#include "./inc/LaunchPad.h"
/* Clock delay and interrupt control. */
#include "./inc/CortexM.h"
/* External debug monitor stuff. */
#include "./inc/TExaS.h"
/* ST7735 display. */
#include "./inc/ST7735.h"

#include <Graphics.h>
#include <Neopixel.h>
#include "Music.h"
#include "DAC.h"
#include "Notes.h"
#include "./inc/PLL.h"
#include "Buttons.h"
#include "FlexSensor.h"





int main_NeoPixel(void) { // Main for testing the neopixels
    DisableInterrupts();
    /* TExaS Debug modes:
       SCOPE,           // PD3
       LOGICANALYZER,   // ???
       SCOPE_PD2,       // PD2
       SCOPE_PE2,       // PE3
       SCOPE_PB5        // PB5
     */
		// Beginning on Initializations
		PLL_Init(Bus80MHz);              // now running at 80 MHz
		NeoPixel_Init();
	
		// End of Initializations
		EnableInterrupts();
		SetNeoNotes(AF, A, BF, B);
		setBrightness(50);
		
    while(1) {
        WaitForInterrupt();
				
    }
    return 1;
}

int main_Chords(void){ // Main for testing Chords
	
	DisableInterrupts();
  LaunchPad_Init();
	PLL_Init(Bus80MHz);
	DAC_Init(0);
	EnableInterrupts();
	Play4Notes(C4NUMBER, E4NUMBER, G4NUMBER, C5NUMBER);


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
    PLL_Init(Bus80MHz);
	  Keypad_Init();
    EnableInterrupts();
    while(1) {
			key = Keypad_Get();
			if(key>=0)
				key = -1;
			
			test = 0;
		}
    
}

int main_lcddisplay(void) { // Main for testing LCD Display
    DisableInterrupts();
    /* TExaS Debug modes:
       SCOPE,           // PD3
       LOGICANALYZER,   // ???
       SCOPE_PD2,       // PD2
       SCOPE_PE2,       // PE3
       SCOPE_PB5        // PB5
     */
		// Beginning on Initializations
		PLL_Init(Bus80MHz);              // now running at 80 MHz
		ST7735_InitR(INITR_REDTAB);
	
//		NeoPixel_Init();
		// End of Initializations
		EnableInterrupts();
		
		//runNeoTest();
	
//		SetNeoNotes(C, E, GF, BF);
//		setBrightness(25);
	
		ST7735_FillScreen(ST7735_BLACK); // Set screen to black
		//FlipMetronomeOn(120);
		//FlipMetronomeOff();
//		DrawSongMenu();
//		for(int i = 0; i < 2; i ++){
//			MoveSongArrowDown();
//		}
		DrawInstrumentMenu();
//		for(int i = 0; i < 6; i ++){
//			MoveInstrumentArrowDown();
//		}
//		
//		ST7735_FillScreen(ST7735_BLACK); // Set screen to black
//		DrawFirstNote(C, 5);
//		DrawSecondNote(E, 4);
//		DrawThirdNote(GF, 3);
//		DrawFourthNote(BF, 2);
//		DisplayInstrPlaying();
//		DisplayNowPlaying();
//		
//		FlipMetronomeOn(120);
		
		
    while(1) {
        WaitForInterrupt();
				
    }
    return 1;
}

int main_flex(void) { // Main for testing flex sensors
	DisableInterrupts();
	PLL_Init(Bus80MHz);
	Flex_Init();
	EnableInterrupts();
	int flexVal = 0;
	while(1) {
		flexVal = Return_Note();
	}
	return 1;
}

int main_flex_music(void){//main_flex_music
	//flex sensor controlling notes
	
	DisableInterrupts();
  LaunchPad_Init();
	PLL_Init(Bus80MHz);
	DAC_Init(0);
	Flex_Init();
	EnableInterrupts();
	int newNote = Return_Note();
	int newChord = Return_Chord();
	int newVol = Return_Volume();
	//Play1Note(C4NUMBER+flexVal);
	int currentNote = newNote;
	int currentChord = newChord;
	int currentVol = newVol;
	int octave = 4;
	PlayNotes(currentNote, currentChord, octave);
	//PlayFairyFountain();
	while(1){
		
		newNote = Return_Note();
		newChord = Return_Chord();
		newVol = Return_Volume();
		//newVol = 100;
		
		
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

int main_idk(void){ //main_idk
	DisableInterrupts();
	PLL_Init(Bus80MHz);
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
	
	Play1Note(C4NUMBER);
	ST7735_FillScreen(ST7735_BLACK);
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
//			if(GetSW1()){
//				if(metro==0){
//					SetMetronome(10);
//					FlipMetronomeOn(100);
//					metro = 10;
//				}
//				else{
//					SetMetronome(0);
//					FlipMetronomeOff();
//					metro = 0;
//				}
//			}
			
			if(keyNum == 0){
				if(!metroStart){ // Start the metronome
						SetMetronome(10);
						FlipMetronomeOn(100);
						metro = 10;
						metroStart = 1;
				}
				if(metroStart){ // Turn off the metronome
					  SetMetronome(0);
						FlipMetronomeOff();
						metro = 0;
						metroStart = 0;
				}
			}
			
			if(keyNum == 11){ // Raise the speed of the metronome
				if(metroStart){
					if(metro < 20){
						metro = metro + 1;
						SetMetronome(metro);
						FlipMetronomeOff();
						FlipMetronomeOn(metro * 10);
					}
					
				}
			}
			
			if(keyNum == 10){ // Lower the speed of the metronome
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
					Play1Note(C4NUMBER+flexVal);
					SetNeoNotes(((C4NUMBER+flexVal-1)%12)+1, None, None, None);
					DrawFourNotes(((C4NUMBER+flexVal-1)%12)+1,4+((C+flexVal)/13),None,0,None,0,None,0);
				}
				else{
					Play4Notes(C4NUMBER+flexVal, E4NUMBER+flexVal, G4NUMBER+flexVal, B5NUMBER+flexVal);
					SetNeoNotes(((C4NUMBER+flexVal-1)%12)+1, ((E4NUMBER+flexVal-1)%12)+1, ((G4NUMBER+flexVal-1)%12)+1, ((B4NUMBER+flexVal-1)%12)+1);
					DrawFourNotes(((C4NUMBER+flexVal-1)%12)+1, 4+((C+flexVal)/13), 
												((E4NUMBER+flexVal-1)%12)+1, 4+((E+flexVal)/13), 
												((G4NUMBER+flexVal-1)%12)+1, 4+((G+flexVal)/13), 
												((B4NUMBER+flexVal-1)%12)+1, 4+((B+flexVal)/13)
												);
				}
			}
			else if(GetSW3()){
				single = (!single)&1;
				if(single){
					Play1Note(C4NUMBER+flexVal);
					SetNeoNotes(((C4NUMBER+flexVal-1)%12)+1, None, None, None);
					DrawFourNotes(((C4NUMBER+flexVal-1)%12)+1,4+((C+flexVal)/13),None,0,None,0,None,0);
				}
				else{
					Play4Notes(C4NUMBER+flexVal, E4NUMBER+flexVal, G4NUMBER+flexVal, B5NUMBER+flexVal);
					SetNeoNotes(((C4NUMBER+flexVal-1)%12)+1, ((E4NUMBER+flexVal-1)%12)+1, ((G4NUMBER+flexVal-1)%12)+1, ((B4NUMBER+flexVal-1)%12)+1);
					DrawFourNotes(((C4NUMBER+flexVal-1)%12)+1, 4+((C+flexVal)/13), 
												((E4NUMBER+flexVal-1)%12)+1, 4+((E+flexVal)/13), 
												((G4NUMBER+flexVal-1)%12)+1, 4+((G+flexVal)/13), 
												((B4NUMBER+flexVal-1)%12)+1, 4+((B+flexVal)/13)
												);
				}
			}
	}

	return(1);
}

int main_final(void){//main_final
	DisableInterrupts();
	PLL_Init(Bus80MHz);
	Button_Init();
	Keypad_Init();
	SlidePot_Init();
	ST7735_InitR(INITR_REDTAB);
	NeoPixel_Init();
	DAC_Init(0);
	EnableInterrupts();
	ST7735_FillScreen(ST7735_BLACK);
	SetNeoNotes(C, None, None, None);
	
	Play1Note(C4NUMBER);
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

