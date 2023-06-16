exec = guile_fizzbuzz
src = main.scm

../../bins/$(exec): $(src)
	guild compile $(src)
	cp main.scm ../../bins/$(exec)
