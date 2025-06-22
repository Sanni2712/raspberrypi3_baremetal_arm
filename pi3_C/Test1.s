.global _start

_start:
    // Set up stack pointer (assuming stack grows down from 0x8000)
    ldr sp, =0x8000

    // Call main finction from main.c
    bl main

