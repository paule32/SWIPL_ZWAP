#!/bin/bash
unameShell="$(uname -s)"
case "${unameShell}" in
	Linux*)  machine=Linux;;
	MINGW*)  machine=MinGW;;
	*)       machine="UNKNOWN:${unameShell}"
esac
echo "compile for: ${machine}"

if [[ "${machine}" == "MinGW" ]]; then
	exeEXT=".exe"
else
	exeEXT=""
fi

# first, delete old data crap ...
if [[ "${machine}" == "MinGW" ]]; then
	echo "delete old crap:"
	rm -rf help.h
	rm -rf prolog64.hlp
	echo "done."
fi

# compile the locale.eng creator: createLang.exe
echo "create locale compiler:"
g++ -std=c++17 -O2 -o createLang${exeEXT} createLang.cc
strip createLang${exeEXT}

if [[ "${machine}" == "Linux" ]]; then
	dos2unix locale.eng.txt
	dos2unix locale.deu.txt
fi

echo "english:" && ./createLang${exeEXT} locale.eng.txt locale.eng
echo "german: " && ./createLang${exeEXT} locale.deu.txt locale.deu
echo "done."

# create the Turbo Vision help file
if [[ "${machine}" == "MinGW" ]]; then
	echo "create Turbo Vision help file:"
	./tvhc${exeEXT} prolog64.txt prolog64.hlp help.h
	echo "done."
fi

# create .res file object for bitmap data
if [[ "${machine}" == "MinGW" ]]; then
	echo "create birmap data resource:"
	windres resource.rc -o resource.o
	echo "done."
fi

# compile main application to project object file
echo "create prolog64, this can take a while..."
if [[ "${machine}" == "Linux" ]]; then
	g++ -std=c++17 -m64 -O2                                        \
		-DRELEASE                                                  \
        	                                                       \
		-DASMJIT_BUILD_RELEASE                                     \
		-DASMJIT_NO_AARCH32                                        \
		-DASMJIT_NO_AARCH64                                        \
		-DASMJIT_STATIC                                            \
        	                                                       \
		-I.                                                        \
		-I/home/paule32/prolog/src/asmjit/src                      \
		-I/home/paule32/prolog/src/asmjit/src/asmjit               \
		-I/home/paule32/prolog/src/tvision/include                 \
		-I/home/paule32/prolog/src/tvision/include/tvision         \
		-I/home/paule32/prolog/src/xbase/build/include             \
		-I/home/paule32/prolog/src/xbase/src/include               \
                	                                               \
		-Wno-deprecated                                            \
		-Wno-write-strings                                         \
		-Wno-unused-result                                         \
        	                                                       \
		-o prolog.o -c prolog.cc
fi

if [[ "${machine}" == "MinGW" ]]; then
	g++ -std=c++17 -m64 -O2 -mconsole                              \
		-DRELEASE                                                  \
		-DDWARF_ENABLED                                            \
        	                                                       \
		-DASMJIT_BUILD_RELEASE                                     \
		-DASMJIT_NO_AARCH32                                        \
		-DASMJIT_NO_AARCH64                                        \
		-DASMJIT_STATIC                                            \
                                                                   \
		-I. -I../../inc -I../../inc/tvision -I../../inc/dwarf      \
		-I../../inc/asmjit                                         \
		-I/e/projekte/xbase64-4.1.0/src/include                    \
		-I/e/projekte/xbase64-4.1.0/build/linux64/include          \
		                                                           \
		-Wno-deprecated                                            \
		-Wno-write-strings                                         \
		-Wno-unused-result                                         \
        	                                                       \
		-o prolog.o -c prolog.cc
fi

# combine all together
if [[ "${machine}" == "Linux" ]]; then
	g++ -std=c++17 -m64 -o prolog64 prolog.o                       \
                                                                   \
		-DASMJIT_BUILD_RELEASE                                     \
		-DASMJIT_NO_AARCH32                                        \
		-DASMJIT_NO_AARCH64                                        \
		-DASMJIT_STATIC                                            \
	                                                               \
		-L/home/paule32/prolog/src/libs                            \
	                                                               \
		-ltvision -lasmjit -lxbase64                               \
		-lstdc++ -lgpm -lncurses
fi

if [[ "${machine}" == "MinGW" ]]; then
	g++ -std=c++17 -m64 -mconsole -o prolog64${exeEXT}             \
		prolog.o dwarf.o resource.o                                \
	                                                               \
		-DASMJIT_BUILD_RELEASE                                     \
		-DASMJIT_NO_AARCH32                                        \
		-DASMJIT_NO_AARCH64                                        \
		-DASMJIT_STATIC                                            \
	                                                               \
		-static -L. -L../../lib -L../../lib/mingw                  \
	                                                               \
		-ltvision -lasmjit64 -lxbase64 -ldwarf64                   \
                                                                   \
		-lz64 -lintl -lstdc++ -lwinpthread -liconv -limagehlp      \
		-lcomctl32 -lgdi32 -lkernel32
fi

strip prolog64${exeEXT}
echo "done."

# the final result should be prolog64.exe - the main executable
echo "all steps are done."
