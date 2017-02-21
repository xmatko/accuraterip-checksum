BIN = accuraterip-checksum
SRC = accuraterip-checksum.c

CC = gcc
CFLAGS = -Wall -std=c99
LDFLAGS = -lsndfile

all: $(BIN)

$(BIN): $(SRC)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $<

.PHONY: clean
clean:
	rm -f $(BIN)
