#include <stdint.h>

void addColor(uint8_t red, uint8_t green, uint8_t blue);

void NeoPixel_Init(void);

void printBuffer(void);

void SetNeoNotes(uint32_t note1, uint32_t note2, uint32_t note3, uint32_t note4);

void setBrightness(int volume);

void runNeoTest(void);

void sendreset(void);