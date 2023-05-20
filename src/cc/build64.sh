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
# Cmd-Line   : # ./build64.sh -enable  release
#              # ./build64.sh -enable  debug
#              # ./build64.sh -c       prolog
#
# For first time compile, use: # ./build64.sh -enable release
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
function cp_home {
	cp ${_HOME_OLD}/$1 ${_HOME}/src/prolog/$1
}
function cp_home_old {
	cp ${_HOME}/src/prolog/$1 ${_HOME_OLD}/$1
}
function strip_file {
	strip $1
	if [[ $? -ne 0 ]]; then
		echo "error: can not strip $1"
		exit 2
	fi
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
# -------------------------------------------------------------
# check application is installed (simple try&dirty) ...
# -------------------------------------------------------------
function check_application {
	which $1 > /dev/null 2>&1
	if [[ $? -ne 0 ]]; then
		printf "%15s: not found (requiered)\n" $1
		exit 2; else
		printf "%-15s: OK (installed)\n" $1
	fi
}
# -------------------------------------------------------------
# this function check a parameter - if it empty => exit.
# -------------------------------------------------------------
function check_isempty {
	if [[ -z "$1" ]]; then
		echo "option is empty."
		exit 2
	fi
}
function prepare_build {
	if [[ $1 -eq 0 ]]; then
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
	else
		return
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
		"release" ) echo "ENABLE  release: OK"; _DEBUG=0;;
		"debug"   ) echo "ENABLE  debug  : OK"; _DEBUG=1;;
		"dwarf"   ) echo "ENABLE  dwarf  : OK"; _DWARF=1;;
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
	echo "== [ Configure ProLog 64-Bit Build ] =="
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
	rm -rf help.h
	rm -rf prolog64.hlp
	# ---------------------------------------------------------
	# compile the locale.eng creator: createLang.exe
	# ---------------------------------------------------------
	echo "== [ Build locales ] =="
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
	./createLang${exeEXT} locale.eng.txt locale.eng > /dev/null 2>&1
	./createLang${exeEXT} locale.deu.txt locale.deu > /dev/null 2>&1
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
	# ---------------------------------------------------------
	# shrink executable (strip debug information's):
	# ---------------------------------------------------------
	if [[ "${machine}" == "MinGW" ]]; then
		strip_file ${_HOME}/src/prolog/prolog64.exe
		cp_home_old prolog64.exe
	fi
	if [[ "${machine}" == "Linux" ]]; then
		strip_file ${_HOME}/src/prolog/prolog64
		cp_home_old prolog64
	fi
	cp_home_old prolog64.hlp
	cp_home_old locale.eng
	cp_home_old locale.deu
}
# -------------------------------------------------------------
# single part compile ...
# -------------------------------------------------------------
function get_compile_file {
	check_isempty $1
	case "$1" in
		"prolog"  ) compile_prolog  ;;
		"asmjit"  ) compile_asmjit  ;;
		"tvision" ) compile_tvision ;;
		"xbase"   ) compile_xbase   ;;
		*)
			echo >&2 "option not supported."
			exit 2;;
	esac
	echo "== [ done. ] =="
	exit 0
}
# -------------------------------------------------------------
# restore old status ...
# -------------------------------------------------------------
function status_restore {
	cd ${_HOME_OLD}
}
function compile_packages {
	echo "" && compile_default
	echo "" && compile_asmjit
	echo "" && compile_xbase
	echo "" && compile_tvision
	echo "" && compile_prolog
}
# -------------------------------------------------------------
# check, if a file exists in the directory tree:
# -------------------------------------------------------------
function recompile {
	read -p "would you re-compile $2: [y/n]: " confirm
	if [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]]; then
		prepare_build 1
		echo "" && (compile_$1)
		exit 0
	fi
}
function check_exists {
	if [[ -f "$1" ]]; then
		read -p "would you re-compile all: [y/n]: " confirm
		if [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]]; then
			prepare_build 0
			compile_packages
			exit 0
		else
			recompile asmjit  "asmjit"
			recompile xbase   "xbase"
			recompile tvision "tvision"
			recompile prolog  "prolog"
			#
			echo "== [ aborted. ] =="
			exit 2
		fi
	fi
}
# -------------------------------------------------------------
# if parameter count > 0 then handle these parameter's ...
# -------------------------------------------------------------
function check_parameter {
	if [[ $1 -lt 1 ]]; then
		check_exists "${_HOME}/lib/libtvision.a"
		check_exists "${_HOME}/lib/libasmjit.a"
		check_exists "${_HOME}/lib/libxbase64.a"
		echo ""
		echo "== { no parameter given. ] =="
		exit 0
	fi
	if [[ $1 -gt 0 ]] && [[ "$2" == "-"* ]]; then
		while [[ $1 -gt 0 ]] && [[ "$2" == "-"* ]];
		do
			opt="$2";
			shift;                  # expose next argument
			case "$opt" in
				"-"         ) echo "empty parameter not allowed."; break 2;;
				"-compile"  ) get_compile_file   $2; shift;;
				"-c"        ) get_compile_file   $2; shift;;
				"-enable"   ) get_enabled_option $2; shift;;
				"-enable="* ) get_enabled_option "${opt#*=}";;
				*)
					echo >&2 "invalid option"
					exit 1;;
			esac
		done
	else
		echo "invalid option: $@"
		exit 2
	fi
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
# -------------------------------------------------------------
# the following lines are specified to my develop folder tree.
# if you don't need it, then delete them ...
# -------------------------------------------------------------
prepare_status_save
if [[ "${_HOME}" != "${_HOME_OLD}" ]]; then
	read -p "ATT: Copy new files? [y/n]: " confirm
	if [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]]; then
		echo "== [ Copy new files ] =="
		cp_home prolog.cc
		cp_home prolog64.txt
		cp_home locale.eng.txt
		cp_home locale.deu.txt
		#
		check_parameter $# $1 $2
	fi
fi
#
check_parameter $# $1 $2
# -------------------------------------------------------------
# compile used non-standard packages ...
# -------------------------------------------------------------
check_exists "${_HOME}/lib/libtvision.a"
check_exists "${_HOME}/lib/libasmjit.a"
check_exists "${_HOME}/lib/libxbase64.a"
#
prepare_build
compile_packages
status_restore
# -------------------------------------------------------------
# the final result should be prolog64.exe - the main executable
# -------------------------------------------------------------
echo ""
echo "== [ done. ] =="
exit 0
