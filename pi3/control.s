.global gpio_set_output
.global gpio_set_high
.global gpio_set_low

// Set GPIO pin 21 to output
gpio_set_output:                           
ldr R4, =0b00000000000000000000000000001000         
str R4, [R0]  
bx lr                                  
gpio_set_high:                          
ldr R4, =0b00000000001000000000000000000000         
str R4, [R1]                                    
bx lr
gpio_set_low:
ldr R4, =0b00000000001000000000000000000000         
str R4, [R3]
bx lr
