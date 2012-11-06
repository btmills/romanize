SRC_DIR=./src/
TGT_DIR=./lib/

all: lib

lib: $(SRC_DIR)
	coffee -c -o $(TGT_DIR) $(SRC_DIR)

clean:
	rm $(TGT_DIR)*

.PHONY: all lib clean