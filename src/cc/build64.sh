#!/bin/bash
rm -rf help.h
rm -rf prolog64.hlp

./tvhc.exe prolog64.txt prolog64.hlp help.h

g++ -std=c++14 -m64 -mconsole -O2 -DDEBUG   \
	-I. -I../../inc -I../../inc/tvision -I../../inc/dwarf \
	-Wno-deprecated                     \
	-o prolog.o -c prolog.cc

g++ -std=c++14 -m64 -mconsole -o prolog64.exe prolog.o dwarf.o -static \
	-L. -L../../lib -ltvision64 -ldwarf64 -lz64    \
	-lintl -lstdc++ -lwinpthread -liconv

strip prolog64.exe

echo "done."