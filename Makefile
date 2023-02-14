## ------------------------------------------------------------------------
## Makefile - this file is part of my SWI-Prolog Project.
##
## (c) 2023 by Jens Kallup - paule32 <paule32.jk@gmail.com>
## all rights reserved.
##
## only for education, and non-profit use !!!
##
## tested under Windows 11 Professional, 64-Bit.
## To create this libary, you need the MinGW 32/64-Bit Toolchains for
## working under Windows 11.
## ------------------------------------------------------------------------

## ------------------------------------------------------------------------
## for C/C++: 32-bit systems: x86_64-w64-mingw32
## for C/C++: 64-bit systems: x86_64-pc-msys
## ------------------------------------------------------------------------
GCC_TOOLCHAIN = x86_64-w64-mingw32

## ------------------------------------------------------------------------
## for FPC: 32-bit systems: C:/lazarus/i386/fpc/3.2.2/bin/i386-win32
## for FPC: 64-bit systems: C:/lazarus/x86_64/fpc/3.2.2/bin/x86_64-win64
## ------------------------------------------------------------------------
FPC_TOOLCHAIN = C:/lazarus/i386/fpc/3.2.2/bin/i386-win32

VERSION   = 0.0.1
DATE      = $(shell date +%F)

GCC       = @${GCC_TOOLCHAIN}-gcc
GXX       = @${GCC_TOOLCHAIN}-g++

FPC       = ${FPC_TOOLCHAIN}/fpc

LD        = ld -m i386pe
CFLAGS    = -O2 -I./inc -Wno-terminate

SOURCES   = $(wildcard src/*.cc)
HEADERS   = $(wildcard inc/*.h)

OBJECTS   = ${SOURCES:.cc=.o}

ECHO      = @echo
MD        = @mkdir
RM        = @rm -rf
SED       = @sed

## -----------------------------------------------------------------------
## files that should come with the SWIPL-ZWAPEL project ...
## -----------------------------------------------------------------------
FILES     = README readme.template create_message $(OBJECTS)
VPATH     = tmp

## first rule is "run by default" ...
all: distclean dist
	$(ECHO) "done."

libkgui: lib/libswipl.dll.a
	$(ECHO) "ssss"

dist: $(FILES) 
	$(ECHO) "  - create library..."

%.o: %.cc
	$(ECHO) "    compile C++ - $<"
	$(GXX) $(CFLAGS) $< -c -o $@

distclean: Welcome
	$(ECHO) "  - remove old files..."
	$(RM) src/*.o
	$(RM) README

README: readme.template
	$(ECHO) "  - initial tasks..."
	$(SED) "s/-VERSION-/$(VERSION)/g; s/-DATE-/$(DATE)/g;" < $< > $@

create_message: ; $(ECHO) "  - compile files:"

## -----------------------------------------------------------------------
## code of conduct: please hold this notice untouched - thanks.
## -----------------------------------------------------------------------
Welcome:
	$(ECHO) "Welcome to the SWIPL-ZWAPEL Project $(VERSION)"
	$(ECHO) "(c) $(DATE) by Jens Kallup - paule32"
	$(ECHO) "all rights reserved by MIT License."
	$(ECHO) ""
	$(ECHO) "perform compile, this can take awhile ..."
