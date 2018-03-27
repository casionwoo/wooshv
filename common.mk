#
# Common Definition
#

SHELL := bash
BASH ?= bash
ROOT ?= $(shell pwd)


#
# Path of each projects
#

QEMU_PATH		?= $(ROOT)/qemu
BAREMETAL_PATH	?= $(ROOT)/aarch64-bare-metal-qemu
TOOLCHAIN_PATH	?= $(ROOT)/toolchains
