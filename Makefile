CC = gcc
CFLAGS = -std=c11 -Wall -Wextra -Werror -O2

BUILD_DIR = build

SRC = array_list.c
INC = array_list.h
OBJ = $(patsubst %.c,$(BUILD_DIR)/%.o,$(SRC))

all: libarray_list.a libarray_list.so

$(BUILD_DIR)/%.o: $(SRC)
	@mkdir $(BUILD_DIR)
	$(CC) -fpic $(CFLAGS) $(SRC) -c -o $@

libarray_list.a: $(OBJ)
	ar rcs $(BUILD_DIR)/$@ $(OBJ)

libarray_list.so: $(OBJ)
	$(CC) -shared $(CFLAGS) $(OBJ) -o $(BUILD_DIR)/$@

clean:
	rm -rf $(BUILD_DIR)

.PHONY: all clean