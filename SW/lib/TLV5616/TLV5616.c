/**
 * @file TLV5616.c
 * @author your name (you@domain.com)
 * @brief Low level driver for the TLV5616 12-bit SPI DAC.
 * @version 0.1
 * @date 2022-02-11
 *
 * @copyright Copyright (c) 2022
 * @note Reference datasheet:
 *     https://www.ti.com/lit/ds/symlink/tlv5616.pdf?ts=1644622732627&ref_url=https%253A%252F%252Fwww.ti.com%252Fproduct%252FTLV5616
 */

#include "./lib/TLV5616/TLV5616.h"

int TLV5616_Init() {
    return 1;
}

int TLV5616_Output(uint16_t data) {
    return 1;
}
