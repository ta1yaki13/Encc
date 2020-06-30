CFLAGS=-std=c11 -g -static

Encc: Encc.c

test: Encc
		./test.sh

clean:
		rm -f Encc *.o *~ tmp*

.PHONY: test clean
