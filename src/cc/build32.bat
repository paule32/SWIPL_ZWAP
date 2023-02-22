g++ -std=c++14 -m32 -mconsole -O2 -I../../inc -o prolog.o   -c prolog.cc
g++ -std=c++14 -m32 -mconsole                 -o prolog32.exe  prolog.o

strip prolog32.exe
