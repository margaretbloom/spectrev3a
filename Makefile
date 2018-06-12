all: spectrev3a
	taskset -c 0 ./spectrev3a	

spectrev3a.o: spectrev3a.asm
	nasm -felf64 spectrev3a.asm -o spectrev3a.o

spectrev3a: spectrev3a.o
	gcc spectrev3a.o -o spectrev3a

