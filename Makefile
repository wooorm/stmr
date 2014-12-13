PREFIX ?= /usr/local

SRC = stmr-cli.c deps/stmr.c/stmr.c

OBJ_SRC = $(SRC:.c=.o)

CFLAGS = -D_GNU_SOURCE -std=c99 -I deps/stmr.c/

LFLAGS = -Wall -Wno-format-y2k -W -Wstrict-prototypes -Wmissing-prototypes \
    -Wpointer-arith -Wreturn-type -Wcast-qual -Wwrite-strings -Wswitch \
    -Wshadow -Wcast-align -Wbad-function-cast -Wchar-subscripts -Winline \
    -Wnested-externs -Wredundant-decls

stmr: $(OBJ_SRC)
	$(CC) $(OBJ_SRC) -o $@

.SUFFIXES: .c .o
.c.o:
	$(CC) $< $(CFLAGS) $(LFLAGS) -c -o $@

install: stmr
	cp -f stmr $(PREFIX)/bin/stmr

uninstall:
	rm -f $(PREFIX)/bin/stmr

run-test: stmr
	bash ./test.sh

clean:
	rm -f stmr *.o deps/**/*.o *.gc{ov,da,no}

.PHONY: clean run-test install uninstall
