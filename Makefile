include common.mk
include toolchain.mk

osname := $(shell uname -s)

ROOT_DIR=$(curr)

CROSS_PREFIX=../toolchains/gcc-linaro-7.2.1-2017.11-x86_64_aarch64-elf/bin/aarch64-elf-

QEMU_AARCH64=$(QEMU_PATH)/aarch64-softmmu

WOOSHV_BIN=$(WOOSHV_PATH)/test64.elf

all:	\
	qemu_ wooshv
clean:	\
	qemu-clean wooshv-clean

qemu_:
	cd $(QEMU_PATH); ./configure --target-list=aarch64-softmmu $(QEMU_CONFIGURE_PARAMS_COMMON)
	$(MAKE) -C $(QEMU_PATH)

qemu-clean:
	$(MAKE) -C $(QEMU_PATH) distclean


wooshv:
	$(MAKE) -C $(WOOSHV_PATH)

wooshv-clean:
	$(MAKE) -C $(WOOSHV_PATH) clean

run: all
	$(MAKE) run-only

run-only:
	$(QEMU_AARCH64)/qemu-system-aarch64 -M virt -cpu cortex-a57 -nographic  -kernel $(WOOSHV_BIN)

