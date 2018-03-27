include common.mk

osname := $(shell uname -s)

ROOT_DIR=$(curr)

CROSS_PREFIX=../toolchains/gcc-linaro-7.2.1-2017.11-x86_64_aarch64-elf/bin/aarch64-elf-

QEMU_AARCH64=$(QEMU_PATH)/aarch64-softmmu

ELF_PATH=$(BAREMETAL_PATH)

run-only:
	$(QEMU_AARCH64)/qemu-system-aarch64 -M virt -cpu cortex-a57 -nographic  -kernel $(ELF_PATH)/test64.elf

clean:
	rm -f test65.bin test64.elf startup64.o test64.o
