#!/bin/bash
rm -rf prolog64.hlp.h
rm -rf prolog64.hlp

./tvhc.exe prolog64.txt prolog64.hlp prolog64.hlp.h

g++ -std=c++14 -m64 -mconsole -O2 -DDEBUG   \
	-I. -I../../inc -I../../inc/tvision \
	-Wno-deprecated                     \
	-o prolog.o -c prolog.cc

g++ -std=c++14 -m64 -mconsole -o prolog64.exe prolog.o \
	-L. -L../../lib -ltvision64 \
	-lintl

strip prolog64.exe

echo "done."