CFLAGS+=	-fno-builtin -g -Wall

all: strlen strchrnul

strlen: framework.o strtest.o strlen.o
	${CC} ${CFLAGS} ${LDFLAGS} -o $@ $> ${LDLIBS}

strchrnul: framework.o strtest.o strchrnul.o
	${CC} ${CFLAGS} ${LDFLAGS} -o $@ $> ${LDLIBS}

clean:
	rm -f *.o strlen

.PHONY: clean
