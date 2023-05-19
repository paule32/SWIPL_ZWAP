#!/bin/bash
# -------------------------------------------------------------
# File       : build64.sh
# Author     : Jens Kallup - paule32 <paule32.jk@gmail.com>
# License    : MIT
# Copyright  : (c) 2023 by J. Kallup - paule32
#              all rights reserved.
#
# Description: This script file is created, to compile all the
#              needed non-standard packages for running prolog.
#              ProLog is a mix of DSL to combine the world of
#              different programming languages.
#
# Remarks    : You have to modified the _HOME variable, if the
#              user name, and it's folder are different than
#              the default value.
#              Maybe You have to install some binutils to build
#              the packages, and the executable.
#
# Legal      : I can not give a gurantee of all. I can not give
#              support for create, and running this script in
#              detail.
#
# Cmd-Line   : # ./build64.sh -enable release
#              # ./build64.sh -enable debug
# -------------------------------------------------------------
# set default customize values ...
# -------------------------------------------------------------
_SOURCE="https://kallup.net/prolog"
_HOME="/home/paule32/prolog"
_DEBUG=0
_DWARF=0
# -------------------------------------------------------------
# save current status, to restore after the build ...
# -------------------------------------------------------------
function prepare_status_save {
	_HOME_OLD="$(pwd)"
	cd ${_HOME}/src
}
# -------------------------------------------------------------
# prepare build (check for tools, and source):
# -------------------------------------------------------------
function download_file {
	cd ${_HOME}/src/$1
	wget -q --no-check-certificate ${_SOURCE}/src/$1.zip
	if [[ $? -ne 0 ]]; then
		printf "%-15s source : not found (requiered)\n" $1
		echo "aborted."
		exit 2
	else
		printf "%-7s source : OK (downloaded)\n" $1
		unzip -o $1.zip > /dev/null 2>&1
	fi
}
function check_application {
	which $1 > /dev/null 2>&1
	if [[ $? -ne 0 ]]; then
		printf "%15s: not found (requiered)\n" $1
		exit 2
	else
		printf "%-15s: OK (installed)\n" $1
		#echo "$1          : OK (installed)"
	fi
}
function prepare_build {
	rm -rf   ${_HOME}/lib
	rm -rf   ${_HOME}/src/{xbase,tvision,asmjit,prolog}
	mkdir -p ${_HOME}/src/{xbase,tvision,asmjit,prolog}
	mkdir -p ${_HOME}/lib
	if [[ $? -ne 0 ]]; then
		echo "build folders  : FAIL (could not create)"
		exit 2
	else
		echo "build folders  : OK (created)"
	fi
	echo ""
	check_application "wget"
	check_application "unzip"
	check_application "cmake"
	check_application "ninja"
	echo ""
	download_file "prolog"
	download_file "asmjit"
	download_file "tvision"
	download_file "xbase"
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
# set some compiler default values ...
# -------------------------------------------------------------
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
	cd ${_HOME}/src/asmjit/build
	echo "== [Configure asmjit Build - ${_DEBUG} ] =="
	BUILD_OPTIONS="-G Ninja -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -DASMJIT_TEST=1"
	eval cmake "$(pwd)/.." -B "$(pwd)/${_DEBUG}" -DCMAKE_BUILD_TYPE=${_DEBUG} ${BUILD_OPTIONS}
	cd ${_DEBUG}
	ninja
	if [[ $? -ne 0 ]]; then
		echo "Compile Error."
		exit 2
	else
		cp ${_HOME}/src/asmjit/build/Release/libasmjit.a \
		   ${_HOME}/lib/libasmjit.a
	fi
}
# -------------------------------------------------------------
# compile xbase:
# -------------------------------------------------------------
function compile_xbase {
	echo "== [Configure xbase 64-Bit Build ] =="
	cd ${_HOME}/src/xbase/build/linux64
	eval cmake .
	ninja
	if [[ $? -ne 0 ]]; then
		echo "Compile Error."
		exit 2
	else
		cp ${_HOME}/src/xbase/build/linux64/lib/x64/libxbase64.a \
		   ${_HOME}/lib/libxbase64.a
	fi
}
# -------------------------------------------------------------
# compile xbase:
# -------------------------------------------------------------
function compile_tvision {
	echo "== [Configure TurboVision 64-Bit Build ] =="
	cd ${_HOME}/src/tvision
	rm -rf  build; mkdir -p build; cd build
	if [[ ${_DEBUG} -eq 0 ]]; then
		_DEBUG="Release"
	else
		_DEBUG="Debug"
	fi
	eval cmake .. -DCMAKE_BUILD_TYPE=${_DEBUG}
	ninja
	if [[ $? -ne 0 ]]; then
		echo "Compile Error."
		exit 2
	else
		cp ${_HOME}/src/tvision/build/libtvision.a \
		   ${_HOME}/lib/libtvision.a
	fi
}
# -------------------------------------------------------------
# compile prolog:
# -------------------------------------------------------------
function compile_prolog {
	echo "== [Configure ProLog 64-Bit Build ] =="
	cd ${_HOME}/src/prolog
	# ---------------------------------------------------------
	# MinGW (Windows) executables suffix: .exe
	# ---------------------------------------------------------
	if [[ "${machine}" == "MinGW" ]]; then
		exeEXT=".exe"; else
		exeEXT=""
	fi
	# ---------------------------------------------------------
	# first, delete old data crap ...
	# ---------------------------------------------------------
	if [[ "${machine}" == "MinGW" ]]; then
		echo "delete old files..."
		rm -rf help.h
		rm -rf prolog64.hlp
	fi
	# ---------------------------------------------------------
	# compile the locale.eng creator: createLang.exe
	# ---------------------------------------------------------
	echo "create locale compiler:"
	g++ -std=c++17 -O2 -o createLang${exeEXT} createLang.cc
	if [[ $? -ne 0 ]]; then
		echo "Compile Error."
		exit 2
	fi
	strip createLang${exeEXT}
	# ---------------------------------------------------------
	# remove EOS character: [\n\r]
	# ---------------------------------------------------------
	if [[ "${machine}" == "Linux" ]]; then
		dos2unix locale.eng.txt
		dos2unix locale.deu.txt
	fi
	# ---------------------------------------------------------
	# create locale files
	# ---------------------------------------------------------
	printf "english: " && ./createLang${exeEXT} locale.eng.txt locale.eng
	printf "german : " && ./createLang${exeEXT} locale.deu.txt locale.deu
	# ---------------------------------------------------------
	# create the Turbo Vision help file
	# ---------------------------------------------------------
	echo "== [ Build Turbo Vision help file ] =="
	${_HOME}/src/tvision/build/tvhc${exeEXT} prolog64.txt prolog64.hlp help.h > /dev/null 2>&1
	# ---------------------------------------------------------
	# create .res file object for bitmap data
	# ---------------------------------------------------------
	if [[ "${machine}" == "MinGW" ]]; then
		echo "== [ Build MS-Windows resource file ] =="
		windres resource.rc -o resource.o
		if [[ $? -ne 0 ]]; then
			echo "Compile Error."
			exit 2
		fi
	fi
    # ---------------------------------------------------------
    # compile main application to project object file
    # ---------------------------------------------------------
    echo "== [ Build main ProLog64 ] =="
    if [[ ${_DEBUG} -eq 0 ]]; then
        _DEBUG="RELEASE"
    else
        _DEBUG="DEBUG"
    fi
    g++ -std=c++17 -m64 -O2                            \
        -D${_DEBUG}                                    \
        -DDWARF_DISABLED                               \
                                                       \
        -DASMJIT_BUILD_RELEASE                         \
        -DASMJIT_NO_AARCH32                            \
        -DASMJIT_NO_AARCH64                            \
        -DASMJIT_STATIC                                \
                                                       \
        -I.                                            \
        -I${_HOME}/src                                 \
        -I${_HOME}/src/asmjit/src                      \
        -I${_HOME}/src/asmjit/src/asmjit               \
        -I${_HOME}/src/tvision/include                 \
        -I${_HOME}/src/tvision/include/tvision         \
        -I${_HOME}/src/xbase/build/linux64/include     \
        -I${_HOME}/src/xbase/src/include               \
                                                       \
        -Wno-deprecated                                \
        -Wno-write-strings                             \
        -Wno-unused-result                             \
                                                       \
        -o prolog.o -c prolog.cc
    if [[ $? -ne 0 ]]; then
        echo "Compile Error."
        exit 2
    fi
	# ---------------------------------------------------------
	# bring all together (Linux):
	# ---------------------------------------------------------
	if [[ "${machine}" == "Linux" ]]; then
		g++ -std=c++17 -m64 -o prolog64 prolog.o       \
													   \
			-DASMJIT_BUILD_RELEASE                     \
			-DASMJIT_NO_AARCH32                        \
			-DASMJIT_NO_AARCH64                        \
			-DASMJIT_STATIC                            \
													   \
			-L. -L${_HOME}/lib                         \
													   \
			-ltvision -lasmjit -lxbase64               \
			-lstdc++ -lgpm -lncurses
		if [[ $? -ne 0 ]]; then
			echo "Compile Error."
			exit 2
		fi
	fi
	# ---------------------------------------------------------
	# bring all together (MS-Windows):
	# ---------------------------------------------------------
	if [[ "${machine}" == "MinGW" ]]; then
		#if [[ _DWARF -eq 1 ]]; then
		#	_DWARF_OBJ="dwarf.o"
		#	_DWARF_LIB="-ldwarf64"
		#else
			_DWARF_OBJ=""
			_DWARF_LIB=""
		#fi
		g++ -std=c++17 -m64 -mconsole -o prolog64.exe  \
			prolog.o ${_DWARF_OBJ} resource.o          \
													   \
			-DASMJIT_BUILD_RELEASE                     \
			-DASMJIT_NO_AARCH32                        \
			-DASMJIT_NO_AARCH64                        \
			-DASMJIT_STATIC                            \
													   \
			-static -L. -L${_HOME}/lib                 \
													   \
			-ltvision -lasmjit -lxbase64 ${_DWARF_LIB} \
			-lintl -lstdc++ -lwinpthread -liconv       \
			-limagehlp -lcomctl32 -lgdi32 -lkernel32
		if [[ $? -ne 0 ]]; then
			echo "Compile Error."
			exit 2
		fi
	fi
}
# -------------------------------------------------------------
# restore old status ...
# -------------------------------------------------------------
function status_restore {
	cd ${_HOME_OLD}
}
# -------------------------------------------------------------
# get the shell name:
# -------------------------------------------------------------
unameShell="$(uname -s)"
case "${unameShell}" in
	Linux*)  machine=Linux;;
	MINGW*)  machine=MinGW;;
	*)       machine="UNKNOWN:${unameShell}"
esac
# -------------------------------------------------------------
# gattering informations for the build ...
# -------------------------------------------------------------
echo "== [ Gattering default Information's ] ==" >&2
echo "Compile for    : ${machine}"
prepare_status_save
prepare_build
# -------------------------------------------------------------
# check if parameter's given:
# -------------------------------------------------------------
if [[ $# -lt 1 ]]; then
	echo "" && compile_default
	echo "" && compile_asmjit
	echo "" && compile_xbase
	echo "" && compile_tvision
	echo "" && compile_prolog
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
echo "" && compile_xbase
echo "" && compile_tvision
echo "" && compile_prolog
# -------------------------------------------------------------
# shrink executable (strip debug information's):
# -------------------------------------------------------------
if [[ "${machine}" == "MinGW" ]]; then
	strip ${_HOME}/src/prolog/prolog64.exe
	if [[ $? -ne 0 ]]; then
		echo "error: can not strip prolog64.exe"
		exit 2
	fi
fi
if [[ "${machine}" == "Linux" ]]; then
	strip ${_HOME}/src/prolog/prolog64
	if [[ $? -ne 0 ]]; then
		echo "error: can not strip prolog64"
		exit 2
	fi
fi
status_restore

# -------------------------------------------------------------
# the final result should be prolog64.exe - the main executable
# -------------------------------------------------------------
echo ""
echo "== [ done. ] =="
exit 0
