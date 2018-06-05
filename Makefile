# build liblualeveldb.so executable when user executes "make"
CC = g++

lua-utf8.so: lutf8lib.o
	$(CC) -shared lutf8lib.o -o lua-utf8.so

lutf8lib.o: lutf8lib.c
	$(CC) -fPIC -c lutf8lib.c -I /usr/include/lua5.1/

# remove object files and executable when user executes "make clean"
clean:
	rm *.o lua-utf8.so
