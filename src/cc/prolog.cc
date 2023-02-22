// --------------------------------------------------------------------------------
// MIT License
//
// Copyright (c) 2023 Jens Kallup
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
//
/*! \mainpage Zwapel Project
 *
 * This is the Programer's Documentation for the Zwapel Project.<br>
 * Zwapel is a SWIPL Clone, which you can download <a href="">here</a>.
 *
 * - pageTOC Content
 *
 */
// --------------------------------------------------------------------------------

// ---------------------------------------------------------------------
// remote assembly headers ...
// ---------------------------------------------------------------------
# include <asmjit/core.h>
# include <asmjit/x86.h>

// ---------------------------------------------------------------------
// standard c header
// ---------------------------------------------------------------------
# include <stdio.h>
# include <stdlib.h>
# include <strings.h>
# include <ctype.h>
# include <wchar.h>
# include <limits.h>
# include <unistd.h>
# include <getopt.h>
# include <limits.h>
# include <sys/types.h>
# include <sys/stat.h>

// ---------------------------------------------------------------------
// c++ header
// ---------------------------------------------------------------------
# include <iostream>
# include <string>
# include <sstream>
# include <fstream>
# include <istream>
# include <codecvt>
# include <exception>
# include <vector>
# include <algorithm>
# include <iterator>
# include <csignal>
# include <type_traits>
# include <typeinfo>

// ---------------------------------------------------------------------
// namespace placeholder.
// ---------------------------------------------------------------------
using namespace asmjit;
using namespace x86;
using namespace std;

// ---------------------------------------------------------------------
// const, variables.
// ---------------------------------------------------------------------
namespace prolog {

#define STDCOUT  std::cout

const int CVT_NONE   = 0;
const int CVT_ASM    = 1;
const int CVT_PASCAL = 2;   // default ?

int   convert_mode   = 0;

// ---------------------------------------------------------------------
// misc helper functions:
// ---------------------------------------------------------------------
class PL_helper {
public:
	//-- FUNCTION DEFINITIONS ---------------------------------
	int PL_success() { return 0; }
	int PL_fail   () { return 1; }
};

// ---------------------------------------------------------------------
// This application provides support for multiple locales. As such, you
// have to specified, which charset do you would like to use.
// charset UTF-8 use multibyte character settings, where the rest is
// reserved for ANSI style characters.
// ---------------------------------------------------------------------
template <typename T1>
class PL_Exception : public std::exception
{
	T1 message;

public:
	PL_Exception(T1 msg): message(msg){}
	PL_Exception()      : message("Prolog Exception."){}
    const char* what()
	const throw() {
		return message.c_str();
	}
};

template <typename T1>
struct PL_stream {
	static_assert(sizeof(T1) && false,
	"T1 must be either std::string or std::wstring");
	T1 readFile(const T1) { }
};

// -----------------------------------------------------------------------
// our encoder class for multiple locales (character set's) ...
// -----------------------------------------------------------------------
template <typename T1>
class PL_Encoder
{
	std::basic_ifstream< T1 > ifile;
	std::basic_ofstream< T1 > ofile;

	uint8_t   c_size;

public:
	T1 PL_lookaheadChar;      // parsed char
	::std::basic_string       < T1 > PL_ident;
	::std::basic_stringstream < T1 > PL_source;

	using PosType = typename std::conditional< std::is_same< T1, char>::value,
		  uint32_t, uint64_t   >::type;

	PosType  PL_lookaheadPosition;
	PosType  PL_nestedComment;
	PosType  PL_lineno;
	PosType  PL_size;
	
	uint16_t PL_buffer;

public:
	//-- CONSTRUCTORS DEFINITIONS -----------------------------
	PL_Encoder(std::basic_string< T1 >&) {
	}
	PL_Encoder(std::basic_string< T1 >) {
	}
	PL_Encoder(char&) {
	}
	PL_Encoder(char) {
	}
	PL_Encoder() {
	}

	//-- FUNCTION DEFINITIONS ---------------------------------
	uint16_t getch()
	{
		char buffer[4];
			PL_lookaheadPosition  = PL_lookaheadPosition + 1;
		if (PL_lookaheadPosition >= PL_size) return 0x0;
		if (c_size < 1) {
			PL_Exception<std::string> ex("data get underflow.");
			throw ex;
		}	else
		if (c_size < 2) {
			PL_source.get(buffer,1);
			PL_buffer = ((uint16_t) buffer[0] << 8) | 0x00;
		}	else
		if (c_size < 3) {
			PL_source.get(buffer,2);
			PL_buffer = ((uint16_t) buffer[0] << 8) | buffer[1];
		}
		return PL_buffer;
	}

	std::basic_string< T1 >
	PL_parseFile(const std::basic_string< T1 > &filename, PL_Encoder &in)
	{
		if (std::is_same< T1, char       >::value) { ifile.open(filename); c_size = sizeof(char); } else
		if (std::is_same< T1, std::string>::value) { ifile.open(filename); c_size = sizeof(char); }
		else {
			ifile.imbue(std::locale(std::locale(),
			new std::codecvt_utf8< wchar_t >));
			c_size = sizeof(wchar_t);
		}
		
		if (ifile.is_open()) {
			PL_source << ifile.rdbuf();
			
			// get size
			PL_source.seekg(0, std::ios::end);
			PL_size = PL_source.tellg();
			PL_source.seekg(0, std::ios::beg);
			
			return PL_source.str();
		}	else {
			PL_Exception< std::string > ex("input file read error");
			throw ex;
		}
		
		in.PL_ident.clear();

		while (1) {
			label_start:
			if (!(in.PL_lookaheadChar = in.getch()))
			break;

			if (
			(in.PL_lookaheadChar == ' ' ) ||
			(in.PL_lookaheadChar == '\t')) {
				continue;
			}
					
			if (in.PL_lookaheadChar == '\n') {
				in.PL_lineno =
				in.PL_lineno + 1;
				continue;
			}
			
			if (in.PL_lookaheadChar == '/')
			{
				if (!(in.PL_lookaheadChar = in.getch())) {
					PL_Exception<std::string> ex("not yet implemented.");
					throw ex;
				}
				
				if (in.PL_lookaheadChar == '*')
				{
					in.PL_nestedComment  =
					in.PL_nestedComment  + 1;
					
					while (1) {
						label_comment2:
						if (!(in.PL_lookaheadChar = in.getch())) {
							PL_Exception<std::string> ex("unterminated comment");
							throw ex;
						}
					
						if (in.PL_lookaheadChar == '\n') {
							in.PL_lineno =
							in.PL_lineno + 1;
							continue;
						}

						if (in.PL_lookaheadChar == '/') {
							if (!(in.PL_lookaheadChar = in.getch())) {
								PL_Exception<std::string> ex("unterminated comment");
								throw ex;
							}
							
							if (in.PL_lookaheadChar == '*') {
								in.PL_nestedComment =
								in.PL_nestedComment + 1;
								continue;
							}
						}
						
						if (in.PL_lookaheadChar == '*') {
							if (!(in.PL_lookaheadChar = in.getch())) {
								PL_Exception<std::string> ex("unterminated comment");
								throw ex;
							}
						
							if (in.PL_lookaheadChar == '/') {
								in.PL_nestedComment  =
								in.PL_nestedComment - 1; if (
								in.PL_nestedComment < 1)
								break;
							}
						}
					}
				}	else {
					// todo
					PL_Exception<std::string> ex("not yets implemented.");
					throw ex;
				}
			}
			
			// one line comment
			if (in.PL_lookaheadChar == '%') {
				label_comment:
				while (1) {
					if (!(in.PL_lookaheadChar = in.getch()))
					break;
				
					if (in.PL_lookaheadChar == '\n') {
						in.PL_lineno =
						in.PL_lineno + 1;
						break;
					}
				}
				
				if (in.PL_lookaheadPosition >= in.PL_size)
				break;
				continue;
			}

			if (
			(in.PL_lookaheadChar >= 'a' && in.PL_lookaheadChar <= 'z') ||
			(in.PL_lookaheadChar >= 'A' && in.PL_lookaheadChar <= 'A') ||
			(in.PL_lookaheadChar == '_'))
			{
				label_ident:
				in.PL_ident += in.PL_lookaheadChar;

				while (
				in.PL_lookaheadPosition !=
				in.PL_size)
				{
						in.PL_lookaheadChar = in.getch();
					if (in.PL_lookaheadChar == '\n') {
						STDCOUT        <<
						in.PL_ident << std::endl;
						in.PL_ident.clear();
						in.PL_lineno =
						in.PL_lineno + 1;
						break;
					}
					
					if (
					(in.PL_lookaheadChar >= 'a' && in.PL_lookaheadChar <= 'z') ||
					(in.PL_lookaheadChar >= 'A' && in.PL_lookaheadChar <= 'A') ||
					(in.PL_lookaheadChar >= '0' && in.PL_lookaheadChar <= '9') ||
					(in.PL_lookaheadChar == '_')) {
						if (in.PL_nestedComment < 1) {
							goto label_ident;
						}
					}
					else {
						STDCOUT <<
						in.PL_ident << std::endl;
						in.PL_ident.clear();
						break;
					}
				}
			}
		}
	}
};

void
on_setMode(std::string mode) {
    if (mode == std::string("pascal")) convert_mode = CVT_PASCAL; else
    if (mode == std::string("asm"   )) convert_mode = CVT_ASM;
}

}	// namespace: prolog

// ---------------------------------------------------------------------
// test case entry point ...
// ---------------------------------------------------------------------
using namespace prolog;
int
main(int argc, char** argv)
{
	#if __CHARSET_UTF8__
	PL_Encoder<wchar_t> input ;
	PL_Encoder<wchar_t> output;
	#else
	PL_Encoder<char   > input ;
	PL_Encoder<char   > output;
	#endif

	//-- INITIAL STUFF ----------------------------------------
	input.PL_lookaheadPosition = -1;
	input.PL_lineno            =  1;
	input.PL_nestedComment     =  0;
	
	try {
		if (argc < 3) {
			PL_Exception<std::string> ex("too few arguments.");
			throw ex;
		}
		if (std::string(argv[1]).size() < 1) {
			PL_Exception<std::string> ex("error: can not open input file.");
			throw ex;
		}
		if (std::string(argv[2]).size() < 1) {
			PL_Exception<std::string> ex("error: can not open output file.");
			throw ex;
		}

		input.PL_parseFile( std::string( argv[1] ), input );

		STDCOUT
		<< std::endl
		<< "Compiled: OK" << std::endl
		<< "Lines   : "   << input.PL_lineno << std::endl;
	}
	catch (PL_Exception<std::string>& e)
	{
		STDCOUT
		<< "error : " << input.PL_lineno
		<< std::endl
		<< "reason: " << e.what()
		<< std::endl;

		return 1;
	}	return 0;
}
