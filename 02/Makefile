.PHONY:clean all
BIN=01test 02test
all:$(BIN)
%.o:%.c
	gcc -Wall -g -c $^ -o $@
01test:01test.o
	gcc -Wall -g $^ -o 01test
02test:02test.o
	gcc -Wall -g $^ -o 02test
clean:
	rm -f *.o $(BIN)
