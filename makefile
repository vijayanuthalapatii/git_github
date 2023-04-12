CC = gcc
CFLAGS = -Wall -Werror

all: add sub

add: add.o
	$(CC) -o add add.o

sub: sub.o
	$(CC) -o sub sub.o

add.o: add.c
	$(CC) $(CFLAGS) -c add.c

sub.o: sub.c
	$(CC) $(CFLAGS) -c sub.c

clean:
	rm -f add sub add.o sub.o

