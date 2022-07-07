// filename ******** Buttons.h **************
// This files involves interfacing the buttons and the keypad
// Date: 03/30/2022
// Created by Jesse Valdelamar
// Lab Number 17525
// TA Mohit
// Date of Last Revision: 3/30/2022

#include <stdint.h>

///****************Button_Init****************
// Initializes 4 Buttons on Ports PE0-PE4
void Button_Init(void);

///****************Button_Init****************
// Initializes a single slide pot on Port PE5 to function as an ADC
void SlidePot_Init(void);

///****************Keypad_Init***************
// Initializes a keypad on Ports PC0-PC6
void Keypad_Init(void);

///****************Buttons_Get***************
// Reads the values of all 5 buttons
int Buttons_Get(void);

///****************Keypad***************
// Reads the values of the KeyPad
int Keypad_Get(void);

int GetVolume(void);

uint8_t GetSW1(void);
	
uint8_t GetSW2(void);

uint8_t GetSW3(void);
