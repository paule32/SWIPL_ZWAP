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
## gcc / fpc tool chain's ...
## see PATH environment variable for correct path's !
##
## Toolchain should be:
## G++ 32-Bit: x86_64-pc-msys  | 64-Bit: x86_64-w64-mingw32
## FPC 32-Bit: win32           | 64-Bit:
## ------------------------------------------------------------------------
GCC_TOOLCHAIN = $(shell gcc -v 2>&1|grep "Target:"|awk '{print $$2}')
FPC_TOOLCHAIN = $(shell fpc -v -iTO)

VERSION   = 0.0.1
DATE      = $(shell date +%F)

GCC       = @${GCC_TOOLCHAIN}-gcc
GXX       = @${GCC_TOOLCHAIN}-g++

FPC       = ${FPC_TOOLCHAIN}/fpc

LD        = $(LINKER) -m i386pe
CFLAGS    = -O2 -fPIC $(EFLAGS) $(DEFINES) -I./inc -Wno-terminate
DEFINES   = -D__WINDOWS__
EFLAGS    =
LIBS      = -L./lib -lswipl.dll

SOURCES   = $(wildcard src/cc/*.cc)
HEADERS   = $(wildcard inc/*.h)

OBJECTS   = ${SOURCES:.cc=.o}

STRIP     = @strip
LINKER    = @ld
COPY      = @cp
ECHO      = @echo
MD        = @mkdir
RM        = @rm -rf
SED       = @sed

## -----------------------------------------------------------------------
## some test's ...
## -----------------------------------------------------------------------
FPC_TARGET =
GCC_TARGET =

DLL32_NAME = zwapwin32
DLL64_NAME = zwapwin64

ifeq ($(FPC_TOOLCHAIN),win32)
  FPC_TARGET := win32
else
  FPC_TARGET := win64
endif
ifeq ($(GCC_TOOLCHAIN),x86_64-pc-msys)
  GCC_TARGET := win32
  EFLAGS     += -m32
else
  GCC_TARGET := win64
  EFLAGS     += -m64
  LIBS       += 
endif

## -----------------------------------------------------------------------
## files that should come with the SWIPL-ZWAPEL project ...
## -----------------------------------------------------------------------
FILES     = README readme.template create_message $(OBJECTS)
VPATH     = tmp

## first rule is "run by default" ...
all: distclean dist
	$(ECHO) "done."

dist: $(FILES)
ifeq ($(GCC_TARGET),win32)
	$(ECHO) "    create lib/$(DLL32_NAME).dll"
	$(GXX) $(CFLAGS) -shared -o lib/$(DLL32_NAME).dll $(OBJECTS)
	$(STRIP) lib/$(DLL32_NAME).dll
	$(COPY)  lib/$(DLL32_NAME).dll src/pl/$(DLL32_NAME).dll
else
	$(ECHO) "    create lib/$(DLL64_NAME).dll"
	$(GXX) $(CFLAGS) -shared -o lib/$(DLL64_NAME).dll $(OBJECTS) $(LIBS)
	$(STRIP) lib/$(DLL64_NAME).dll
	$(COPY)  lib/$(DLL64_NAME).dll src/pl/$(DLL64_NAME).dll
endif

distclean: Welcome
	$(ECHO) "  - remove old files..."
	$(RM) src/*.o
	$(RM) README

README: readme.template
	$(ECHO) "  - initial tasks..."
	$(SED) "s/-VERSION-/$(VERSION)/g; s/-DATE-/$(DATE)/g;" < $< > $@

%.o: %.cc
	$(ECHO) "    compile C++ - $<"
	$(GXX) $(CFLAGS) $< -c -o $@

create_message: ; $(ECHO) "  - compile files:"

## -----------------------------------------------------------------------
## code of conduct: please hold this notice untouched - thanks.
## -----------------------------------------------------------------------
Welcome:
	$(ECHO) $(GCC_TOOLCHAIN)
	$(ECHO) $(FPC_TOOLCHAIN)
	$(ECHO) "Welcome to the SWIPL-ZWAPEL Project $(VERSION)"
	$(ECHO) "(c) $(DATE) by Jens Kallup - paule32"
	$(ECHO) "all rights reserved by MIT License."
	$(ECHO) ""
	$(ECHO) "perform compile, this can take awhile ..."
	$(ECHO) ""
ifeq ($(FPC_TARGET),win32)
	$(ECHO) "Toolchain: FPC - Windows 32-Bit"
	$(ECHO) "Compiler : g++ - Windows 64-Bit"
	$(ECHO) ""
else
	$(ECHO) "Toolchain: not set, compile run aborted."
	$(ECHO) "Compiler : none."
	$(ECHO) ""
	@false
endif
