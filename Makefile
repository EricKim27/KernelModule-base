KDIR := /usr/src/kernels/$(shell uname -r)
PWD := $(shell pwd)
SRC := $(wildcard src/*.c)
obj-m := sc_log.o
sc_log-objs := src/main.o src/entry.o
ccflags-y += -I$(PWD)/include
CC := gcc

all:
	make -C $(KDIR) M=$(PWD) EXTRA_CFLAGS="-I$(PWD)/include" modules

clean:
	make -C $(KDIR) M=$(PWD) clean