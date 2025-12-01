# Compiler and flags
CC = gcc
CFLAGS = -Wall -Wextra
LIBS = -lcurl

# Target executable
TARGET = app

# Source files
SOURCES = main.c sendData.c
OBJECTS = $(SOURCES:.c=.o)

# Header files
HEADERS = appdev.h

# Default target
all: $(TARGET)

# Build the executable
$(TARGET): $(OBJECTS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJECTS) $(LIBS)

# Compile source files to object files
%.o: %.c $(HEADERS)
	$(CC) $(CFLAGS) -c $< -o $@

# Clean up compiled files
clean:
	rm -f $(OBJECTS) $(TARGET)

# Clean and rebuild
rebuild: clean all

# Run the program
run: $(TARGET)
	./$(TARGET)

# Phony targets (not actual files)
.PHONY: all clean rebuild run