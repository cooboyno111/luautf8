# build liblualeveldb.so executable when user executes "make"
CC = g++
LUA_INCDIR=$(STAGING_DIR)/usr/include
lua-utf8.so: lutf8lib.o
	$(CC) -shared lutf8lib.o -o lua-utf8.so

lutf8lib.o: lutf8lib.c
	$(CC) -fPIC -c lutf8lib.c -I$(LUA_INCDIR)

# remove object files and executable when user executes "make clean"
clean:
	rm *.o lua-utf8.so
