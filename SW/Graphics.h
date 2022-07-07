#include <stdint.h>

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
