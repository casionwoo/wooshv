osname := $(shell uname -s)

CROSS_PREFIX=../toolchains/gcc-linaro-7.2.1-2017.11-x86_64_aarch64-elf/bin/aarch64-elf-

all: test64.elf

test64.o: test64.c
	$(CROSS_PREFIX)gcc -c $< -o $@

startup64.o: startup64.s
	$(CROSS_PREFIX)as -c $< -o $@

test64.elf: test64.o startup64.o
	$(CROSS_PREFIX)ld -Ttest64.ld $^ -o $@

test64.bin: test64.elf
	$(CROSS_PREFIX)objcopy -O binary $< $@

clean:
	rm -f test65.bin test64.elf startup64.o test64.o
