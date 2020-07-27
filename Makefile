CFLAGS=-std=c11 -g -static -fno-common
SRCS=$(wildcard *.c)
OBJS=$(SRCS:.c=.o)

Encc: $(OBJS)
		$(CC) -o $@ $(OBJS) $(LDFLAGS)

$(OBJS): Encc.h

test: Encc
		./test.sh

clean:
		rm -f Encc *.o *~ tmp*

.PHONY: test clean
