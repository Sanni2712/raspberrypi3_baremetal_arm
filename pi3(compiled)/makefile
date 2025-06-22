all: kernel.img

kernel.img: test1.o control.o delay.o
	arm-none-eabi-ld -T kernel.ld -o kernel.elf test1.o control.o delay.o
	arm-none-eabi-objcopy kernel.elf -O binary kernel.img

%.o: %.s
	arm-none-eabi-as -o $@ $<

clean:
	rm -f *.o *.elf *.img
