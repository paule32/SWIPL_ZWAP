#!/bin/bash

bison -d dBaseDSL.yy
flex     dBaseDSL.ll

g++ -O2 -Wno-attributes -Wno-write-strings     -std=c++17 -fPIC -c dBaseDSLdllMain.cc
g++ -O2 -Wno-attributes -Wno-write-strings -I. -std=c++17 -fPIC -c dBaseDSLscanner.cc
g++ -O2 -Wno-attributes -Wno-write-strings -I. -std=c++17 -fPIC -c dBaseDSLparser.cc

g++ -o dBaseDSL.dll -shared -fPIC \
    dBaseDSLparser.o    \
    dBaseDSLscanner.o   \
    dBaseDSLdllMain.o
