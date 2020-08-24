all: first

first: first.c 
	gcc -Werror -Wall -fsanitize=address -o first first.c -lm

clean:
	rm -rf first