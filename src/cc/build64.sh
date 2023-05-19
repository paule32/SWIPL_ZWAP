#!/bin/bash
# -------------------------------------------------------------
# set default values ...
# -------------------------------------------------------------
_SOURCE="https://kallup.net/prolog"
_HOME="/home/paule32/prolog"
_DEBUG=0
_DWARF=0
# -------------------------------------------------------------
# save current status, to restore after the build ...
# -------------------------------------------------------------
function status_save {
	_HOME_OLD="$(pwd)"
	cd ${_HOME}/src
}
# -------------------------------------------------------------
# prepare build (check for tools):
# -------------------------------------------------------------
function prepare_build {
	which wget > /dev/null 2>&1
	if [[ $? -ne 0 ]]; then
		echo "wget           : not found (requiered)"
		exit 2
	else
		echo "wget           : OK"
	fi
	cd asmjit
	wget -q --no-check-certificate ${_SOURCE}/src/asmjit.zip
	if [[ $? -ne 0 ]]; then
		echo "asmjit source  : not found (requiered)"
		echo "aborted."
		exit 2
	else
		echo "asmjit source  : OK"
		unzip asmjit.zip > /dev/null 2>&1
		dir
	fi
}
# -------------------------------------------------------------
# prepare download of non-standard source packages, and config
# -------------------------------------------------------------
function prepage_compile {
	echo "== [Configure - Path's ] =="
	mkdir -p ${_HOME}/src/{xbase,tvision,asmjit/build}
	if [[ $? -ne 0 ]]; then
		echo "Setup          : FAIL (could not create)"
		exit 2
	else
		echo "Setup          : SUCCESS"
	fi
}
# -------------------------------------------------------------
# start of function definition's:
# -------------------------------------------------------------
function get_enabled_option {
	if [[ -z "$1" ]]; then
		echo "option is empty."
		exit 2
	fi
	case "$1" in
		"release" )
			echo "ENABLE  release: OK"
			_DEBUG=0;;
		"debug" )
			echo "ENABLE  debug  : OK"
			_DEBUG=1;;
		"dwarf" )
			echo "ENABLE  dwarf  : OK"
			_DWARF=1;;
		*)
			echo >&2 "option not supported."
			exit 2;;
	esac
}
# -------------------------------------------------------------
# compile asmjit:
# -------------------------------------------------------------
function compile_asmjit {
	if [[ ${_DEBUG} -eq 0 ]]; then
		_DEBUG="Release"
	else
		_DEBUG="Debug"
	fi
	echo "== [Configure asmjit Build - ${_DEBUG} ] =="
	cd ${_HOME}/src/asmjit
	wget -q ${_SOURCE}/asmjit/asmjit.zip
	BUILD_OPTIONS="-G Ninja -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -DASMJIT_TEST=1"
	#eval cmake "$(pwd)/.." -B "$(pwd)/${_DEBUG}" -DCMAKE_BUILD_TYPE=${_DEBUG} ${BUILD_OPTIONS}
	dir
}
# -------------------------------------------------------------
# restore old status ...
# -------------------------------------------------------------
function status_restore {
	cd ${_HOME_OLD}
	exit 0
}
function compile_default {
	if [[ ${_DEBUG} -eq 0 ]]; then
		echo "Compile Debug  : NO  (release)"  >&2; else
		echo "Compile Debug  : YES (debug)"    >&2
	fi
	if [[ ${_DWARF} -eq 0 ]]; then
		echo "Compile dwarf  : NO"          >&2; else
		echo "Compile dwarf  : YES (debug)" >&2
	fi
	echo ""
	prepage_compile
}
_XBASE_INC=""
_XBASE_INC_MINGW=$(echo \
	"-I/e/projekte/xbase64-4.1.0/src/include"          \
	"-I/e/projekte/xbase64-4.1.0/build/linux64/include")
_XBASE_INC_LINUX=$(echo \
	"-I${_HOME}/xbase/src/include"   \
	"-I${_HOME}/xbase/build/include" )

# -------------------------------------------------------------
# get the shell name:
# -------------------------------------------------------------
unameShell="$(uname -s)"
case "${unameShell}" in
	Linux*)  machine=Linux;;
	MINGW*)  machine=MinGW;;
	*)       machine="UNKNOWN:${unameShell}"
esac
status_save
echo "== [ Gattering default Information's ] ==" >&2
echo "Compile for    : ${machine}"
prepare_build
echo ""
# -------------------------------------------------------------
# check if parameter's given:
# -------------------------------------------------------------
if [[ $# -lt 1 ]]; then
	compile_default
	compile_asmjit
	exit 0
fi
# -------------------------------------------------------------
# if parameter count > 0 then handle these parameter's ...
# -------------------------------------------------------------
if [[ $# -gt 0 ]] && [[ "$1" == "-"* ]]; then
	while [[ $# -gt 0 ]] && [[ "$1" == "-"* ]];
	do
		opt="$1";
		shift;					# expose next argument
		case "$opt" in
			"-" )
				echo "empty parameter not allowed."
				break 2;;
			"-enable" )
				get_enabled_option "$1"
				shift;;
			"-enable="* )		# alternative format: -enable=
				get_enabled_option "${opt#*=}";;
			*)
				echo >&2 "invalid option"
				exit 1;;
		esac
	done
else
	echo "invalid option: $@"
	exit 2
fi
# -------------------------------------------------------------
# compile used non-standard packages ...
# -------------------------------------------------------------
echo "" && compile_default
echo "" && compile_asmjit
exit 2
echo "ssss"
prepage_compile
compile_asmjit
status_reestore
exit 0
# -------------------------------------------------------------
# MinGW (Windows) executables suffix: .exe
# -------------------------------------------------------------
if [[ "${machine}" == "MinGW" ]]; then
	exeEXT=".exe"
else
	exeEXT=""
fi
# -------------------------------------------------------------
# first, delete old data crap ...
# -------------------------------------------------------------
if [[ "${machine}" == "MinGW" ]]; then
	echo "delete old crap:"
	rm -rf help.h
	rm -rf prolog64.hlp
	echo "done."
fi
# -------------------------------------------------------------
# compile the locale.eng creator: createLang.exe
# -------------------------------------------------------------
echo "create locale compiler:"
g++ -std=c++17 -O2 -o createLang${exeEXT} createLang.cc
strip createLang${exeEXT}
# -------------------------------------------------------------
# remove EOS character: [\n\r]
# -------------------------------------------------------------
if [[ "${machine}" == "Linux" ]]; then
	dos2unix locale.eng.txt
	dos2unix locale.deu.txt
fi
# -------------------------------------------------------------
# create locale files
# -------------------------------------------------------------
printf "english: " && ./createLang${exeEXT} locale.eng.txt locale.eng
printf "german : " && ./createLang${exeEXT} locale.deu.txt locale.deu
echo "done."
# -------------------------------------------------------------
# create the Turbo Vision help file
# -------------------------------------------------------------
if [[ "${machine}" == "MinGW" ]]; then
	echo "create Turbo Vision help file:"
	./tvhc${exeEXT} prolog64.txt prolog64.hlp help.h
	echo "done."
fi
# -------------------------------------------------------------
# create .res file object for bitmap data
# -------------------------------------------------------------
if [[ "${machine}" == "MinGW" ]]; then
	echo "create bitmap data resource:"
	windres resource.rc -o resource.o
	echo "done."
fi
# -------------------------------------------------------------
# compile main application to project object file
# -------------------------------------------------------------
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
# -------------------------------------------------------------
# combine all together
# -------------------------------------------------------------
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
	if [[ _DWARF -eq 1 ]]; then
		_DWARF_OBJ="dwarf.o"
		_DWARF_LIB="-ldwarf64"
	else
		_DWARF_OBJ=""
		_DWARF_LIB=""
	fi
	g++ -std=c++17 -m64 -mconsole -o prolog64${exeEXT}             \
		prolog.o ${_DWARF_OBJ} resource.o                          \
	                                                               \
		-DASMJIT_BUILD_RELEASE                                     \
		-DASMJIT_NO_AARCH32                                        \
		-DASMJIT_NO_AARCH64                                        \
		-DASMJIT_STATIC                                            \
	                                                               \
		-static -L. -L../../lib -L../../lib/mingw                  \
	                                                               \
		-ltvision -lasmjit64 -lxbase64 ${_DWARF_LIB}               \
                                                                   \
		-lz64 -lintl -lstdc++ -lwinpthread -liconv -limagehlp      \
		-lcomctl32 -lgdi32 -lkernel32
fi

strip prolog64${exeEXT}
echo "done."

# the final result should be prolog64.exe - the main executable
echo "all steps are done."
