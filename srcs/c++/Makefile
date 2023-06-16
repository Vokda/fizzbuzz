# This is a template makefile to be used for new projects
# $@ Contains the target file name.
# $< Contains the first dependency file name. 
#
# Declaration of variables
CC = g++
CC_FLAGS = -Wall -std=c++11 
#IDIR = /home/daniel/Projects/Libraries/libgrid/ #including additional directories (in this case more .h files for grid handling)
OBJECTS_DIR = objects

# File names
EXEC = c++_fizzbuzz #name of executable
SOURCES = $(wildcard *.cpp) #sources
OBJECTS = $(addprefix $(OBJECTS_DIR)/, $(SOURCES:.cpp=.o)) #objects 
LINKS = #-lncurses  #linking libraries

.PHONY: clean

# Main target
../../bins/$(EXEC): $(OBJECTS)
	$(CC) $(OBJECTS) -o $(EXEC) $(LINKS) 

# To obtain object files. Are put in OBJECTS_DIR directory
$(OBJECTS_DIR)/%.o: %.cpp
	$(CC) -c $(CC_FLAGS) $< -o $@ 

# To remove generated files
clean:
	rm -rf $(EXEC) $(OBJECTS_DIR)/*
