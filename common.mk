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
WOOSHV_PATH		?= $(ROOT)/wooshv
TOOLCHAIN_PATH	?= $(ROOT)/toolchains
