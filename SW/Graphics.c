#include <Graphics.h>
#include <stdint.h>
/* ST7735 display. */
#include "./inc/ST7735.h"

// Handy definitions

const uint16_t Colors[13] = {0x0000, 0x001F, 0x047F,
	0x07FF, 0x32BF, 0xFFFF, 0x07E0, 0x87D0, 0xF671,
	0xFC83, 0xF800, 0xE41D, 0x90BF};

// Helper functions

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

// Put Drawings Here
void DrawFirstNote(uint32_t note, uint32_t magnitude){
	// Clear the last note here...
	ST7735_FillRect(16, 28, 40, 40, ST7735_Color565(0, 0, 0)); // Fill it black
	
	if(note != 0){
			// Initialize the letters
		char this_halfstep = '/';
		char this_magnitude = '/';
		char this_pitch = '/';
		this_pitch = noteToChars(note, magnitude, &this_halfstep, &this_magnitude);
	
		// Determine color
		uint16_t color = Colors[note];
	
		if(this_pitch != '/'){
			ST7735_DrawCharS(16, 30, this_pitch, color, ST7735_Color565(0, 0, 0), 4); // Draw the pitch
		}
		if(this_halfstep != '/'){
			ST7735_DrawCharS(42, 46,this_halfstep, color, ST7735_Color565(0, 0, 0), 2); // Draw half step
		}
		if(this_magnitude != '/'){
			ST7735_DrawCharS(42, 28,this_magnitude, color, ST7735_Color565(0, 0, 0), 2); // Draw magnitude
		}
	}
	


}
void DrawSecondNote(uint32_t note, uint32_t magnitude){
	// Clear the last note here...
	ST7735_FillRect(76, 28, 40, 40, ST7735_Color565(0, 0, 0)); // Fill it black
	
	if(note != 0){
			// Initialize the letters
		char this_halfstep = '/';
		char this_magnitude = '/';
		char this_pitch = '/';
		this_pitch = noteToChars(note, magnitude, &this_halfstep, &this_magnitude);
	
		// Determine color
		uint16_t color = Colors[note];
	
		if(this_pitch != '/'){
			ST7735_DrawCharS(76, 30, this_pitch, color, ST7735_Color565(0, 0, 0), 4); // Draw the pitch
		}
		if(this_halfstep != '/'){
			ST7735_DrawCharS(102, 46,this_halfstep, color, ST7735_Color565(0, 0, 0), 2); // Draw half step
		}
		if(this_magnitude != '/'){
		ST7735_DrawCharS(102, 28,this_magnitude, color, ST7735_Color565(0, 0, 0), 2); // Draw magnitude
		}
	}
	

}

void DrawThirdNote(uint32_t note, uint32_t magnitude){
	// Clear the last note here...
		// Clear the last note here...
	ST7735_FillRect(16, 78, 40, 40, ST7735_Color565(0, 0, 0)); // Fill it black
	
	if(note != 0){
			// Initialize the letters
		char this_halfstep = '/';
		char this_magnitude = '/';
		char this_pitch = '/';
		this_pitch = noteToChars(note, magnitude, &this_halfstep, &this_magnitude);
	
		// Determine color
		uint16_t color = Colors[note];
	
		if(this_pitch != '/'){
			ST7735_DrawCharS(16, 80, this_pitch, color, ST7735_Color565(0, 0, 0), 4); // Draw the pitch
		}
		if(this_halfstep != '/'){
			ST7735_DrawCharS(42, 96,this_halfstep, color, ST7735_Color565(0, 0, 0), 2); // Draw half step
		}
		if(this_magnitude != '/'){
			ST7735_DrawCharS(42, 78,this_magnitude, color, ST7735_Color565(0, 0, 0), 2); // Draw magnitude
		}
	}
	

}

void DrawFourthNote(uint32_t note, uint32_t magnitude){
	// Clear the last note here...
		// Clear the last note here...
	ST7735_FillRect(76, 78, 40, 40, ST7735_Color565(0, 0, 0)); // Fill it black
	
	if(note != 0){
			// Initialize the letters
		char this_halfstep = '/';
		char this_magnitude = '/';
		char this_pitch = '/';
		this_pitch = noteToChars(note, magnitude, &this_halfstep, &this_magnitude);
	
		// Determine color
		uint16_t color = Colors[note];
	
		if(this_pitch != '/'){
			ST7735_DrawCharS(76, 80, this_pitch, color, ST7735_Color565(0, 0, 0), 4); // Draw the pitch
		}
		if(this_halfstep != '/'){
			ST7735_DrawCharS(102, 96,this_halfstep, color, ST7735_Color565(0, 0, 0), 2); // Draw half step
		}
		if(this_magnitude != '/'){
			ST7735_DrawCharS(102, 78,this_magnitude, color, ST7735_Color565(0, 0, 0), 2); // Draw magnitude
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
	
	ST7735_FillRect(0, 140, 128, 20, ST7735_Color565(0, 0, 0)); // Fill it black
	
	// Display the left side
	ST7735_DrawCharS(0, 140, 'M', ST7735_Color565(255, 255, 0), 0x0000, 2);
	ST7735_DrawCharS(15, 140, 'E', ST7735_Color565(255, 255, 0), 0x0000, 2);
	ST7735_DrawCharS(30, 140, 'T', ST7735_Color565(255, 255, 0), 0x0000, 2);
	ST7735_DrawCharS(45, 140, ':', ST7735_Color565(255, 255, 0), 0x0000, 2);
	
	uint32_t temp_tempo = tempo;
	
	// Display the right side
	char hundred = '/';
	char ten = '/';
	char one = '/';
	
	one = IntegerToChar(temp_tempo % 10);
	temp_tempo = temp_tempo - (temp_tempo % 10);
	ten = IntegerToChar((temp_tempo % 100)/10);
	temp_tempo = temp_tempo - ((temp_tempo % 100)/100);
	hundred = IntegerToChar((temp_tempo)/100);
	
	// Find out where the number starts
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
			// The number is all zeros
			ST7735_DrawCharS(115, 140, '0', ST7735_Color565(255, 255, 0), 0x0000, 2);
			
		break;
		
		case 1:
			// The number has 3 digits
			ST7735_DrawCharS(115, 140, one, ST7735_Color565(255, 255, 0), 0x0000, 2);
			ST7735_DrawCharS(100, 140, ten, ST7735_Color565(255, 255, 0), 0x0000, 2);
			ST7735_DrawCharS(85, 140, hundred, ST7735_Color565(255, 255, 0), 0x0000, 2);
			
		break;
		
		case 2:
			// The number has two digits
			ST7735_DrawCharS(115, 140, one, ST7735_Color565(255, 255, 0), 0x0000, 2);
			ST7735_DrawCharS(100, 140, ten, ST7735_Color565(255, 255, 0), 0x0000, 2);
			
		break;
		
		case 3:
			// The number has 1 digit
			ST7735_DrawCharS(115, 140, one, ST7735_Color565(255, 255, 0), 0x0000, 2);
		break;
		
	}
	
}

void FlipMetronomeOff(void){
	ST7735_FillRect(0, 140, 128, 20, ST7735_Color565(0, 0, 0)); // Fill it black
	
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
	ST7735_FillScreen(ST7735_BLACK); // Clear the entire screen
	songSelect = 0; // Default
	
	// Display which song menu this is
	ST7735_DrawCharS(36 ,0, 'S', ST7735_Color565(0, 0, 255), 0x0000, 2);
	ST7735_DrawCharS(48,0, 'o', ST7735_Color565(0, 0, 255), 0x0000, 2);
	ST7735_DrawCharS(60,0, 'n', ST7735_Color565(0, 0, 255), 0x0000, 2);
	ST7735_DrawCharS(72,0, 'g', ST7735_Color565(0, 0, 255), 0x0000, 2);
	ST7735_DrawCharS(84,0, 's', ST7735_Color565(0, 0, 255), 0x0000, 2);
	
	
	// Display the selector arrow
	ST7735_DrawCharS(6, 24, '>', ST7735_Color565(0, 255, 0), 0x0000, 1); // 0
	// Entire range
//	ST7735_DrawCharS(6, 36, '>', ST7735_Color565(255, 0, 0), 0x0000, 1); // 1
//	ST7735_DrawCharS(6, 48, '>', ST7735_Color565(255, 0, 0), 0x0000, 1); // 2
//	ST7735_DrawCharS(6, 60, '>', ST7735_Color565(255, 0, 0), 0x0000, 1); // 3
//	ST7735_DrawCharS(6, 72, '>', ST7735_Color565(255, 0, 0), 0x0000, 1); // 4
//	ST7735_DrawCharS(6, 84, '>', ST7735_Color565(255, 0, 0), 0x0000, 1); // 5
//	ST7735_DrawCharS(6, 96, '>', ST7735_Color565(255, 0, 0), 0x0000, 1); // 6
//	ST7735_DrawCharS(6, 108, '>', ST7735_Color565(255, 0, 0), 0x0000, 1); //7 
//	ST7735_DrawCharS(6, 120, '>', ST7735_Color565(255, 0, 0), 0x0000, 1); // 8 
//	ST7735_DrawCharS(6, 132, '>', ST7735_Color565(255, 0, 0), 0x0000, 1); // 9
//	ST7735_DrawCharS(6, 144, '>', ST7735_Color565(255, 0, 0), 0x0000, 1); // 10

	// Display the Exit dialogue
	ST7735_DrawCharS(24, 144, 'E', ST7735_Color565(0, 255, 0), 0x0000, 1);
	ST7735_DrawCharS(30, 144, 'x', ST7735_Color565(0, 255, 0), 0x0000, 1);
	ST7735_DrawCharS(36, 144, 'i', ST7735_Color565(0, 255, 0), 0x0000, 1); 
	ST7735_DrawCharS(42, 144, 't', ST7735_Color565(0, 255, 0), 0x0000, 1);  	
	
	// ** Here are the songs available to the MusicGloves! ** //
	
	// Display the Song of Storms
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
	
	
	// Display Fairy Fountain
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
	
	// Display Dire Dire Docks
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
	// Erase the SongArrow on the screen
	ST7735_FillRect(6, 12*songSelect + 24, 5, 8, 0x0000);
	
	songSelect ++;
	// Is is out of range?
	if(songSelect > 10){
		// Loop back
		songSelect = 0;
	}
	
	// Print out the new SongArrow on the screen
	ST7735_DrawCharS(6, 12*songSelect + 24, '>', ST7735_Color565(0, 255, 0), 0x0000, 1);
}

void MoveSongArrowUp(void){
	// Erase the SongArrow on the screen
	ST7735_FillRect(6, 12*songSelect + 24, 5, 8, 0x0000);
	
	songSelect --;
	// Is it out of range?
	if(songSelect < 0){
		// Loop back
		songSelect = 10;
	}
	
	// Print out the new SongArrow on the screen
	ST7735_DrawCharS(6, 12*songSelect + 24, '>', ST7735_Color565(0, 255, 0), 0x0000, 1);
}

void DisplayNowPlaying(void){
	
		switch(songSelect){
			case 0:
					// Display the Song of Storms
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
			
			// Code hasn't been written for this song yet so nothing happens
			default:
				
			break;
		}
}


void ClearOutNowPlaying(void){
	ST7735_FillRect(0, 0, 128, 10, 0);
}

void DrawInstrumentMenu(void){
	// Clear the previous screen
	ST7735_FillScreen(ST7735_BLACK); // Clear the entire screen
	instrumentSelect = 0;
	
	// Display which song menu this is
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
	
		// Display the selector arrow
	ST7735_DrawCharS(6, 24, '>', ST7735_Color565(0, 255, 0), 0x0000, 1); // 0
	// Entire range
//	ST7735_DrawCharS(6, 36, '>', ST7735_Color565(255, 0, 0), 0x0000, 1); // 1
//	ST7735_DrawCharS(6, 48, '>', ST7735_Color565(255, 0, 0), 0x0000, 1); // 2
//	ST7735_DrawCharS(6, 60, '>', ST7735_Color565(255, 0, 0), 0x0000, 1); // 3
//	ST7735_DrawCharS(6, 72, '>', ST7735_Color565(255, 0, 0), 0x0000, 1); // 4
//	ST7735_DrawCharS(6, 84, '>', ST7735_Color565(255, 0, 0), 0x0000, 1); // 5
//	ST7735_DrawCharS(6, 96, '>', ST7735_Color565(255, 0, 0), 0x0000, 1); // 6
//	ST7735_DrawCharS(6, 108, '>', ST7735_Color565(255, 0, 0), 0x0000, 1); //7 
//	ST7735_DrawCharS(6, 120, '>', ST7735_Color565(255, 0, 0), 0x0000, 1); // 8 
//	ST7735_DrawCharS(6, 132, '>', ST7735_Color565(255, 0, 0), 0x0000, 1); // 9
//	ST7735_DrawCharS(6, 144, '>', ST7735_Color565(255, 0, 0), 0x0000, 1); // 10

	// Display the Exit dialogue
	ST7735_DrawCharS(24, 144, 'E', ST7735_Color565(0, 255, 0), 0x0000, 1);
	ST7735_DrawCharS(30, 144, 'x', ST7735_Color565(0, 255, 0), 0x0000, 1);
	ST7735_DrawCharS(36, 144, 'i', ST7735_Color565(0, 255, 0), 0x0000, 1); 
	ST7735_DrawCharS(42, 144, 't', ST7735_Color565(0, 255, 0), 0x0000, 1);  	
	
	// ** Here are the instruments available to the MusicGloves! ** //
	
	// Display the Flute
	ST7735_DrawCharS(24, 24, 'F', ST7735_Color565(255, 0, 0), 0x0000, 1);
	ST7735_DrawCharS(30, 24, 'l', ST7735_Color565(255, 0, 0), 0x0000, 1);
	ST7735_DrawCharS(36, 24, 'u', ST7735_Color565(255, 0, 0), 0x0000, 1);
	ST7735_DrawCharS(42, 24, 't', ST7735_Color565(255, 0, 0), 0x0000, 1);
	ST7735_DrawCharS(48, 24, 'e', ST7735_Color565(255, 0, 0), 0x0000, 1);
	
	// Display the Trumpet
	ST7735_DrawCharS(24, 36, 'T', ST7735_Color565(255, 0, 0), 0x0000, 1);
	ST7735_DrawCharS(30, 36, 'r', ST7735_Color565(255, 0, 0), 0x0000, 1);
	ST7735_DrawCharS(36, 36, 'u', ST7735_Color565(255, 0, 0), 0x0000, 1);
	ST7735_DrawCharS(42, 36, 'm', ST7735_Color565(255, 0, 0), 0x0000, 1);
	ST7735_DrawCharS(48, 36, 'p', ST7735_Color565(255, 0, 0), 0x0000, 1);
	ST7735_DrawCharS(54, 36, 'e', ST7735_Color565(255, 0, 0), 0x0000, 1);
	ST7735_DrawCharS(60, 36, 't', ST7735_Color565(255, 0, 0), 0x0000, 1);
	
	// Display the Bassoon
	ST7735_DrawCharS(24, 48, 'B', ST7735_Color565(255, 0, 0), 0x0000, 1);
	ST7735_DrawCharS(30, 48, 'a', ST7735_Color565(255, 0, 0), 0x0000, 1);
	ST7735_DrawCharS(36, 48, 's', ST7735_Color565(255, 0, 0), 0x0000, 1);
	ST7735_DrawCharS(42, 48, 's', ST7735_Color565(255, 0, 0), 0x0000, 1);
	ST7735_DrawCharS(48, 48, 'o', ST7735_Color565(255, 0, 0), 0x0000, 1);
	ST7735_DrawCharS(54, 48, 'o', ST7735_Color565(255, 0, 0), 0x0000, 1);
	ST7735_DrawCharS(60, 48, 'n', ST7735_Color565(255, 0, 0), 0x0000, 1);
	
	// Display the Horn
	ST7735_DrawCharS(24, 60, 'H', ST7735_Color565(255, 0, 0), 0x0000, 1);
	ST7735_DrawCharS(30, 60, 'o', ST7735_Color565(255, 0, 0), 0x0000, 1);
	ST7735_DrawCharS(36, 60, 'r', ST7735_Color565(255, 0, 0), 0x0000, 1);
	ST7735_DrawCharS(42, 60, 'n', ST7735_Color565(255, 0, 0), 0x0000, 1);
	
	// Display the Piano
	ST7735_DrawCharS(24, 72, 'P', ST7735_Color565(255, 0, 0), 0x0000, 1);
	ST7735_DrawCharS(30, 72, 'i', ST7735_Color565(255, 0, 0), 0x0000, 1);
	ST7735_DrawCharS(36, 72, 'a', ST7735_Color565(255, 0, 0), 0x0000, 1);
	ST7735_DrawCharS(42, 72, 'n', ST7735_Color565(255, 0, 0), 0x0000, 1);
	ST7735_DrawCharS(48, 72, 'o', ST7735_Color565(255, 0, 0), 0x0000, 1);
	
	// Display the Guitar
	ST7735_DrawCharS(24, 84, 'G', ST7735_Color565(255, 0, 0), 0x0000, 1);
	ST7735_DrawCharS(30, 84, 'u', ST7735_Color565(255, 0, 0), 0x0000, 1);
	ST7735_DrawCharS(36, 84, 'i', ST7735_Color565(255, 0, 0), 0x0000, 1);
	ST7735_DrawCharS(42, 84, 't', ST7735_Color565(255, 0, 0), 0x0000, 1);
	ST7735_DrawCharS(48, 84, 'a', ST7735_Color565(255, 0, 0), 0x0000, 1);
	ST7735_DrawCharS(54, 84, 'r', ST7735_Color565(255, 0, 0), 0x0000, 1);
	
	// Display the Oboe
	ST7735_DrawCharS(24, 96, 'O', ST7735_Color565(255, 0, 0), 0x0000, 1);
	ST7735_DrawCharS(30, 96, 'b', ST7735_Color565(255, 0, 0), 0x0000, 1);
	ST7735_DrawCharS(36, 96, 'o', ST7735_Color565(255, 0, 0), 0x0000, 1);
	ST7735_DrawCharS(42, 96, 'e', ST7735_Color565(255, 0, 0), 0x0000, 1);
	
}

void MoveInstrumentArrowDown(void){
	// Erase the SongArrow on the screen
	ST7735_FillRect(6, 12*instrumentSelect + 24, 5, 8, 0x0000);
	
	instrumentSelect ++;
	// Is is out of range?
	if(instrumentSelect > 10){
		// Loop back
		instrumentSelect = 0;
	}
	
	// Print out the new SongArrow on the screen
	ST7735_DrawCharS(6, 12*instrumentSelect + 24, '>', ST7735_Color565(0, 255, 0), 0x0000, 1);
}

void MoveInstrumentArrowUp(void){
	// Erase the SongArrow on the screen
	ST7735_FillRect(6, 12*instrumentSelect + 24, 5, 8, 0x0000);
	
	instrumentSelect --;
	// Is it out of range?
	if(instrumentSelect < 0){
		// Loop back
		instrumentSelect = 10;
	}
	
	// Print out the new SongArrow on the screen
	ST7735_DrawCharS(6, 12*instrumentSelect + 24, '>', ST7735_Color565(0, 255, 0), 0x0000, 1);
}

void DisplayInstrPlaying(void){
	
		switch(instrumentSelect){
			case 0:
					// Display the Flute
				ST7735_DrawCharS(0, 10, 'F', ST7735_Color565(0, 255, 0), 0x0000, 1);
				ST7735_DrawCharS(6, 10, 'l', ST7735_Color565(0, 255, 0), 0x0000, 1);
				ST7735_DrawCharS(12, 10, 'u', ST7735_Color565(0, 255, 0), 0x0000, 1);
				ST7735_DrawCharS(18, 10, 't', ST7735_Color565(0, 255, 0), 0x0000, 1);
				ST7735_DrawCharS(24, 10, 'e', ST7735_Color565(0, 255, 0), 0x0000, 1);
			break;
					// Display the Trumpet
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
				// Display Bassoon
				ST7735_DrawCharS(0, 10, 'B', ST7735_Color565(255, 0, 0), 0x0000, 1);
				ST7735_DrawCharS(6, 10, 'a', ST7735_Color565(255, 0, 0), 0x0000, 1);
				ST7735_DrawCharS(12, 10, 's', ST7735_Color565(255, 0, 0), 0x0000, 1);
				ST7735_DrawCharS(18, 10, 's', ST7735_Color565(255, 0, 0), 0x0000, 1);
				ST7735_DrawCharS(24, 10, 'o', ST7735_Color565(255, 0, 0), 0x0000, 1);
				ST7735_DrawCharS(30, 10, 'o', ST7735_Color565(255, 0, 0), 0x0000, 1);
				ST7735_DrawCharS(36, 10, 'n', ST7735_Color565(255, 0, 0), 0x0000, 1);
			break;
			
			case 3:
				// Display Horn
				ST7735_DrawCharS(0, 10, 'H', ST7735_Color565(255, 0, 0), 0x0000, 1);
				ST7735_DrawCharS(6, 10, 'o', ST7735_Color565(255, 0, 0), 0x0000, 1);
				ST7735_DrawCharS(12, 10, 'r', ST7735_Color565(255, 0, 0), 0x0000, 1);
				ST7735_DrawCharS(18, 10, 'n', ST7735_Color565(255, 0, 0), 0x0000, 1);
			break;
			
			case 4:
				// Display Piano
				ST7735_DrawCharS(0, 10, 'P', ST7735_Color565(255, 0, 0), 0x0000, 1);
				ST7735_DrawCharS(6, 10, 'i', ST7735_Color565(255, 0, 0), 0x0000, 1);
				ST7735_DrawCharS(12, 10, 'a', ST7735_Color565(255, 0, 0), 0x0000, 1);
				ST7735_DrawCharS(18, 10, 'n', ST7735_Color565(255, 0, 0), 0x0000, 1);
				ST7735_DrawCharS(24, 10, 'o', ST7735_Color565(255, 0, 0), 0x0000, 1);
			break;
			
			case 5:
				// Display Guitar
				ST7735_DrawCharS(0, 10, 'G', ST7735_Color565(255, 0, 0), 0x0000, 1);
				ST7735_DrawCharS(6, 10, 'u', ST7735_Color565(255, 0, 0), 0x0000, 1);
				ST7735_DrawCharS(12, 10, 'i', ST7735_Color565(255, 0, 0), 0x0000, 1);
				ST7735_DrawCharS(18, 10, 't', ST7735_Color565(255, 0, 0), 0x0000, 1);
				ST7735_DrawCharS(24, 10, 'a', ST7735_Color565(255, 0, 0), 0x0000, 1);
				ST7735_DrawCharS(30, 10, 'r', ST7735_Color565(255, 0, 0), 0x0000, 1);
			break;
			
			case 6:
				// Display Oboe
				ST7735_DrawCharS(0, 10, 'O', ST7735_Color565(255, 0, 0), 0x0000, 1);
				ST7735_DrawCharS(6, 10, 'b', ST7735_Color565(255, 0, 0), 0x0000, 1);
				ST7735_DrawCharS(12, 10, 'o', ST7735_Color565(255, 0, 0), 0x0000, 1);
				ST7735_DrawCharS(18, 10, 'e', ST7735_Color565(255, 0, 0), 0x0000, 1);
			break;
			
			// Code hasn't been written for this song yet so nothing happens
			default:
				
			break;
		}
}


void ClearOutInstrPlaying(void){
	ST7735_FillRect(0, 10, 128, 10, 0);
}



