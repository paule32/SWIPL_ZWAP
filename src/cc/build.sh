#!/bin/bash
g++ -m64 -mconsole -O2 -o prolog.o -c prolog.cc
g++ -m64 -mconsole     -o prolog.exe  prolog.o

#s trip           prolog.exe

echo "done."