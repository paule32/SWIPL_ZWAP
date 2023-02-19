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
// --------------------------------------------------------------------------------
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

const int CVT_NONE   = 0;
const int CVT_ASM    = 1;
const int CVT_PASCAL = 2;   // default ?

int   convert_mode   = 0;

std::wstring iput_file_str;
std::wstring oput_file_str;

std::wifstream iput_file;
std::wofstream oput_file;

//-- FUNCTION DEFINITIONS ---------------------------------

int inline PL_success() { return 0; }
int inline PL_fail   () { return 1; }

std::wstring PL_ident;

wchar_t    PL_lookaheadWChar;
uint64_t   PL_lookaheadPosition;
uint64_t   PL_lineno;
uint64_t   PL_nestedComment;

struct PL_Exception : public std::exception {
	std::string message;
	PL_Exception(std::string msg): message(msg){}
	PL_Exception()               : message(std::string("Prolog Exception.")){}
    const char* what()
	const throw() {
		return message.c_str();
	}
};

void
on_setMode(std::string mode) {
    if (mode == std::string("pascal")) convert_mode = CVT_PASCAL; else
    if (mode == std::string("asm"   )) convert_mode = CVT_ASM;
}

std::wstring
readFile(const std::string filename)
{
    iput_file.imbue(std::locale(std::locale(),
	new std::codecvt_utf8<wchar_t>));
	
    std::wstringstream wss;
    wss << iput_file.rdbuf();

    return wss.str();
}

int
main(int argc, char** argv)
{
	try {
		if (argc < 3)
		throw PL_Exception( std::string("too few arguments.") );

		if (std::string(argv[1]).size() < 1)
		throw PL_Exception( std::string("error: can not open input file.") );
		
		if (std::string(argv[2]).size() < 1)
		throw PL_Exception( std::string("error: can not open output file.") );

		iput_file = std::wifstream( std::string( argv[1] ) );
		iput_file_str  = readFile ( std::string( argv[1] ) );
		
		oput_file = std::wofstream( argv[2] );
		
		PL_lookaheadPosition = -1;
		PL_lineno            =  1;
		PL_nestedComment     =  0;
		
		PL_ident.clear();
		while (1) {
			label_start:
			PL_lookaheadPosition  = PL_lookaheadPosition + 1; if (
			PL_lookaheadPosition >= iput_file_str.size()) break;
			PL_lookaheadWChar     = iput_file_str.at(PL_lookaheadPosition);
		
			if (PL_lookaheadWChar == 0x00)
			break;
		
			if (
			(PL_lookaheadWChar == ' ' ) ||
			(PL_lookaheadWChar == '\t')) {
				continue;
			}
					
			if (PL_lookaheadWChar == '\n') {
				PL_lineno =
				PL_lineno + 1;
				continue;
			}
			
			if (PL_lookaheadWChar == '/')
			{
				PL_lookaheadPosition = PL_lookaheadPosition + 1;
				PL_lookaheadWChar    = iput_file_str.at(
				PL_lookaheadPosition);
					
				if (PL_lookaheadPosition >= iput_file_str.size())
				throw PL_Exception("not yet implemented.");
				
				if (PL_lookaheadWChar == '*')
				{
					PL_nestedComment  =
					PL_nestedComment  + 1;
					
					while (1) {
						label_comment2:
						PL_lookaheadPosition = PL_lookaheadPosition + 1; if (
						PL_lookaheadPosition >= iput_file_str.size())
						throw PL_Exception("unterminated comment");
						
						PL_lookaheadWChar    = iput_file_str.at(
						PL_lookaheadPosition);
					
						if (PL_lookaheadWChar == '\n') {
							PL_lineno =
							PL_lineno + 1;
							continue;
						}

						if (PL_lookaheadWChar == '/') {
							PL_lookaheadPosition = PL_lookaheadPosition + 1; if (
							PL_lookaheadPosition >= iput_file_str.size())
							throw PL_Exception("unterminated comment");
						
							PL_lookaheadWChar  = iput_file_str.at(
							PL_lookaheadPosition);
							
							if (PL_lookaheadWChar == '*') {
								PL_nestedComment  =
								PL_nestedComment+1;
								continue;
							}
						}
						
						if (PL_lookaheadWChar == '*') {
							PL_lookaheadPosition = PL_lookaheadPosition + 1;
							PL_lookaheadWChar    = iput_file_str.at(
							PL_lookaheadPosition);
							
							if (PL_lookaheadPosition >= iput_file_str.size())
							throw PL_Exception("unterminated comment");
						
							if (PL_lookaheadWChar == '/') {
								PL_nestedComment  =
								PL_nestedComment-1; if (
								PL_nestedComment<1)
								break;
							}
						}
					}
				}	else {
					// todo
					throw PL_Exception("not yets implemented.");
				}
			}
			
			// one line comment
			if (PL_lookaheadWChar == '%') {
				label_comment:
				while (1) {
					PL_lookaheadPosition  = PL_lookaheadPosition + 1; if (
					PL_lookaheadPosition >= iput_file_str.size())  break;
					PL_lookaheadWChar     = iput_file_str.at(
					PL_lookaheadPosition);
				
					if (PL_lookaheadWChar == '\n') {
						PL_lineno =
						PL_lineno + 1;
						break;
					}
				}
				
				if (PL_lookaheadPosition >= iput_file_str.size())
				break;
				continue;
			}

			if (
			(PL_lookaheadWChar >= 'a' && PL_lookaheadWChar <= 'z') ||
			(PL_lookaheadWChar >= 'A' && PL_lookaheadWChar <= 'A') ||
			(PL_lookaheadWChar == '_'))
			{
				label_ident:
				PL_ident += PL_lookaheadWChar;
				while (PL_lookaheadPosition !=
				iput_file_str.size())
				{
					PL_lookaheadPosition = PL_lookaheadPosition + 1;
					PL_lookaheadWChar    = iput_file_str.at(
					PL_lookaheadPosition);

					if (PL_lookaheadWChar == '%') {
						if (PL_nestedComment < 1) {
							std::wcout << PL_ident << std::endl;
							PL_ident.clear();
							goto label_start;
						}
					}

					if ((PL_lookaheadWChar == ' ' ) ||
						(PL_lookaheadWChar == '\t')) {
						if (PL_nestedComment < 1) {
							std::wcout << PL_ident << std::endl;
							PL_ident.clear();
							goto label_start;
						}
					}
					
					if (PL_lookaheadWChar == '\n') {
						PL_lineno =
						PL_lineno + 1;
						if (PL_nestedComment < 1) {
							std::wcout << PL_ident << std::endl;
							PL_ident.clear();
						}	break;
					}
					
					if (
					(PL_lookaheadWChar >= 'a' && PL_lookaheadWChar <= 'z') ||
					(PL_lookaheadWChar >= 'A' && PL_lookaheadWChar <= 'A') ||
					(PL_lookaheadWChar >= '0' && PL_lookaheadWChar <= '9') ||
					(PL_lookaheadWChar == '_')) {
						if (PL_nestedComment < 1) {
							goto label_ident;
						}
					}
				}
			}
		}
		std::wcout << std::endl;
		std::wcout << "Compiled: OK" << std::endl;
		std::wcout << "Lines   : " << PL_lineno << std::endl;
	}
	catch (PL_Exception& e)
	{
		std::cout << "error : " << PL_lineno
				  << std::endl
				  << "reason: " << e.message
				  << std::endl;

		return PL_fail();
	}	return PL_success();
}
