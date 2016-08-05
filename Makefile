.PHONY:clean
main:main.o add.o sub.o
	gcc -Wall -g main.o add.o sub.o -o main
main.o:main.c
	gcc -Wall -g -c main.c -o main.o
add.o:add.c add.h
	gcc -Wall -g -c add.c -o add.o
sub.o:sub.c sub.h
	gcc -Wall -g -c sub.c -o sub.o
clean:
	rm -f main main.o add.o sub.o
