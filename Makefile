CC=gcc
CFLAGS=-Wall -g
BIN=main
SUBDIR=$(shell ls -d */)
ROOTSRC=$(wildcard *.c)
ROOTOBJ=$(ROOTSRC:%.c=%.o)
SUBSRC=$(shell find $(SUBDIR) -name '*.c')
SUBOBJ=$(SUBSRC:%.c=%.o)
$(BIN):$(ROOTOBJ) $(SUBOBJ)
	$(CC) $(CFLAGS) -o $(BIN) $(ROOTOBJ)  $(SUBOBJ)
.c.o:
	$(CC) $(CFLAGS) -c $< -o $@
clean:
	rm -f $(BIN) $(ROOTOBJ) $(SUBOBJ)
