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
#              detail (mainly used for private use).
#
# Cmd-Line   : # ./build64.sh -enable  release
#              # ./build64.sh -enable  debug
#              # ./build64.sh -c       prolog
#
# For first time compile, use: # ./build64.sh -enable release
# -------------------------------------------------------------
# ATT: set default to customize values ...
# -------------------------------------------------------------
http_link="https://kallup.net/prolog"
#
user_name=paule32 #$(echo $USER)
user_home=$(bash -c "cd ~$(printf %q "${user_name}") && pwd")
base_home=${user_home}/prolog
#
_FSHOME=${base_home}
_DIALOG=0             # set to 1 if you would use dialog
_DEBUG=0
_DWARF=0
# -------------------------------------------------------------
# save current status, to restore after the build ...
# -------------------------------------------------------------
function prepare_status_save {
    _FSHOME_OLD="$(pwd)"
    mkdir -p ${_FSHOME}/src > /dev/null 2>&1
    cd       ${_FSHOME}/src
}
function cp_home {
    cp ${_FSHOME_OLD}/$1 ${_FSHOME}/src/prolog/$1
}
function cp_home_old {
    cp ${_FSHOME}/src/prolog/$1 ${_FSHOME_OLD}/$1
}
# -------------------------------------------------------------
# code shortener: check if the prev command was have no success
# -------------------------------------------------------------
function check_error {
    if [[ $1 -ne 0 ]]; then
        echo $2
        echo "== [ aborted. ] =="
        exit 2
    fi
}
function strip_file {
    strip $1
    check_error $? "error: can not strip $1"
}
# -------------------------------------------------------------
# prepare build (check for tools, and source):
# -------------------------------------------------------------
function download_file {
    mkdir ${_FSHOME}/src/$1 > /dev/null 2>&1
    cd ${_FSHOME}/src/$1
    wget -q --no-check-certificate ${_SOURCE}/src/$1.zip
    if [[ $? -ne 0 ]]; then
        printf "%-15s source : not found (requiered)\n" $1
        echo "== [ aborted. ] =="
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
        printf "%-15s: not found (requiered), try install: " $1
        LINUX=$(grep '^NAME' /etc/os-release | sed s/NAME=\"// | sed s/\"//)
        if [[ -z ${LINUX} ]]; then
            printf "%15s: not found (requiered)\n" $1
            exit 2
        fi
        if [[ "${LINUX}" == "Ubuntu" ]]; then
            apt -y install $1 > /dev/null 2>&1
        elif [[ "${LINUX}" == "MSYS2" ]]; then
            pacman -S   $1 > /dev/null 2>&1
        fi
        if [[ $? -ne 0 ]]; then
            printf "FAIL: must be root !\n"
            echo "== [ aborted. ] =="
            exit 2
        fi
        printf "\n"
    fi
    printf "%-15s: OK (installed)\n" $1
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
# -------------------------------------------------------------
# check installed tools ...
# -------------------------------------------------------------
function check_tools {
    echo "== [ Check installed tools ] =="
    if [[ "${machine}" == "MinGW" ]]; then
        apps=(
        "mingw-w64-x86_64-wget"
        "mingw-w64-x86_64-cmake"
        "mingw-w64-x86_64-ninja"
        "unzip")
        for i in "${apps[@]}"; do check_application $i; done
    elif [[ "${machine}" == "Linux" ]]; then
        apps=(wget cmake ninja unzip gpm dos2unix gawk bison dialog)
        for i in "${apps[@]}"; do check_application $i; done
    fi
}
function prepare_build {
    if [[ $1 -eq 0 ]]; then
        rm -rf   ${_FSHOME}/lib
        rm -rf   ${_FSHOME}/src/{terminfo,glibc,xbase,tvision,asmjit,ncurses,prolog}
        mkdir -p ${_FSHOME}/src/{terminfo,glibc,xbase,tvision,asmjit,ncurses,prolog}
        mkdir -p ${_FSHOME}/lib
        check_error $? "build folders  : FAIL (could not create)"
        echo "build folders  : OK (created)"
    else
        return
    fi
    echo "" && check_tools && echo ""
    echo "== [ download source files, please wait... ] =="
    srcarr=(prolog asmjit tvision xbase ncurses glibc terminfo)
    for i in "${srcarr[@]}"; do download_file $i; done
    # -------------------------------------------
    # copy terminfo files to ~./terminfo:
    # -------------------------------------------
    mkdir ${_MYHOME}/.terminfo/
    cp -r ${_FSHOME}/src/terminfo/* ${_MYHOME}/.terminfo/
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
    cd ${_FSHOME}/src/asmjit/build
    echo "== [ Configure asmjit Build - ${_DEBUG} ] =="
    BUILD_OPTIONS="-G Ninja -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -DASMJIT_TEST=1"
    eval cmake "$(pwd)/.." -B "$(pwd)/${_DEBUG}" \
    -DCMAKE_BUILD_TYPE=${_DEBUG} ${BUILD_OPTIONS}
    cd ${_DEBUG}
    ninja
    check_error $? "Compile Error."
    cp ${_FSHOME}/src/asmjit/build/Release/libasmjit.a \
       ${_FSHOME}/lib/libasmjit.a
}
# -------------------------------------------------------------
# compile xbase:
# -------------------------------------------------------------
function compile_xbase {
    echo "== [ Configure xbase 64-Bit Build ] =="
    cd ${_FSHOME}/src/xbase/build/linux64
    rm ${_FSHOME}/src/xbase/build/linux64/CMakeCache.txt
    eval cmake .
    if [[ "${machine}" == "Linux" ]]; then
        make
        check_error $? "Compile Error."
    else
        ninja
        check_error $? "Compile Error."
    fi
    cp ${_FSHOME}/src/xbase/build/linux64/lib/x64/libxbase64.a \
       ${_FSHOME}/lib/libxbase64.a
}
# -------------------------------------------------------------
# compile tvision:
# -------------------------------------------------------------
function compile_tvision {
    echo "== [ Configure TurboVision 64-Bit Build ] =="
    cd ${_FSHOME}/src/tvision
    rm -rf  build; mkdir -p build; cd build
    if [[ ${_DEBUG} -eq 0 ]]; then
        _DEBUG="Release"; else
        _DEBUG="Debug"
    fi
    eval cmake .. -DCMAKE_BUILD_TYPE=${_DEBUG}
    if [[ "${machine}" == "Linux" ]]; then
        make  ; check_error $? "Compile Error."; else
        ninja ; check_error $? "Compile Error."
    fi
    cp ${_FSHOME}/src/tvision/build/libtvision.a \
       ${_FSHOME}/lib/libtvision.a
}
# -------------------------------------------------------------
# compile ncurses:
# -------------------------------------------------------------
function compile_ncurses {
    echo "== [ Configure ncurses 64-Bit Build ] =="
    echo "== [ please wait... ] =="
    cd ${_FSHOME}/src/ncurses
    rm -rf  build; mkdir -p build; cd build
    if [[ "${machine}" == "MinGW" ]]; then
	../configure                     \
	    --prefix=/mingw64            \
	    --without-cxx                \
	    --without-ada                \
	    --enable-widec               \
	    --enable-warnings            \
	    --enable-assertions          \
	    --enable-exp-win32           \
	    --enable-ext-funcs           \
	    --disable-home-terminfo      \
	    --disable-echo               \
	    --disable-getcap             \
	    --disable-hard-tabs          \
	    --disable-leaks              \
	    --disable-macros             \
	    --disable-overwrite          \
	    --enable-opaque-curses       \
	    --enable-opaque-panel        \
	    --enable-opaque-menu         \
	    --enable-opaque-form         \
	    --enable-sp-funcs            \
	    --enable-term-driver         \
	    --enable-interop             \
	    --disable-termcap            \
	    --enable-database            \
	    --with-progs                 \
	    --without-libtool            \
	    --enable-pc-files            \
	    --without-shared             \
	    --with-normal                \
	    --without-debug              \
	    --with-fallbacks=ms-terminal \
	    --without-manpages           \
	 > /dev/null 2>&1 ; check_error $? "Configuring Error."
    elif [[ "${machine}" == "Linux" ]]; then
	../configure                     \
	    --target="x86_64-pc-linux-gnu" \
	    --enable-widec               \
	    --enable-home-terminfo       \
	    --without-cxx                \
	    --without-ada                \
	    --without-shared             \
	    --without-debug              \
	    --without-manpages           \
	    --with-normal                \
	    --enable-database            \
	 > /dev/null 2>&1 ; check_error $? "Configuring Error."
    fi
    make > /dev/null 2>&1 ; check_error $? "Compile (make) Error."
    cp ${_FSHOME}/src/ncurses/build/lib/lib*.a ${_FSHOME}/lib/
}
# -------------------------------------------------------------
# compile glibc:
# -------------------------------------------------------------
function compile_glibc {
    echo "== [ Configure glibc 64-Bit Build, please wait... ] =="
    if [ ! -d "${_FSHOME}/src/glibc" ]; then
       echo "Error: source directory does not exists."
       echo "== [ aborted. ] =="
       exit 2
    fi
    cd ${_FSHOME}/src/glibc
    rm -rf  build; mkdir -p build; cd build
    ../configure --prefix=/usr > /dev/null 2>&1 ; check_error $? "Configuring Error."
    make                       > /dev/null 2>&1 ; check_error $? "Compile (make) Error."
}
# -------------------------------------------------------------
# copy terminfo files:
# -------------------------------------------------------------
function compile_terminfo {
    echo "== [ Copy Terminal info Files, please wait... ] =="
    if [ ! -d "${_FSHOME}/src/terminfo" ]; then
       echo "Error: source directory does not exists."
       echo "== [ aborted. ] =="
       exit 2
    fi
    mkdir ${_MYHOME}/.terminfo > /dev/null 2>&1
    cp -r ${_FSHOME}/src/terminfo/* ${_MYHOME}/.terminfo/
    echo "== [ done. ] =="
}
# -------------------------------------------------------------
# compile a source file: <source> <object>
# -------------------------------------------------------------
function compile_source {
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
        -I${_FSHOME}/src                               \
        -I${_FSHOME}/src/asmjit/src                    \
        -I${_FSHOME}/src/asmjit/src/asmjit             \
        -I${_FSHOME}/src/tvision/include               \
        -I${_FSHOME}/src/tvision/include/tvision       \
        -I${_FSHOME}/src/xbase/build/linux64/include   \
        -I${_FSHOME}/src/xbase/src/include             \
        -I${_FSHOME}/src/ncurses/build/include         \
                                                       \
        -Wno-deprecated                                \
        -Wno-write-strings                             \
        -Wno-unused-result                             \
                                                       \
        -o $2 -c $1
    if [[ $? -ne 0 ]]; then
        echo "Compile Error: $1"
        exit 2
    fi
}
# -------------------------------------------------------------
# compile prolog:
# -------------------------------------------------------------
function compile_prolog {
    echo "== [ Configure ProLog 64-Bit Build ] =="
    cd ${_FSHOME}/src/prolog
    check_tools
    # ---------------------------------------------------------
    # first, delete old data crap ...
    # ---------------------------------------------------------
    rm -rf help.h
    rm -rf prolog64.hlp
    # ---------------------------------------------------------
    # compile the locale.eng creator: createLang.exe
    # ---------------------------------------------------------
    #echo "== [ Build locales ] =="
    #g++ -std=c++17 -O2 -o createLang${exeSuffix} createLang.cc
    #if [[ $? -ne 0 ]]; then
    #    echo "Compile Error."
    #    exit 2
    #fi
    #strip createLang${exeSuffix}
    # ---------------------------------------------------------
    # remove EOS character: [\n\r]
    # ---------------------------------------------------------
    #if [[ "${machine}" == "Linux" ]]; then
    #    dos2unix locale.eng.txt
    #    dos2unix locale.deu.txt
    #fi
    # ---------------------------------------------------------
    # create locale files
    # ---------------------------------------------------------
    #./createLang${exeSuffix} locale.eng.txt locale.eng > /dev/null 2>&1
    #./createLang${exeSuffix} locale.deu.txt locale.deu > /dev/null 2>&1
    # ---------------------------------------------------------
    # create the Turbo Vision help file
    # ---------------------------------------------------------
    echo "== [ Build Turbo Vision help file ] =="
    if [[ "${machine}" == "MinGW" ]]; then
        if [[ ! -f "${_FSHOME}/src/tvision/build/tvhc.exe" ]]; then
            compile_tvision
        fi
        ${_FSHOME}/src/tvision/build/tvhc.exe \
        ${_FSHOME}/src/prolog/prolog64.txt    \
        ${_FSHOME}/src/prolog/prolog64.hlp    \
        ${_FSHOME}/src/prolog/help.h > /dev/null 2>&1
        check_error $? "Compile Error."
    elif [[ "${machine}" == "Linux" ]]; then
        if [[ ! -f "${_FSHOME}/src/tvision/build/tvhc" ]]; then
            compile_tvision
        fi
        dos2unix ${_FSHOME}/src/prolog/prolog64.txt > /dev/null 2>&1 ; check_error $? "Convert Error."
        dos2unix ${_FSHOME}/build/prolog.cc         > /dev/null 2>&1 ; check_error $? "Convert Error."
        #
        ${_FSHOME}/src/tvision/build/tvhc  \
        ${_FSHOME}/src/prolog/prolog64.txt \
        ${_FSHOME}/src/prolog/prolog64.hlp \
        ${_FSHOME}/src/prolog/help.h > /dev/null 2>&1
        check_error $? "Compile Error."
    fi
    # ---------------------------------------------------------
    # create .res file object for bitmap data
    # ---------------------------------------------------------
    if [[ "${machine}" == "MinGW" ]]; then
        echo "== [ Build MS-Windows resource file ] =="
        windres resource.rc -o resource.o
        check_error $? "Compile Error."
    elif [[ "${machine}" == "Linux" ]]; then
        touch  resource.c
        gcc -o resource.o -c resource.c
    fi
    # ---------------------------------------------------------
    # compile main application to project object file
    # ---------------------------------------------------------
    echo "== [ Build main ProLog64 ] =="
    if [[ ${_DEBUG} -eq 0 ]]; then
        _DEBUG="RELEASE";  else
        _DEBUG="DEBUG"
    fi
    # ---------------------------------------------------------
    # remove ^M at line end of source files on Linux:
    # ---------------------------------------------------------
    if [[ "${machine}" == "Linux" ]]; then
        srcfile=( "prolog.cc" "spreadview.cpp" "spreadview.h" )
        for i in "${srcfile[@]}"; do dos2unix $i > /dev/null 2>&1; done
    fi
    compile_source spreadview.cpp spreadview.o
    compile_source prolog.cc      prolog.o
    # ---------------------------------------------------------
    # bring all together (Linux):
    # ---------------------------------------------------------
    if [[ _DWARF -eq 1 ]]; then
        compile_source dwarf.c dwarf.o
        _DWARF_OBJ="dwarf.o"; _DWARF_LIB="-ldwarf64"; else
        _DWARF_OBJ=""       ; _DWARF_LIB=""
    fi
    SOURCE_OBJECTS=$( echo \
    "prolog.o spreadview.o ${_DWARF_OBJ} resource.o")
    #
    if [[ "${machine}" == "Linux" ]]; then
        g++ -std=c++17 -m64 -o prolog64 ${SOURCE_OBJECTS} \
                                                          \
            -DASMJIT_BUILD_RELEASE                        \
            -DASMJIT_NO_AARCH32                           \
            -DASMJIT_NO_AARCH64                           \
            -DASMJIT_STATIC                               \
                                                          \
            -static -L. -L${_FSHOME}/lib                  \
                                                          \
            -ltvision -lasmjit -lxbase64 ${_DWARF_LIB}    \
            -lgpm -lncurses -lc -lm -ltinfo -static-libstdc++
        if [[ $? -ne 0 ]]; then
            echo "Compile Error."
            exit 2
        fi
    fi
    # ---------------------------------------------------------
    # bring all together (MS-Windows):
    # ---------------------------------------------------------
    if [[ "${machine}" == "MinGW" ]]; then
        g++ -std=c++17 -m64 -mconsole -o prolog64.exe  \
            ${SOURCE_OBJECTS}                          \
                                                       \
            -DASMJIT_BUILD_RELEASE                     \
            -DASMJIT_NO_AARCH32                        \
            -DASMJIT_NO_AARCH64                        \
            -DASMJIT_STATIC                            \
                                                       \
            -static -L. -L${_FSHOME}/lib               \
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
    #strip_file ${_FSHOME}/src/prolog/prolog64${exeSuffix}
    #
    cp_home_old prolog64${exeSuffix}
    cp_home_old prolog64.hlp
    #
    #cp_home_old locale.eng
    #cp_home_old locale.deu
}
# -------------------------------------------------------------
# single part compile ...
# -------------------------------------------------------------
function get_compile_file {
    check_isempty $1
    case "$1" in
        "prolog"  ) compile_prolog  ;;
        "glibc"   ) compile_glibc   ;;
        "asmjit"  ) compile_asmjit  ;;
        "tvision" ) compile_tvision ;;
        "xbase"   ) compile_xbase   ;;
        "ncurses" ) compile_ncurses ;;
        "terminfo") copy_terminfo   ;;
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
    cd ${_FSHOME_OLD}
}
function compile_packages {
    pkgarr=(default terminfo glibc asmjit xbase ncurses tvision prolog)
    for i in "${pkgarr[@]}"; do echo "" && (compile_$i); done
}
# -------------------------------------------------------------
# check, if a file exists in the directory tree:
# -------------------------------------------------------------
function recompile {
    read -p "would you re-compile $1: [y/n]: " confirm
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
            srcpkg=(terminfo glibc asmjit xbase ncurses tvision prolog)
            for i in "${srcpkg[@]}"; do recompile $i; done
            #
            echo "== [ aborted. ] =="
            exit 2
        fi
    fi
}
# -------------------------------------------------------------
# compile used non-standard packages ...
# -------------------------------------------------------------
function check_libs_exists {
    srclib=(${_FSHOME}/lib/libtvision.a
            ${_FSHOME}/lib/libncurses.a
            ${_FSHOME}/lib/libasmjit.a
            ${_FSHOME}/lib/libxbase64.a
            ${_FSHOME}/lib/libc.a
            ${_FSHOME}/lib/libm.a)
    for i in "${srclib[@]}"; do check_exists $i; done
}
# -------------------------------------------------------------
# if parameter count > 0 then handle these parameter's ...
# -------------------------------------------------------------
function check_parameter {
    if [[ $1 -lt 1 ]]; then
        check_libs_exists
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
function check_dialog_app {
    check_application dialog
    return $?
}
# -------------------------------------------------------------
# setup path
# -------------------------------------------------------------
if [ ! -d "${_FSHOME}/src" ]; then
    echo "== [ create build directory ] =="
    mkdir -p ${_FSHOME}/src
    cd ${_FSHOME}/src
fi
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
# ---------------------------------------------------------
# MinGW (Windows) executables suffix: .exe
# ---------------------------------------------------------
if [[ "${machine}" == "MinGW" ]]; then
    exeSuffix=".exe"; else
    exeSuffix=""
fi
if [[ ${_DIALOG} -eq 1 ]]; then
    check_dialog_app
    check_error $? "could not install dialog application"
    result=$(dialog --stdout --clear --title "== [ Information ] ==" \
    --yes-label "Okay, next"    \
    --no-label "Cancel" --yesno \
"\n\
You are configure your Install script to use\
dialog app during the process.\n\n\
The installation needs some source files to be download from the Internet.\n\n\
If you don't want this, you can Cancel this dialog." 14 56; echo $?)
if [[ ${result} -ne 0 ]]; then
    clear
    echo "== [ aborted. ] =="
    exit 2
fi
clear
echo ${result}
exit 2
fi
# -------------------------------------------------------------
# the following lines are specified to my develop folder tree.
# if you don't need it, then delete them ...
# -------------------------------------------------------------
prepare_status_save
if [[ "${_FSHOME}" != "${_FSHOME_OLD}" ]]; then
    read -p "ATT: Copy new files? [y/n]: " confirm
    if [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]]; then
        echo "== [ Copy new files ] =="
        cp_home prolog.cc
        cp_home prolog64.txt
        cp_home spreadview.cpp
        cp_home spreadview.h
    fi
fi
#
check_parameter $# $1 $2
check_libs_exists

prepare_build
compile_packages

status_restore
# -------------------------------------------------------------
# the final result should be prolog64.exe - the main executable
# -------------------------------------------------------------
echo ""
echo "== [ done. ] =="
exit 0
