// filename ******** Buttons.c **************
// This files involves interfacing the buttons and the keypad
// Date: 3/30/2022
// Created by Wilson Odom
// Lab Number 17525
// TA Mohit
// Date of Last Revision: 4/8/2022

/** File includes. */
#include <stdio.h>
#include <stdint.h>
#include "./inc/tm4c123gh6pm.h"
#include "./inc/Timer2A.h"
#include "./inc/Timer3A.h"
#include "./inc/Timer4A.h"
#include "./inc/CortexM.h"

#define NVIC_EN0_INT2           0x00000004  // Interrupt 2 enable
#define NVIC_EN0_INT3           0x00000008  // Interrupt 3 enable

// SW1 corresponds to PC4
// SW2 corresponds to PC5
// SW3 corresponds to PC6
volatile uint8_t SW1, SW2, SW3;
uint16_t switch_debouncing;
uint8_t set = 0;

void switch_debouncer(void);

///****************Button_Init****************
// Initializes 3 Buttons on Ports PC4-PC6
// Remember to change this to match the diagram post-PCB
void Button_Init(void){
	
// Port C version, PC4-PC6
	SYSCTL_RCGCGPIO_R |= 0x04; // Activate clock for Port C
	SW1, SW2, SW3 = 0; // Clear all 3 semaphores
	
	GPIO_PORTC_DIR_R &= ~0x70; // Make PC4-PC6 in
	GPIO_PORTC_DEN_R |= 0x70; // Enable Digital I/o on PC4-PC6
	GPIO_PORTC_IS_R &= ~0x70; // PC4-PC6 is edge sensitive
	GPIO_PORTC_IBE_R &= ~0x70; // PC4-PC6, single edge
	GPIO_PORTC_IEV_R |= 0x70; // Rising edge
	GPIO_PORTC_ICR_R = 0x70; // Clear Flag 4, 5 and 6
	GPIO_PORTC_IM_R |= 0x70; // ARM interrupts
	
	NVIC_PRI0_R = (NVIC_PRI0_R& 0xFF00FFFF) | 0x00400000; // PortC = priority 2
	NVIC_EN0_R = (NVIC_EN0_INT2); // Enable Interrupt 2
	
	switch_debouncing = 0;
	set = 0;
	
	//EnableInterrupts();
	
// Port D Version, PD5-PD7
//	SYSCTL_RCGCGPIO_R |= 0x08; // Activate clock for Port D
//	SW1, SW2, SW3 = 0; // Clear all 3 semaphores
//	
//	GPIO_PORTD_DIR_R &= ~0xD0; // Make PD5-PD7 in
//	GPIO_PORTD_DEN_R |= 0xD0; // Enable Digital I/o on PD5-PD7
//	GPIO_PORTD_IS_R &= ~0xD0; // PD5-PD7 is edge sensitive
//	GPIO_PORTD_IBE_R &= ~0xD0; // PD5-PD7, single edge
//	GPIO_PORTD_IEV_R |= 0xD0; // Rising edge
//	GPIO_PORTD_ICR_R = 0xD0; // Clear Flags for PD5-PD7
//	GPIO_PORTD_IM_R |= 0xD0; // ARM interrupts
//	
//	NVIC_PRI0_R = (NVIC_PRI0_R& 0x0FFFFFFF) | 0x40000000; // PortD = priority 2
//	NVIC_EN0_R = (NVIC_EN0_INT3); // Enable Interrupt 3
//	EnableInterrupts();
		
	
	
}

void GPIOPortC_Handler(void){
	// Debounce, wait 20 ms to find the true value
	if(switch_debouncing == 0){
		
		// Get the value of the of the switches pressed
		if((GPIO_PORTC_RIS_R >> 4) & 0x01){
			SW1 = 1;
			switch_debouncing = 1;
		}else if((GPIO_PORTC_RIS_R >> 5) & 0x01){
			SW2 = 1;
			switch_debouncing = 2;
		}else if((GPIO_PORTC_RIS_R >> 6) & 0x01){
			SW3 = 1;
			switch_debouncing = 3;
		}
		set = 1;
		Timer4A_Init(&switch_debouncer, 1000000, 2);
	}
	GPIO_PORTC_ICR_R = 0x70; // Acknowledge all 3 flags
	
}

//void GPIOPortD_Handler(void){
//		// Debounce, wait 20 ms to find the true value
//	GPIO_PORTD_ICR_R = 0x70; // Acknowledge all 3 flags
//	if(switch_debouncing == 0){
//		SW1 = (GPIO_PORTC_RIS_R & 0x01);
//		SW2 = (GPIO_PORTC_RIS_R >> 1) & 0x01;
//		SW3 = (GPIO_PORTC_RIS_R >> 2) & 0x01;
//		Timer4A_Init(&switch_debouncer, 1600000, 2);
//		switch_debouncing = 1; // You are now debouncing!
//	}
//}

void wait_for_fall(void){
	if(!((GPIO_PORTC_DATA_R>>(3+switch_debouncing))&1)){
		Timer4A_Stop();
		Timer4A_Init(&switch_debouncer, 1000000, 2);
		set=0;
	}
}
void switch_debouncer(void){
		//switch_debouncing = 0; // You are no longer debouncing!
		Timer4A_Stop();
		if(set){
			Timer4A_Init(&wait_for_fall, 1000000, 2);
		}
		else{
			switch_debouncing=0;
		}
}



uint8_t GetSW1(void){
	uint8_t copy = SW1;
	SW1 = 0;
	return(copy);
}
uint8_t GetSW2(void){
	uint8_t copy = SW2;
	SW2 = 0;
	return(copy);
}
uint8_t GetSW3(void){
	uint8_t copy = SW3;
	SW3 = 0;
	return(copy);
}



///****************SlidePot_Init****************
// Initializes a single slide pot on Port PD2 to function as an ADC
// Initializes ADC1
void SlidePot_Init(void){
	volatile uint32_t delay;
	SYSCTL_RCGCADC_R |= 0x00000002; // 1) Activate ADC1
	SYSCTL_RCGCGPIO_R |= 0x08; // 1) Activate clock for Port D
	
	while((SYSCTL_PRGPIO_R  & 0x08) == 0){}; // Wait for Port D clock to stabilize
	while((SYSCTL_PRADC_R & 0x0002) != 0x0002){}; // Wait for ADC2 to stabilize
	
	GPIO_PORTD_DIR_R &= ~0x04; // 3) Make PD2 an input
	GPIO_PORTD_AFSEL_R &= 0x04; // 4) Enable alt function on PD2
	GPIO_PORTD_DEN_R &= ~0x04; // 5) Disable digital I/O on PD2
	GPIO_PORTD_PCTL_R &= 0xFFFFF0FF; // PD2
	GPIO_PORTD_AMSEL_R &= 0x04; // 6) Enable Analog Funct. on PD2
		
	ADC1_PC_R &= ~0xF; 							// 8 )Clear Max Sample Field on ADC1	
	ADC1_PC_R |= 0x1; 							// Configure for 125k samples / second
	ADC1_SSPRI_R = 0x3210;          // 9) Sequencer 3 is lowest priority
  ADC1_ACTSS_R &= ~0x0004;        // 10) disable sample sequencer 2
  ADC1_EMUX_R &= ~0x0F00;         // 11) seq2 is software trigger
  ADC1_SAC_R = 0x06;              // 32-point average
  //ADC1_SSMUX2_R = 0x0123;         // 12) set channels for SS2
	ADC1_SSMUX2_R = 0x0005;         // 12) set channels for SS2, Channel 5	
  ADC1_SSCTL2_R = 0x0006;         // 13) no TS0 D0 IE0 END0 TS1 D1, yes IE1 END1
  ADC1_IM_R &= ~0x0004;           // 14) disable SS2 interrupts
  ADC1_ACTSS_R |= 0x0004;         // 15) enable sample sequencer 2	
			
		
}

int slidePot_Get(void){
	ADC1_PSSI_R = 0x0004; // 1) Initiate SS2
	int data;
	while((ADC1_RIS_R & 0x04) == 0){}; // 2) Wait for conversion to be done
	data = ADC1_SSFIFO2_R & 0xFFF;
	ADC1_ISC_R = 0x0004;
		
	return(data);
}

int GetVolume(void){
	int slidepot = slidePot_Get();
	
	// Map this to 0 - 100
	int temp = (slidepot / 40);
	if(temp < 2){
		return(0);
	}
	else if (temp > 100){
		return(100);
	}
	else{
		return(temp - 1);
	}
}

void KeypadScan1(void);
void KeypadScan2(void);
void keypadDebouncer(void);


int RowData = 0x20;
int prevRowData = 0x08;
int RowNum = 0;
int ColNum = 0;
int pressed = 0;
int scanning = 0;
uint8_t set2 = 0;
///****************Keypad_Init***************
// Initializes a keypad on Ports PB0-PB6
void Keypad_Init(void){
	volatile unsigned long delay;

  SYSCTL_RCGCGPIO_R |= 0x00000002;  // 1) activate clock for Port B
  delay = SYSCTL_RCGCGPIO_R;        // allow time for clock to start
                                    // 2) no need to unlock GPIO Port C
  GPIO_PORTB_AMSEL_R = 0;      			// 3) disable analog on PB0-6
  GPIO_PORTB_PCTL_R = 0; 						// 4) PCTL GPIO on PC0-6
  GPIO_PORTB_DIR_R = 0x2B;       	 	// 5) direction PB2,4,6 input, PB0,1,3,5 output
  GPIO_PORTB_AFSEL_R &= ~0x7F;      // 6) PB0-6 regular port function
  GPIO_PORTB_DEN_R |= 0x7F;         // 7) enable PB0-6 digital port
	GPIO_PORTB_IS_R &= ~0x54;							// Edge-triggered interrupt
	GPIO_PORTB_IBE_R &= ~0x54;				// Not both edges
	GPIO_PORTB_IEV_R |= 0x54;					// Rising Edge Triggered
	GPIO_PORTB_ICR_R = 0x54;					// clear flags 2, 4, 6
	GPIO_PORTB_IM_R |= 0x54;					// interrupt synchronization
	
	NVIC_PRI0_R = (NVIC_PRI0_R & 0xFFFF00FF) | 0x00004000; //priority 5
	NVIC_EN0_R = 2; //enable interrupt 1 in NVIC
	Timer2A_Init(KeypadScan2,80000,6);
	GPIO_PORTB_ICR_R = 0x54;					// clear flags 2, 4, 6
}
int x;
void GPIOPortB_Handler(void){
	x = GPIO_PORTB_RIS_R;
	if(!pressed&&!scanning&&!set2){
		pressed = 1;
		Timer2A_Stop();	
		Timer3A_Init(keypadDebouncer, 1600000, 6);
		if((GPIO_PORTB_RIS_R & 0x04) != 0){
			ColNum = 3;
		}
		else if((GPIO_PORTB_RIS_R & 0x10) != 0){
			ColNum = 1;
		} 
		else if((GPIO_PORTB_RIS_R & 0x40) != 0){
			ColNum = 2;
		}
		set2 = 1;
		
	}
	else
		x = 0;
	GPIO_PORTB_ICR_R  = 0x54;

}

void KeypadScan1(void) {
	int temp = GPIO_PORTB_DATA_R;
	if((GPIO_PORTB_DATA_R & ~0x2B) == 0){
		Timer2A_Stop();
		Timer3A_Init(keypadDebouncer, 1600000, 6);
		pressed = 1;
		set2 = 0;
	}
}


void KeypadScan2(void) {
	scanning = 1;
	if(!set2){
		GPIO_PORTB_DATA_R &= ~prevRowData;
		prevRowData = RowData;
		if(RowData == 0x20){
			RowData = 0x01;
			RowNum = 1;
		}
		else if(RowData == 0x01){
			RowData = 0x02;
			RowNum = 2;
		}
		else if(RowData == 0x02){
			RowData = 0x08;
			RowNum = 3;
		}
		else{
			RowData = 0x20;
			RowNum = 4;
		}
		GPIO_PORTB_DATA_R |= prevRowData;
	}
	scanning = 0;
}

void keypadDebouncer(void){
	pressed = 0;
	Timer3A_Stop();
	if(set2)
		Timer2A_Init(KeypadScan1,40000,6);
	else
		Timer2A_Init(KeypadScan2,80000,6);
}

///****************Buttons_Get***************
// Reads the values of all 5 buttons
int Buttons_Get(void){
	return -1;
}

///****************Keypad_Get***************
// Reads the values of the KeyPad
int Keypad_Get(void){
	if(ColNum == 0) return -1;
	int ret = -1;
	if(RowNum == 1){
		if(ColNum == 1) ret = 1;
		if(ColNum == 2) ret = 2;
		if(ColNum == 3) ret = 3;
	}	
	if(RowNum == 2){
		if(ColNum == 1) ret = 4;
		if(ColNum == 2) ret = 5;
		if(ColNum == 3) ret = 6;
	}
	if(RowNum == 3){
		if(ColNum == 1) ret = 7;
		if(ColNum == 2) ret = 8;
		if(ColNum == 3) ret = 9;
	}
	if(RowNum == 4){
		if(ColNum == 1) ret = 10;
		if(ColNum == 2) ret = 0;
		if(ColNum == 3) ret = 11;
	}
	ColNum = 0;
	return ret;
}