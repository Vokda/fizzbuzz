# $@ Contains the target file name.
# $< Contains the first dependency file name. 

# File names
execs = $(wildcard *_fizzbuzz)
dirs = $(sort $(dir $(wildcard srcs/*/)))

.PHONY: clean all $(dirs)

# Main target
all: $(dirs)
$(dirs):
	$(MAKE) -C $@
