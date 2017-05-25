NAME = prog_name

SRC_DIR = src
INC_DIR = include
OBJ_DIR = obj
BIN_DIR = bin

TARGET = $(BIN_DIR)/$(NAME)

CC = gcc
CFLAGS = -Wall -g -lm

SRC = ${wildcard $(SRC_DIR)/*.c}
OBJ = ${addprefix $(OBJ_DIR)/, ${notdir ${SRC:.c=.o}}}

.PHONY: clean dist-clean folders organize

all: folders
	$(MAKE) $(TARGET)

$(TARGET): $(OBJ)
	@echo Creating executable...
	@echo Command:
	$(CC) $(OBJ) $(CFLAGS) -o $@
	@echo All Done Sucessfully.

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	@echo Creating object $@
	@echo Command:
	$(CC) -c $(CFLAGS) -I$(INC_DIR) $< -o $@

clean:
	@echo Cleaning recursively...
	@rm -rf $(BIN_DIR) $(OBJ_DIR) *~
	@echo Cleaning Done Sucessfully.

folders:
	@echo Creating project structure...
	@mkdir -p $(OBJ_DIR) $(BIN_DIR) $(SRC_DIR) $(INC_DIR)
	@echo Structure Done Sucessfully.

run:
	@./$(BIN_DIR)/$(NAME)

tar: clean
	tar vczf $(NAME).tar.gz *
