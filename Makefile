CC = gcc
CFLAGS = -Wall -Wextra -c

SRC = array_list.c

OBJ = $(SRC:.c=.o)

TARGET = libarray_list.a

all: $(TARGET)

$(OBJ): $(SRC)
	$(CC) $(SRC) -c $(CFLAGS) -o $@

$(TARGET): $(OBJ)
	ar rcs $@ $(OBJ)

clean:
	rm $(TARGET) $(OBJ)

.PHONY: all clean
