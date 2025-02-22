main: run | builds
	@ ./builds/out

run: ./src/main.asm | builds
	@ nasm -f elf64 -o ./builds/out.o ./src/main.asm
	@ ld -static -o ./builds/out ./builds/out.o

clean: | builds
	rm -rdf ./builds/*

builds:
	mkdir -p $@
