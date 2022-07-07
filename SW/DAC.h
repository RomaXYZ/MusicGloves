// filename ******** DAC.h **************
// This involves intefacing with the DAC
// Date: 03/30/2022
// Created by Jesse Valdelamar
// Lab Number 17525
// TA Mohit
// Date of Last Revision: 3/30/2022

///****************DAC_Init****************
// Initializes PD0, PD1 and PD3 as SCK, MOSI and FS (not in that order) for the DAC's SPI/SSI interfacing
void DAC_Init(int data);

///****************NeoPixel_Init****************
// Sends DAC digital values for digital to analog conversion
void DAC_Out(int data);