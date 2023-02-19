g++ -m64 -mconsole -D CHARSET_UTF8 -O2 -o prolog.o   -c prolog.cc
g++ -m64 -mconsole                     -o prolog64.exe  prolog.o

strip prolog64.exe
