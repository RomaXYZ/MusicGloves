// FlexSensor.h

#include <stdint.h>
#include "./inc/ADCSWTrigger.h"

void Flex_Init(void);
uint32_t Flex_Read(int sensor);
int Return_Note(void);
int Return_Chord(void);
int Return_Volume(void);

