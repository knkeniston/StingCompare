SYMFORMAT=dwarf
FORMAT=elf
DESTINATION=/encs_share/cs/class/cs261/asm2

main: main.o stringgt.o
	gcc -m32 -g main.o stringgt.o -o main

main.o: main.c
	gcc -std=c99 -c -pedantic -g -Wall -m32 main.c 

stringgt.o: stringgt.asm
	nasm -f $(FORMAT) -g -F $(SYMFORMAT) stringgt.asm

install: stringgt
	cp stringgt.asm stringgt Makefile $(DESTINATION)

clean:
	rm *.o stringgt
