g++ -m32 -mconsole -O2 -o prolog.o   -c prolog.cc
g++ -m32 -mconsole     -o prolog32.exe  prolog.o

strip prolog32.exe
