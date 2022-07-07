// FlexSensor.c

#include "FlexSensor.h"

uint32_t adc_data[3];

/* Initialize ADCs for flex sensors */
void Flex_Init(void){
	ADC_Init3210();
}

/* Return flex sensor data (input = 1,2,or 3)*/
uint32_t Flex_Read(int sensor){
	ADC_In3210(adc_data);
	uint32_t result = 0;
	
	switch(sensor){
		case 1:		// PE1
			result = adc_data[0];
			break;
		case 2:		// PE2
			result = adc_data[1];
			break;
		case 3:		// PE3
			result = adc_data[2];
			break;
		default:
			break;
	}
	
	return result;
}

int oldNote = 0;

/* Return flex sensor data (input = 1,2,or 3)*/
int Return_Note(void){
	
	ADC_In3210(adc_data);
	uint32_t noteNum = adc_data[0];
	uint32_t note = 0;
	
	if(noteNum<2700)
		note=0;
	else 
		note = (noteNum-2700)/110;
	if(note>11)
		note = 11;
	
	if(oldNote-note==1){
		noteNum+=20;
		if(noteNum<2700)
			note=0;
		else 
			note = (noteNum-2700)/110;
		if(note>11)
			note = 11;
	}
	else if(oldNote-note==-1){
		noteNum-=20;
		if(noteNum<2700)
			note=0;
		else 
			note = (noteNum-2700)/110;
		if(note>11)
			note = 11;
	}
	
	oldNote = note;
	
	return note;
}

int oldChord = 0;
//int realChords[16] = {0,0,1,2,2,3,3,4,5,6,6,7,8,9,10,10};
///* Return flex sensor data (input = 1,2,or 3)*/
//int Return_Chord(void){
//	
//	ADC_In3210(adc_data);
//	uint32_t chordNum = adc_data[1];
//	uint32_t chord = 0;
//	
//	if(chordNum<2500)
//		chord=0;
//	else
//		chord = (chordNum-2500)/106;
//	if(chord>15)
//		chord = 15;
//	
//	if(oldChord-chord==1){
//		chordNum+=20;
//		if(chordNum<2500)
//			chord=0;
//		else
//			chord = (chordNum-2500)/106;
//		if(chord>15)
//			chord = 15;
//	}
//	else if(oldChord-chord==-1){
//		chordNum-=20;
//		if(chordNum<2500)
//			chord=0;
//		else
//			chord = (chordNum-2500)/106;
//		if(chord>15)
//			chord = 15;
//	}
//	
//	oldChord = chord;
//	
//	return realChords[chord];
//}


/* Return flex sensor data (input = 1,2,or 3)*/
int Return_Chord(void){
	
	ADC_In3210(adc_data);
	uint32_t chordNum = adc_data[1];
	uint32_t chord = 0;
	
	if(chordNum<2700)
		chord=0;
	else
		chord = (chordNum-2700)/225;
	if(chord>5)
		chord = 5;
	
	if(oldChord-chord==1){
		chordNum+=40;
		if(chordNum<2700)
			chord=0;
		else
			chord = (chordNum-2700)/225;
		if(chord>5)
			chord = 5;
	}
	else if(oldChord-chord==-1){
		chordNum-=40;
		if(chordNum<2700)
			chord=0;
		else
			chord = (chordNum-2700)/225;
		if(chord>5)
			chord = 5;
	}
	
	oldChord = chord;
	
	return chord;
}

/* Return flex sensor data (input = 1,2,or 3)*/
int Return_Volume(void){
	
	ADC_In3210(adc_data);
	uint32_t volNum = adc_data[2];
	uint32_t vol = 0;
	
	if(volNum<3200)
		vol=100;
	else if(volNum>3600)
		vol = 50;
	else
		vol = (3600-volNum)/2;

	
	
	return vol;
}

