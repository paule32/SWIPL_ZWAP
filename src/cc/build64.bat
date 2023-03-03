g++ -std=c++14 -m64 -mconsole -O2 -DDEBUG   \
	-I. -I../../inc -I../../inc/tvision \
	-o prolog.o -c prolog.cc

g++ -std=c++14 -m64 -mconsole -o prolog64.exe prolog.o \
	-L. -L../../lib -ltvision64 \
	-lintl

strip prolog64.exe
