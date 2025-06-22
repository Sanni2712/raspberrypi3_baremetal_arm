.section .text
.global _start
.extern gpio_set_output
.extern gpio_set_high
.extern gpio_set_low
.extern delay1

_start:
    ldr R0, =0x3F200008
    ldr R1, =0x3F20001C        //high
    ldr R3, =0x3F200028       //low
    BL gpio_set_output      // call function to set pin as output
    
loop:
    BL gpio_set_high
    
    mov R10, #0
    BL delay1
    BL gpio_set_low
    mov R10, #0
    BL delay1
    B loop
