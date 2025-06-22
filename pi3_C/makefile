all:
	arm-none-eabi-as test1.s -o test1.o
	arm-none-eabi-gcc -c main.c -o main.o -nostdlib -nostartfiles -ffreestanding -O2 -mcpu=arm1176jzf-s
	arm-none-eabi-gcc -c utils.c -o utils.o -nostdlib -nostartfiles -ffreestanding -O2 -mcpu=arm1176jzf-s
	arm-none-eabi-ld -T linker.ld -o kernel.elf test1.o main.o utils.o
	arm-none-eabi-objcopy kernel.elf -O binary kernel.img
