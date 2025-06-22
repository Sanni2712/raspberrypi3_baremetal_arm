#include "utils.h"

void main(void) {


    unsigned int a = 50;
    volatile unsigned int* gpio_fsel = (unsigned int*)0x3F200008;      // address of GPFSEL2 - GPIO 20 – 29 - 0x3F200008
    volatile unsigned int* gpio_high  = (unsigned int*)0x3F20001C;  //adddress of GPSET0 - 0x3F20001C
    volatile unsigned int* gpio_low  = (unsigned int*)0x3F200028;  //address of GPCLR0 - 0x3F200028
    *gpio_fsel = 0b00000000000000000000000000001001; 

 
    while (1) {                  // loop
    *gpio_high  = (1 << 21);
    *gpio_low  = (1 << 20); 
     delay(a);
    *gpio_low  = (1 << 21); 
    *gpio_high  = (1 << 20); 
     delay(a);
    }
}
