#!/bin/bash
# first, delete old data crap ...
echo "delete old crap:"
rm -rf help.h
rm -rf prolog64.hlp
echo "done."

# compile the locale.eng creator: createLang.exe
echo "create locale compiler:"
g++ -std=c++17 -O2 -o createLang.exe createLang.cc
strip createLang.exe
echo "english:" && ./createLang.exe locale.eng.txt locale.eng
echo "german: " && ./createLang.exe locale.deu.txt locale.deu
echo "done."

# create the Turbo Vision help file
echo "create Turbo Vision help file:"
./tvhc.exe prolog64.txt prolog64.hlp help.h
echo "done."

# create .res file object for bitmap data
echo "create birmap data resource:"
windres resource.rc -o resource.o
echo "done."

# compile main application to project object file
echo "create prolog64, this can take a while..."
g++ -std=c++17 -m64 -mconsole -O2 -DDEBUG -DWINDOWS_APPLICATION \
	-I. -I../../inc -I../../inc/tvision -I../../inc/dwarf	\
	-I/e/projekte/xbase64-4.1.0/src/include 		\
	-I/e/projekte/xbase64-4.1.0/build/linux64/include	\
	-Wno-deprecated 					\
	-Wno-write-strings					\
	-o prolog.o -c prolog.cc

# combine all together
g++ -std=c++17 -m64 -mconsole -o prolog64.exe prolog.o dwarf.o  \
	resource.o                                              \
	-static                                                 \
	-L. -L../../lib -ltvision64  -lxbase -ldwarf64 -lz64    \
	-lintl -lstdc++ -lwinpthread -liconv -limagehlp         \
	-lcomctl32 -lgdi32

strip prolog64.exe
echo "done."

# the final result should be prolog64.exe - the main executable
echo "all steps are done."
