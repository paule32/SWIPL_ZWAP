#!/bin/bash
#rm -rf help.h
#rm -rf prolog64.hlp
#./tvhc.exe prolog64.txt prolog64.hlp help.h

g++ -std=c++17 -O2 -o createLang.exe createLang.cc
g++ -std=c++17 -O2 -o testLang.exe testLang.cc

./createLang.exe locale.deu.txt locale.deu
./testLang.exe locale.deu
