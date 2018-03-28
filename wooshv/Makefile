osname := $(shell uname -s)

all: wooshv.elf

CROSS_PREFIX=../toolchains/gcc-linaro-7.2.1-2017.11-x86_64_aarch64-elf/bin/aarch64-elf-

main.o: main.c
	$(CROSS_PREFIX)gcc -c $< -o $@

head.o: head.s
	$(CROSS_PREFIX)as -c $< -o $@

wooshv.elf: main.o head.o
	$(CROSS_PREFIX)ld -Tkern.ld.S $^ -o $@

wooshv.bin: wooshv.elf
	$(CROSS_PREFIX)objcopy -O binary $< $@

clean:
	rm -f wooshv.bin wooshv.elf head.o main.o
