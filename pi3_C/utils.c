#include "utils.h"

void delay(unsigned int count) {
    for (unsigned int i = 0; i < count; i++) {
        for (unsigned int j = 0; j < 40000; j++) {
            asm volatile("nop");
        }
    }
}

