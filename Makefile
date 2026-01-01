CC = cc
CFLAGS = -std=c11 -Wall -Wextra -O2

SRC = array_list.c
INC = array_list.h
OBJ = $(SRC:.c=.o)

all: libarray_list.a libarray_list.so

$(OBJ): $(SRC)
	$(CC) -fpic $(CFLAGS) $(SRC) -c -o $@

libarray_list.a: $(OBJ)
	ar rcs $@ $(OBJ)

libarray_list.so: $(OBJ)
	$(CC) -shared $(CFLAGS) $(OBJ) -o $@

clean:
	rm -f $(OBJ) libarray_list.a libarray_list.so

.PHONY: all clean
