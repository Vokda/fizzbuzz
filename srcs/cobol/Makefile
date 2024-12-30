# This is a template makefile to be used for new projects
# $@ Contains the target file name.
# $< Contains the first dependency file name. 
#
# Declaration of variables
CC = cobc
CC_FLAGS = -x

# File names
EXEC = cobol_fizzbuzz #name of executable
SOURCES = $(wildcard *.cbl) #sources

.PHONY: clean

# Main target
$(EXEC): $(SOURCES)
	$(CC) ${CC_FLAGS} $(SOURCES) -o $(EXEC) 
	cp ${EXEC} ../../bins/${EXEC}

# To remove generated files
clean:
	rm -rf $(EXEC)
