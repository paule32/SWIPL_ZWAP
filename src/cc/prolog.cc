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
//! \mainpage Zwapel Project
//!
//! This is the Programer's Documentation for the Zwapel Project.<br>
//! Zwapel is a SWIPL Clone, which you can download <a href="">here</a>.
//!
//! ### Namespace
//!
//!   - \ref zwapel - zwapel namespace provides support for X86/X64 remote
//!     assembly, to speed up the free Prolog System SWIPL.<br>
//!     SWIPL can download from this <a href="https://www.swi-prolog.org/">link</a>.
//!
//! SWI-Prolog offers a comprehensive free Prolog environment.
//! Since its start in 1987, SWI-Prolog development has been driven by the needs<br>
//! of real world applications. SWI-Prolog is widely used in research and education
//! as well as commercial applications. Join over a million users <br>
//! who have downloaded SWI-Prolog.
//!
//! ### Legal
//!
//!   - zwapel is distributed under the MIT license. Some of the used libraries
//!     and extension packages have different license conditions. <br>
//!     The licenses applicable to a running configuration can be examined by
//!     running license/0. See license for details.
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
	PL_Exception()      : message("Application Exception."){}
    const char* what()
	const throw() {
		return message.c_str();
	}
};

template <typename T1>
class PL_Exception_CommandLine: public PL_Exception< T1 > {
using PL_Exception< T1 >::PL_Exception;
};

// ---------------------------------------------------------------------
//! This is a helper class for the zwapel Prolog classes.
//!
//! The class contains misc. help functions that will be use multiple
//! times in the source code.<br>
//! It is not the main class, so they can be a little bit twisted till
//! the end product class system will be reached a profesional stage.
// ---------------------------------------------------------------------
class PL_helper {
public:
	//-- CONSTRUCTORS DEFINITIONS -----------------------------
	PL_helper() {
		#ifdef DEBUG
		::std::cout << "ctor: PL_helper ()" <<
		::std::endl;
		#endif
	}
	~PL_helper() {
		#ifdef DEBUG
		::std::cout << "dtor: ~PL_helper ()" <<
		::std::endl;
		#endif
	}
	
	//-- FUNCTION DEFINITIONS ---------------------------------

	//! \fn int PL_helper::PL_success() 
	//! \brief Prolog member function, that return TRUE on success rule.
	
	//! \fn int PL_helper::PL_fail() 
	//! \brief Prolog member function, that return FALSE on fail rule.
	int PL_success() { return 0; }
	int PL_fail   () { return 1; }
};

// -----------------------------------------------------------------------
// our encoder class for multiple locales (character set's) ...
// -----------------------------------------------------------------------
template <typename T1>
class PL_Parser
{
	//-- INITIAL STUFF ----------------------------------------
	void init() {
		PL_lookaheadPosition = 0;
		PL_lineno            = 1;
		PL_nestedComment     = 0;
	}

public:
	std::basic_ifstream< T1 > ifile;
	std::basic_ofstream< T1 > ofile;

	uint32_t PL_type_size;
	uint32_t PL_file_size;

	T1 PL_lookaheadChar;      // parsed char

	::std::basic_string       < T1 > PL_ident;
	::std::basic_stringstream < T1 > PL_source;

	using PosType = typename std::conditional< std::is_same< T1, char>::value,
		  uint32_t, uint64_t   >::type;

public:
	PosType PL_lookaheadPosition;
	PosType PL_nestedComment;
	PosType PL_lineno;

public:
	//-- CONSTRUCTORS DEFINITIONS -----------------------------
	PL_Parser(std::basic_string< T1 >&) {
		#ifdef DEBUG
		::std::cout << "ctor: PL_parser std::basic_string< T1 >&" <<
		::std::endl;
		#endif
		init();
	}
	PL_Parser(std::basic_string< T1 >) {
		#ifdef DEBUG
		::std::cout << "ctor: PL_parser std::basic_string< T1 >" <<
		::std::endl;
		#endif
		init();
	}
	PL_Parser(char&) {
		#ifdef DEBUG
		::std::cout << "ctor: PL_parser char&" <<
		::std::endl;
		#endif
		init();
	}
	PL_Parser(char) {
		#ifdef DEBUG
		::std::cout << "ctor: PL_parser char" <<
		::std::endl;
		#endif
		init();
	}
	PL_Parser() {
		#ifdef DEBUG
		::std::cout << "ctor: PL_parser ()" <<
		::std::endl;
		#endif
		init();
	}
	~PL_Parser() {
		#ifdef DEBUG
		::std::cout << "dtor: ~PL_parser ()" <<
		::std::endl;
		#endif
	}

	//-- FUNCTION DEFINITIONS ---------------------------------
	T1 PL_getch()
	{
		char buffer[4];

		if (PL_lookaheadPosition >= PL_file_size) return 0x0;
		if (PL_type_size < 1) {
			PL_Exception<std::string> ex("data get underflow.");
			throw ex;
		}	else
		if (PL_type_size < 2) {
			PL_lookaheadChar  =
			PL_source.str().c_str()[
			PL_lookaheadPosition++];
		}	else
		if (PL_type_size < 3) {
			PL_source.get(buffer,2);
			PL_lookaheadChar = ((uint16_t) buffer[0] << 8) | buffer[1];
		}
		return PL_lookaheadChar;
	}
	
	T1 PL_ungetch()
	{
		if (PL_type_size < 1) {
			PL_Exception<std::string> ex("data set underflow.");
			throw ex;
		}	else
		if (PL_type_size < 2) {
			PL_lookaheadPosition -= 1;
			PL_lookaheadChar  =
			PL_source.str().c_str()[PL_lookaheadPosition];
		}	else
		if (PL_type_size < 3) {
			PL_lookaheadPosition -= 2;
			PL_lookaheadChar =
			PL_source.str().c_str()[PL_lookaheadPosition];
		}
		return PL_lookaheadChar;
	}
	
	void PL_prepare(const ::std::basic_string< T1 > &filename)
	{
		if (::std::is_same< T1, char         >::value) { ifile.open(filename); } else
		if (::std::is_same< T1, ::std::string>::value) { ifile.open(filename); }
		else {
			ifile.imbue(::std::locale(std::locale(), new ::std::codecvt_utf8< wchar_t >));
			PL_type_size = sizeof( wchar_t );
		}
		
		if (ifile.is_open()) {
			PL_source << ifile.rdbuf();
			PL_type_size = sizeof( char );
			
			// get size
			PL_source.seekg(0, ::std::ios::end );
			PL_file_size  =
			PL_source.tellp();
			PL_source.seekp(0, ::std::ios::beg );
			
		}	else {
			PL_Exception< ::std::string > ex("input file read error");
			throw ex;
		}
		
		PL_ident.clear();
	}
	
	T1 PL_parse_ident()
	{
		if ((
		(PL_lookaheadChar >= 'a')  &&
		(PL_lookaheadChar <= 'z')) ||
		(
		(PL_lookaheadChar >= 'A')  &&
		(PL_lookaheadChar <= 'Z')) ||
		(
		(PL_lookaheadChar == '_')))
		{
			label_ident:
			PL_ident +=
			PL_lookaheadChar;

			while (
			PL_lookaheadPosition !=
			PL_file_size)
			{
				PL_lookaheadChar = PL_getch();
				if ((
				(PL_lookaheadChar >= 'a')  &&
				(PL_lookaheadChar <= 'z')) ||
				(
				(PL_lookaheadChar >= 'A')  &&
				(PL_lookaheadChar <= 'Z')) ||
				(
				(PL_lookaheadChar >= '0')  &&
				(PL_lookaheadChar <= '9')) ||
				(
				(PL_lookaheadChar == '_'))) {
					if (PL_nestedComment < 1)
					goto label_ident;
				}
				else if (PL_lookaheadChar == '\n') {
					PL_lineno =
					PL_lineno + 1;
					break;
				}
				else if (PL_lookaheadChar == '\t') break;
				else if (PL_lookaheadChar == ' ' ) break;
				else {
					PL_lookaheadChar = PL_ungetch();
					break;
				}
			}
		}
		return PL_lookaheadChar;
	}

	uint8_t PL_skip_white_spaces()
	{
		if (PL_lookaheadChar == 0x00) {
		if (PL_lookaheadPosition >=
			PL_file_size)
			return 0;
		}
	
		if (
		(PL_lookaheadChar == ' ' ) ||
		(PL_lookaheadChar == '\t')) {
			if (PL_ident.size() > 0) {
				::std::cout <<
				PL_ident << ::std::endl;
				PL_ident.clear();
			}	else {
				return 1;
			}
		}

		if (PL_lookaheadChar == '\n') {
			PL_lineno =
			PL_lineno + 1;
			return 2;
		}
	}
	
	void PL_skip_comment_cpp(void)
	{
		if (PL_lookaheadChar == '/') {
			PL_getch();
			
			if (PL_Parser< T1 >::PL_lookaheadChar == '/') {
				while (PL_lookaheadPosition != PL_file_size)
				{
					PL_lookaheadChar =
					PL_getch(); if (
					PL_lookaheadChar == '\n') {
					PL_lineno += 1;
					break;
					}
				}
			}
			else if (PL_lookaheadChar == '*') {
				while ( PL_lookaheadPosition != PL_file_size) {
						PL_lookaheadChar = PL_getch(); if (
						PL_lookaheadChar == '*') {
						PL_lookaheadChar = PL_getch(); if (
						PL_lookaheadChar == '/')
						break;
					}
				}
			}
		}
	}
	
	void PL_skip_comment_c(void)
	{
		if (PL_lookaheadChar == '/')
		{
			if (!(PL_lookaheadChar = PL_getch())) {
				PL_Exception<std::string> ex("not yet implemented.");
				throw ex;
			}
			
			if (PL_lookaheadChar == '*')
			{
				PL_nestedComment  =
				PL_nestedComment  + 1;
				
				while (PL_lookaheadPosition != PL_file_size) {
					label_comment2:
					if (!(PL_lookaheadChar = PL_getch())) {
						PL_Exception< std::string > ex("unterminated comment");
						throw ex;
					}
				
					if (PL_lookaheadChar == '\n') {
						PL_lineno =
						PL_lineno + 1;
						continue;
					}

					if (PL_lookaheadChar == '/') {
						if (!(PL_lookaheadChar = PL_getch())) {
							PL_Exception<std::string> ex("unterminated comment");
							throw ex;
						}
						
						if (PL_lookaheadChar == '*') {
							PL_nestedComment += 1;
							continue;
						}
					}
					
					if (PL_lookaheadChar == '*') {
						if (!(PL_lookaheadChar = PL_getch())) {
							PL_Exception<std::string> ex("unterminated comment");
							throw ex;
						}
					
						if (PL_lookaheadChar == '/') {
							PL_nestedComment =
							PL_nestedComment - 1;
							
							if (PL_nestedComment < 1)
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
	}
	
	void PL_skip_comment_pas(void)
	{
		if (PL_lookaheadChar == '{')
		{
			if (!(PL_lookaheadChar = PL_getch())) {
				PL_Exception<std::string> ex("not yet implemented.");
				throw ex;
			}
			while (PL_lookaheadPosition != PL_file_size)
			{
				PL_lookaheadChar =
				PL_getch();
				if (PL_lookaheadChar == '\n') {
					PL_lineno += 1;
				}	else if (
					PL_lookaheadChar == '}') {
					break;
				}
			}
		}
		else if (PL_lookaheadChar == '(')
		{
			if (!(PL_lookaheadChar = PL_getch())) {
				PL_Exception<std::string> ex("not yet implemented.");
				throw ex;
			}
			
			if (PL_lookaheadChar == '*')
			{
				PL_nestedComment =
				PL_nestedComment + 1;
				
				while (PL_lookaheadPosition != PL_file_size) {
					label_comment2:
					if (!(PL_lookaheadChar = PL_getch())) {
						PL_Exception< std::string > ex("unterminated comment");
						throw ex;
					}
				
					if (PL_lookaheadChar == '\n') {
						PL_lineno =
						PL_lineno + 1;
						continue;
					}

					if (PL_lookaheadChar == '(') {
						if (!(PL_lookaheadChar = PL_getch())) {
							PL_Exception<std::string> ex("unterminated comment");
							throw ex;
						}
						
						if (PL_lookaheadChar == '*') {
							PL_nestedComment =
							PL_nestedComment + 1;
							continue;
						}
					}
					
					if (PL_lookaheadChar == '*') {
						if (!(PL_lookaheadChar = PL_getch())) {
							PL_Exception<std::string> ex("unterminated comment");
							throw ex;
						}
					
						if (PL_lookaheadChar == ')') {
							PL_nestedComment =
							PL_nestedComment - 1;
							
							if (PL_nestedComment < 1)
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
	}
};

template <typename T1>
class PL_Prolog: public PL_Parser< T1 >
{
public:
	//-- CONSTRUCTORS DEFINITIONS -----------------------------
	PL_Prolog(::std::basic_string< T1 >&) {
		#ifdef DEBUG
		::std::cout << "ctor: PL_Prolog std::basic_string< T1 >&" <<
		::std::endl;
		#endif
	}
	PL_Prolog(::std::basic_string< T1 >) {
		#ifdef DEBUG
		::std::cout << "ctor: PL_Prolog std::basic_string< T1 >" <<
		::std::endl;
		#endif
	}
	PL_Prolog(char&) {
		#ifdef DEBUG
		::std::cout << "ctor: PL_Prolog char&&" <<
		::std::endl;
		#endif
	}
	PL_Prolog(char) {
		#ifdef DEBUG
		::std::cout << "ctor: PL_Prolog char" <<
		::std::endl;
		#endif
	}
	PL_Prolog() {
		#ifdef DEBUG
		::std::cout << "ctor: PL_Prolog ()" <<
		::std::endl;
		#endif
	}
	~PL_Prolog() {
		#ifdef DEBUG
		::std::cout << "ctor: ~PL_Prolog ()" <<
		::std::endl;
		#endif
	}

	//-- FUNCTION DEFINITIONS ---------------------------------
	void PL_parseFile(const ::std::basic_string< T1 > &filename )
	{
			PL_Parser< T1 >::PL_prepare(filename);
		while (
			PL_Parser< T1 >::PL_lookaheadPosition !=
			PL_Parser< T1 >::PL_file_size)
		{
			label_start:
			PL_Parser< T1 >::PL_lookaheadChar = PL_Parser< T1 >::PL_getch(); if (!
			PL_Parser< T1 >::PL_skip_white_spaces()) break;
			PL_Parser< T1 >::PL_skip_comment_cpp();
			PL_Parser< T1 >::PL_skip_comment_c();
			
			// one line comment
			if (PL_Parser< T1 >::PL_lookaheadChar == '%') {
				label_comment:
				while (1) {
					if (!(PL_Parser< T1 >::PL_lookaheadChar = PL_Parser< T1 >::PL_getch()))
					break;
				
					if (PL_Parser< T1 >::PL_lookaheadChar == '\n') {
						PL_Parser< T1 >::PL_lineno =
						PL_Parser< T1 >::PL_lineno + 1;
						break;
					}
				}
				
				if (PL_Parser< T1 >::PL_lookaheadPosition >=
					PL_Parser< T1 >::PL_file_size)
					break;

				continue;
			}

				PL_Parser< T1 >::PL_lookaheadChar =
				PL_Parser< T1 >::PL_parse_ident();
			if (PL_Parser< T1 >::PL_ident.size() > 0)
			{
				std::cout << PL_Parser< T1 >::PL_ident << std::endl;
				PL_Parser< T1 >::PL_ident.clear();
			}
		}
	}
};

template <typename T1>
class PL_dBase: public PL_Parser< T1 >
{
public:
	//-- CONSTRUCTORS DEFINITIONS -----------------------------
	PL_dBase(std::basic_string< T1 >&) {
		#ifdef DEBUG
		::std::cout << "ctor: PL_dBase std::basic_string< T1 >&" <<
		::std::endl;
		#endif
	}
	PL_dBase(std::basic_string< T1 >) {
		#ifdef DEBUG
		::std::cout << "ctor: PL_dBase std::basic_string< T1 >" <<
		::std::endl;
		#endif
	}
	PL_dBase(char&) {
		#ifdef DEBUG
		::std::cout << "ctor: PL_dBase char&" <<
		::std::endl;
		#endif
	}
	PL_dBase(char) {
		#ifdef DEBUG
		::std::cout << "ctor: PL_dBase char" <<
		::std::endl;
		#endif
	}
	PL_dBase() {
		#ifdef DEBUG
		::std::cout << "ctor: PL_dBase ()" <<
		::std::endl;
		#endif
	}
	~PL_dBase() {
		#ifdef DEBUG
		::std::cout << "dtor: ~PL_dBase ()" <<
		::std::endl;
		#endif
	}

	//-- FUNCTION DEFINITIONS ---------------------------------
	void PL_parseFile(const ::std::basic_string< T1 > &filename )
	{
			PL_Parser< T1 >::PL_prepare(filename);
		while (
			PL_Parser< T1 >::PL_lookaheadPosition !=
			PL_Parser< T1 >::PL_file_size)
		{
			label_start:
			PL_Parser< T1 >::PL_lookaheadChar = PL_Parser< T1 >::PL_getch(); if (!
			PL_Parser< T1 >::PL_skip_white_spaces ()) break;
			PL_Parser< T1 >::PL_skip_comment_cpp  ();
			PL_Parser< T1 >::PL_skip_comment_dbase();
		}
	}
};

template <typename T1>
class PL_Pascal: public PL_Parser< T1 >
{
public:
	//-- CONSTRUCTORS DEFINITIONS -----------------------------
	PL_Pascal(std::basic_string< T1 >&) {
		#ifdef DEBUG
		::std::cout << "ctor: PL_Pascal std::basic_string< T1 >&" <<
		::std::endl;
		#endif
	}
	PL_Pascal(std::basic_string< T1 >) {
		#ifdef DEBUG
		::std::cout << "ctor: PL_Pascal std::basic_string< T1 >" <<
		::std::endl;
		#endif
	}
	PL_Pascal(char&) {
		#ifdef DEBUG
		::std::cout << "ctor: PL_Pascal char&" <<
		::std::endl;
		#endif
	}
	PL_Pascal(char) {
		#ifdef DEBUG
		::std::cout << "ctor: PL_Pascal char" <<
		::std::endl;
		#endif
	}
	PL_Pascal() {
		#ifdef DEBUG
		::std::cout << "ctor: PL_Pascal ()" <<
		::std::endl;
		#endif
	}
	~PL_Pascal() {
		#ifdef DEBUG
		::std::cout << "dtor: ~PL_Pascal ()" <<
		::std::endl;
		#endif
	}

	//-- FUNCTION DEFINITIONS ---------------------------------
	void PL_parseFile(const ::std::basic_string< T1 > &filename )
	{
			PL_Parser< T1 >::PL_prepare(filename);
		while (
			PL_Parser< T1 >::PL_lookaheadPosition !=
			PL_Parser< T1 >::PL_file_size)
		{
			label_start:
			PL_Parser< T1 >::PL_lookaheadChar = PL_Parser< T1 >::PL_getch(); if (!
			PL_Parser< T1 >::PL_skip_white_spaces()) break;
			PL_Parser< T1 >::PL_skip_comment_pas ();
			PL_Parser< T1 >::PL_skip_comment_cpp ();
			
			PL_Parser< T1 >::PL_lookaheadChar =
			PL_Parser< T1 >::PL_parse_ident();
			if (
			PL_Parser< T1 >::PL_ident.size() > 0)
			{
				std::cout << PL_Parser< T1 >::PL_ident << std::endl;
				PL_Parser< T1 >::PL_ident.clear();
			}
		}
	}
};

template <typename T1>
class PL_cLang: public PL_Parser< T1 >
{
public:
	//-- CONSTRUCTORS DEFINITIONS -----------------------------
	PL_cLang(std::basic_string< T1 >&) {
		#ifdef DEBUG
		::std::cout << "ctor: PL_cLang std::basic_string< T1 >&" <<
		::std::endl;
		#endif
	}
	PL_cLang(std::basic_string< T1 >) {
		#ifdef DEBUG
		::std::cout << "ctor: PL_cLang std::basic_string< T1 >" <<
		::std::endl;
		#endif
	}
	PL_cLang(char&) {
		#ifdef DEBUG
		::std::cout << "ctor: PL_cLang char&" <<
		::std::endl;
		#endif
	}
	PL_cLang(char) {
		#ifdef DEBUG
		::std::cout << "ctor: PL_cLang char" <<
		::std::endl;
		#endif
	}
	PL_cLang() {
		#ifdef DEBUG
		::std::cout << "ctor: PL_cLang ()" <<
		::std::endl;
		#endif
	}
	~PL_cLang() {
		#ifdef DEBUG
		::std::cout << "dtor: ~PL_cLang ()" <<
		::std::endl;
		#endif
	}

	//-- FUNCTION DEFINITIONS ---------------------------------
	void PL_parseFile(const ::std::basic_string< T1 > &filename )
	{
			PL_Parser< T1 >::PL_prepare(filename);
		while (
			PL_Parser< T1 >::PL_lookaheadPosition !=
			PL_Parser< T1 >::PL_file_size)
		{
			label_start:
			PL_Parser< T1 >::PL_lookaheadChar = PL_Parser< T1 >::PL_getch(); if (!
			PL_Parser< T1 >::PL_skip_white_spaces()) break;
			PL_Parser< T1 >::PL_skip_comment_cpp();
			PL_Parser< T1 >::PL_skip_comment_c();
		}
	}
};

template <typename T1>
class Application: public T1 {
public:
	Application() {
		#ifdef DEBUG
		::std::cout << "ctor: PL_Application ()" <<
		::std::endl;
		#endif
	}
	~Application() {
		#ifdef DEBUG
		::std::cout << "dtor: ~PL_Application ()" <<
		::std::endl;
		#endif
	}
};

template <typename T1>
class Server: public T1 {
public:
	Server() {
		#ifdef DEBUG
		::std::cout << "ctor: PL_Server ()" <<
		::std::endl;
		#endif
	}
	~Server() {
		#ifdef DEBUG
		::std::cout << "ctor: ~PL_Server ()" <<
		::std::endl;
		#endif
	}
};

template <typename T1>
class Client: public T1 {
public:
	Client() {
		#ifdef DEBUG
		::std::cout << "ctor: PL_Client ()" <<
		::std::endl;
		#endif
	}
	~Client() {
		#ifdef DEBUG
		::std::cout << "dtor: ~PL_Client ()" <<
		::std::endl;
		#endif
	}
};

template <typename T1>
class Html: public T1 {
public:
	Html() {
		#ifdef DEBUG
		::std::cout << "ctor: PL_Html ()" <<
		::std::endl;
		#endif
	}
	~Html() {
		#ifdef DEBUG
		::std::cout << "dtor: ~PL_Html ()" <<
		::std::endl;
		#endif
	}
};

template <typename T1>
class Ftp: public T1 {
public:
	Ftp() {
		#ifdef DEBUG
		::std::cout << "ctor: PL_Ftp ()" <<
		::std::endl;
		#endif
	}
	~Ftp() {
		#ifdef DEBUG
		::std::cout << "dtor: ~PL_Ftp ()" <<
		::std::endl;
		#endif
	}
};

template <typename T1>
class Desktop: public T1 {
public:
	Desktop() {
		#ifdef DEBUG
		::std::cout << "ctor: PL_Desktop ()" <<
		::std::endl;
		#endif
	}
	~Desktop() {
		#ifdef DEBUG
		::std::cout << "dtor: ~PL_Desktop ()" <<
		::std::endl;
		#endif
	}
};

template <typename T1>
class Console: public T1 {
public:
	Console() {
		#ifdef DEBUG
		::std::cout << "ctor: PL_Console ()" <<
		::std::endl;
		#endif
	}
	~Console() {
		#ifdef DEBUG
		::std::cout << "dtor: ~PL_Console ()" <<
		::std::endl;
		#endif
	}
};

template <typename T1>
class Win32API: public T1 {
public:
	Win32API() {
		#ifdef DEBUG
		::std::cout << "ctor: PL_Win32API ()" <<
		::std::endl;
		#endif
	}
	~Win32API() {
		#ifdef DEBUG
		::std::cout << "dtor: ~PL_Win32API ()" <<
		::std::endl;
		#endif
	}
};

}	// namespace: prolog

// ---------------------------------------------------------------------
// test case entry point ...
// ---------------------------------------------------------------------
using namespace prolog;
int
main(int argc, char** argv)
{
	vector< string > iput_file;
	        string   oput_file;
			string   s0;
	
	int output= 0;

	#if __CHARSET_UTF8__
	Win32API< Desktop< Application< PL_Prolog< wchar_t > > > > input ;
	#else
	Win32API< Desktop< Application< PL_Prolog< char    > > > > input ;
	#endif

	try {
		// ----------------------------------------
		// get command arguments from console ...
		// -i<input file> -o<output file>
		// ----------------------------------------
		if (argc < 2) {
			PL_Exception_CommandLine<std::string>
			ex("too few arguments.");
			throw ex;
		}
		for (int arg = 1; arg < argc; ++arg)
		{
			s0.clear();
			s0.append(argv[arg]);
			if (s0.at(0) == '-')
			{
				if (s0.at(1) == 'i')
				{
					s0.erase(0,2);
					iput_file.push_back( s0 );
				}	else
				if (s0.at(1) == 'o')
				{
					s0.erase(0,2);
					if (output > 0)
					{
						PL_Exception_CommandLine<std::string>
						ex("only one output supported.");
						throw ex;
					}
					else {
						oput_file.append(s0);
						output += 1;
					}
				}
			}
		}

		// --------------------------------------------
		// first, check, if user has give output file:
		// --------------------------------------------
		if (oput_file.size() < 1) {
			PL_Exception_CommandLine<std::string>
			ex("no output file given.");
			throw ex;
		}

		// --------------------------------------------
		// then handle each argument file seperatly ...
		// --------------------------------------------
		for (auto const &item: iput_file)
		{
			basic_ifstream< char > ifile;
			
			ifile.open( item );
			if (!ifile.is_open()) {
				stringstream ss;
				ss << "can not open input file: " << item;
				PL_Exception<std::string> ex( ss.str() );
				throw ex;
			}
			input.PL_parseFile( item );
		}

		STDCOUT
		<< std::endl
		<< "Compiled: OK" << std::endl
		<< "Lines   : "   << input.PL_lineno << std::endl;
	}
	catch (PL_Exception_CommandLine< std::string >& e) {
		STDCOUT
		<< "Command line Error"
		<< std::endl
		<< "reason: " << e.what()
		<< std::endl;
	}
	catch (PL_Exception< std::string >& e)
	{
		STDCOUT
		<< "line  : " << input.PL_lineno
		<< std::endl
		<< "reason: " << e.what()
		<< std::endl;

		return 1;
	}	return 0;
}
