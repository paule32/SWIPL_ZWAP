# ----------------------------------------------------------------------------
# File   : CMakeLists.txt
# Author : Jens Kallup (c) 2023-07.01
# License: all rights reserved.
# ----------------------------------------------------------------------------
cmake_minimum_required(VERSION 3.20)
project ("dBaseDSL")

# ----------------------------------------------------------------------------
# since we still useing Delphi 7 (an 32-Bit Windows Pascal IDE), we need to
# tell this to the compiler; because 64-Bit .DLL files can not load from an
# 32-Bit Application/Environment.
# ----------------------------------------------------------------------------
set (CMAKE_C_COMPILER   gcc)
set (CMAKE_CXX_COMPILER g++)

set (CMAKE_RC_COMPILER  windres)

# ----------------------------------------------------------------------------
# required packages ...
# ----------------------------------------------------------------------------
find_package (BISON REQUIRED)
find_package (FLEX REQUIRED)

set (CMAKE_CXX_STANDARD 17) # or 20 if you want..
set (CMAKE_CXX_STANDARD_REQUIRED ON)
set (THREADS_PREFER_PTHREAD_FLAG ON)

# ----------------------------------------------------------------------------
# add compiler flags during compile time
# ----------------------------------------------------------------------------
set (CMAKE_C_FLAGS   "${CMAKE_C_FLAGS}   -s -O2")
set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -s -O2")

# ----------------------------------------------------------------------------
# declare the header files/directory for the project ...
# ----------------------------------------------------------------------------
set (HEADER_FILES ${CMAKE_SOURCE_DIR}/common.h)

# ----------------------------------------------------------------------------
# check, if C compiler installed, and can produce .exe files:
# ----------------------------------------------------------------------------
include (CheckCSourceRuns)
check_c_source_runs(
    "
    #include <stdio.h>
    int main(int argc,char **argv) {
    printf(\"out = %d\",42);
    return 0;
    }
    "
    HAS_C_COMPILER_TRUE
)
# ----------------------------------------------------------------------------
# check, if C++ compiler installed, and can produce .exe files:
# ----------------------------------------------------------------------------
include (CheckCXXSourceRuns)
check_cXX_source_runs(
    "#include <stdio.h>\nint main(int argc,char**argv){printf(\"out = %d\",42);return 0;}"
    HAS_CXX_COMPILER_TRUE
)

# ----------------------------------------------------------------------------
# prepare bison/yacc
# ----------------------------------------------------------------------------
if (BISON_FOUND)
    set (BISON_OUTPUT dBaseDSLparser.cc)
    add_custom_command (
        COMMENT "Generating dBaseDSLparser.cc"
        OUTPUT   ${BISON_OUTPUT}
        COMMAND  ${BISON_EXECUTABLE}
        --output=${BISON_OUTPUT}
        -d
        ${CMAKE_SOURCE_DIR}/dBaseDSL.yy
        DEPENDS ${CMAKE_SOURCE_DIR}/dBaseDSL.yy
    )
else()
    message(FATAL_ERROR "no bison tool found")
endif()

# ----------------------------------------------------------------------------
# prepare flex:
# ----------------------------------------------------------------------------
if (FLEX_FOUND)
    set (FLEX_OUTPUT dBaseDSLscanner.cc)
    add_custom_command (
        COMMENT "Generating dBaseDSLscanner.cc"
        OUTPUT    ${FLEX_OUTPUT}
        COMMAND   ${FLEX_EXECUTABLE}
        --outfile=${FLEX_OUTPUT}
        -d
        ${CMAKE_SOURCE_DIR}/dBaseDSL.ll
        DEPENDS ${CMAKE_SOURCE_DIR}/dBaseDSL.ll
    )
else()
    message(FATAL_ERROR "no flex tool found")
endif()

# ----------------------------------------------------------------------------
# create shared .dll file:
# ----------------------------------------------------------------------------
add_library (dBaseDSL SHARED
    dBaseDSLdllMain.cc
    ${CMAKE_SOURCE_DIR}/build/dBaseDSLparser.cc
    ${CMAKE_SOURCE_DIR}/build/dBaseDSLscanner.cc)

# ----------------------------------------------------------------------------
# include folders for g++
# ----------------------------------------------------------------------------
target_include_directories (dBaseDSL PRIVATE
    ${CMAKE_SOURCE_DIR}
    ${CMAKE_SOURCE_DIR}/build)

#target_link_libraries (dBaseDSL lib)

unset (HAS_C_COMPILER_TRUE CACHE)
unset (HAS_CXX_COMPILER_TRUE CACHE)
