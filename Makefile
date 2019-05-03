#
# Makefile for flashPiCC
#

CC?=gcc
CFLAGS?=
APP=flashPiCC
LIBS?=-lwiringPi

all: $(APP)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

OBJS=$(APP).o

$(APP): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) $(LIBS) -o $@

clean:
	rm -f *.o $(APP)
