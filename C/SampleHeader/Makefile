CC = tcc
CFLAGS = -Wall -Wextra
BUILD_DIR = build

compile:
	@mkdir -p $(BUILD_DIR)
	@echo "Compiling..."
	$(CC) -o $(BUILD_DIR)/main.o -c src/main.c $(CFLAGS)
	$(CC) -o $(BUILD_DIR)/calc.o -c include/calc.c $(CFLAGS)
	$(CC) -o $(BUILD_DIR)/main $(BUILD_DIR)/main.o $(BUILD_DIR)/calc.o $(CFLAGS)

test:
	@clear
	@echo "Testing - result should be 5...\n"
	@echo "====================================================================="
	$(BUILD_DIR)/main --add 3 2
	$(BUILD_DIR)/main --subtract 12 7
	$(BUILD_DIR)/main --divide 25 5
	$(BUILD_DIR)/main --multiply 1 5
	@echo "=====================================================================\n"

clean:
	@echo "Cleaning build directory..."
	@rm -rf $(BUILD_DIR)/*