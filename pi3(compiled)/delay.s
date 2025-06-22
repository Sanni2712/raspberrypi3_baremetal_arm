.global delay1



delay1:                           
		ldr R2, =0x400000      
                mov R10, #0

loop:                           
		add R10, R10, #2
		cmp R10, R2
		bne loop
bx lr                                  