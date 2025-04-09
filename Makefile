main: run | builds
	@ ./builds/out

run: ./src/main.asm | builds
	@ fasm ./src/main.asm ./builds/out.o

clean: | builds
	rm -rdf ./builds/*

builds:
	mkdir -p $@
