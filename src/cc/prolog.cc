//!
//! \~English
//! \page License
//! MIT License
//!
//! Copyright (c) 2023 Jens Kallup
//!
//! Permission is hereby granted, free of charge, to any person obtaining a copy
//! of this software and associated documentation files (the "Software"), to deal
//! in the Software without restriction, including without limitation the rights
//! to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//! copies of the Software, and to permit persons to whom the Software is
//! furnished to do so, subject to the following conditions:
//!
//! The above copyright notice and this permission notice shall be included in all
//! copies or substantial portions of the Software.
//!
//! THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//! IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//! FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//! AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//! LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//! OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//! SOFTWARE.
//!
//! \~endEnglish

//! \~German
//! \page Lizenz
//! MIT Lizenz
//!
//! Copyright (c) 2023 Jens Kallup
//!
//! Hiermit wird jeder Person, die eine Kopie dieses Programms und der zugeh&ouml;rigen
//! Dokumentationsunterlagen (hier genannt als "Software") erwirbt, kostenlos die
//! Erlaubnis erteilt, uneingeschr&auml;nkt mit der Software zu handeln, einschlie&szlig;lich
//! des Rechts, Kopien der Software zu verwenden, zu kopieren, zu modifizieren,
//! zusammenzuf&uuml;hren, zu ver&ouml;ffentlichen, zu vertreiben, zu vervielf&auml;ltigen und/oder
//! zu verkaufen. Personen, denen die Software zur Verf&uuml;gung gestellt wird ist dies
//! unter folgenden Konditionen gestattet:
//!
//! Der vorgenannte Urheberrechtsvermerk und dieser Genehmigungsvermerk m&uuml;ssen in
//! allen Kopien oder wesentlichen Teilen der Software enthalten sein.
//!
//! DIE SOFTWARE WIRD OHNE GEW&Auml;HRLEISTUNGEN JEGLICHER ART, WEDER AUSDR&Uuml;CKLICH NOCH
//! STILLSCHWEIGEND, ZUR VERF&Uuml;GUNG GESTELLT. DIES UMFASST UNTER ANDEREM DIE GEW&Auml;HRLEISTUNG
//! DER MARKTG&Auml;NGIGKEIT, DER EIGNUNG FÜR EINEN BESTIMMTEN ZWECK UND DER NICHTVERLETZUNG
//! VON RECHTEN. IN KEINEM FALL SIND DIE AUTOREN ODER URHEBERRECHTSINHABER HAFTBAR ZU
//! MACHEN FÜR JEGLICHE ANSPR&Uuml;CHE, SCH&Auml;DEN ODER SONSTIGE HAFTUNGEN, SEI ES AUS VERTRAG,
//! UNERLAUBTER HANDLUNG ODER ANDEREN GR&Uuml;NDEN, DIE SICH IM ZUSAMMENHANG MIT DER SOFTWARE
//! ODER DER NUTZUNG ODER DEM SONSTIGEN GEBRAUCH MIT DER SOFTWARE ERGEBEN.
//!
//! \~endGerman

//! \~English
//! \page Description
//! \mainpage Zwapel Project
//!
//! This is the Programer's Documentation for the Zwapel Project.<br>
//! Zwapel is a SWIPL Clone, which you can download <a href="">here</a>.
//!
//! \section pageTOC Content
//!  -# \ref Description
//!  -# \ref License
//!
//! SWI-Prolog offers a comprehensive free Prolog environment.
//! Since its start in 1987, SWI-Prolog development has been driven by the needs<br>
//! of real world applications. SWI-Prolog is widely used in research and education
//! as well as commercial applications. Join over a million users <br>
//! who have downloaded SWI-Prolog.
//!
//! ### Namespace
//!
//!   - \ref zwapel - zwapel namespace provides support for X86/X64 remote
//!     assembly, to speed up the free Prolog System SWIPL.<br>
//!     SWIPL can download from this <a href="https://www.swi-prolog.org/">link</a>.
//!
//! ### Legal
//!
//!   - zwapel is distributed under the MIT license. Some of the used libraries
//!     and extension packages have different license conditions. <br>
//!     The licenses applicable to a running configuration can be examined by
//!     running license/0. See license for details.
//!
//! \page Description
//! Zwapel is a serie of programming Tools to develop Applications with logical,
//! and procedural programming DSL's
//!
//! \~endEnglish

//! \~German
//! \mainpage Zapel Projekt
//!
//! Dies ist die Dokumentation des Zwapel Projekts f&uuml;r Programmierer.<br>
//! Zwapel ist ein SWIPL Clone, der auf folgender WebSeite <a href="">hier</a> gesaugt
//! werden kann:
//!
//! \section pageTOC Inhalt
//!  -# \ref Beschreibung
//!  -# \ref Lizenz
//!
//! SWI Prolog bietet eine umfassende freie Prolog-Umgebung.
//! Seit dem Start im Jahr 1987 wurde die Entwicklung von SWI Prolog den Bed&uuml;rfnissen
//! der Anwender vorangetrieben. SWI Prolog wird sowohl in Forschung und Lehre als
//! auch in kommerziellen Anwendungen eingesetzt.
//! Schlie&szlig;en Sie sich den &uuml;ber eine Million Benutzern an, die SWI Prolog
//! heruntergeladen haben.
//!
//! ### Namenraum
//!
//!   - \ref zwapel - Dieser Namenraum unterst&uuml;tzt Sie bei der Programmierung
//!     von Programmen f&uuml;r "remote assembly" der x86/x64 CPU, <br>
//!     um die Interpretation des eingelesenen Codes zu beschleunigen.<br>
//!
//! ### Rechtliches
//!
//!   - zwapel wird unter der MIT-Lizenz verteilt. Einige der benutzten Bibliotheken
//!     und Erweiterungen können andere Lizenz-Bedingungen haben.<br>
//!     Um mehr &uuml;ber die Lizenz für das Projekt zu erfahren, k&ouml;nnen Sie
//!     durch Eingabe von license/0 eingesehen werden.
//!
//! \page Beschreibung
//! Zwapel ist eine ganze Reihe von Programmen, die für das Programmieren von
//! Anwendungen für logische, und prozedurale Bedürfnisse verwendet werden kann.
//!
//! \~endGerman

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
// name space for the PL library:
// ---------------------------------------------------------------------
namespace prolog {

// ---------------------------------------------------------------------
// forward declaration's ...
// ---------------------------------------------------------------------
class Win32API;
class Application;
class Desktop;
class Console;
class Client;
class Server;
class Html;
class Ftp;

class PL_Prolog;
class PL_Pascal;
class PL_cLang ;
class PL_dBase ;

class PL_parser;

// ---------------------------------------------------------------------
// const, variables.
// ---------------------------------------------------------------------
#define STDCOUT  std::cout

const int CVT_NONE   = 0;
const int CVT_ASM    = 1;
const int CVT_PASCAL = 2;   // default ?

int   convert_mode   = 0;

// ---------------------------------------------------------------------
//! \class  PL_Exception
//! \since  Version 0.0.1
//! \authos paule32
//! \~English
//! \brief A tiny class with big advantages. They handle exception in
//!        Application's, and is used to minimizing Code (no more care,
//!        and use of using function results in Context of failures.
//! \~endEnglish
//! \~German
//! \brief Eine kleine Klasse, mit großer Wirkung. Sie behandelt Ausnahmen
//!        in Anwendungen, und wird benutzt, um den Quellcode kleiner, und
//!        sauberer zu halten. Es ist nicht mehr nötig, sich durch
//!        Spagetty-Code mit einer Vielzahl an "return" Werten zu navigieren.
//! \~endGerman
// ---------------------------------------------------------------------
class PL_Exception : public std::exception
{
	const char* message;

public:
	PL_Exception(const char *msg): message(msg){}
	PL_Exception() : message("Application Exception."){}
    const char* what()
	const throw() {
		return message;
	}
};

// ---------------------------------------------------------------------
//! \class  PL_Exception_CommandLine
//! \since  Version 0.0.1
//! \authos paule32
//! \~English
//! \brief  A derived class from PL_Exception. It will be used, for
//!         exception handling at Command Line (Console/Terminal).
//! \~endEnglish
//! \~German
//! \brieg  Eine von PL_Exception abgeleitete Klasse. Sie kommt bei
//!         Ausnahmen bei Anwendungen in der Console/Terminal zum Einsatz
//! \~endGerman
// ---------------------------------------------------------------------
class PL_Exception_CommandLine: public PL_Exception {
using PL_Exception::PL_Exception;
};

// ---------------------------------------------------------------------
//! \class  PL_helper
//! \since  Version 0.0.1
//! \~English
//! \brief  This is a helper class for the zwapel Prolog classes.
//!
//! The class contains misc. help functions that will be use multiple
//! times in the source code.<br>
//! It is not the main class, so they can be a little bit twisted till
//! the end product class system will be reached a profesional stage.
//!
//! \~endEnglish
//! \~German
//! \brief  Dies ist eine Behelfs-Klasse mit verschiedenen Funktionen,
//!         für verschiedene Zwecke, die mehrmals verwendet werden.
//!
//! Diese Klasse enthält verschiedene Hilfs-Funktionen, die mehrmals
//! im QuellCode Verwendet werden.<br>
//! Es ist nicht die Haupt-Klasse, und kann ein wenig als unsortiert
//! bis zur Fertigstellung eingestuft werden.
//!
//! \~endGerman
// ---------------------------------------------------------------------
class PL_helper {
public:
	//-- CONSTRUCTORS DEFINITIONS -----------------------------
	
	//! \since Version 0.0.1
	//! \author paule32
	//! \~English
	//! \brief This is the C++ constructor for the helper class.
	//!
	//! The class conatin simple types of functions that will be
	//! stand as placeholder, because they will be used multiple
	//! times.<br>
	//! The C++ Compiler handle the inline function code during the
	//! compile time.
	//!
	//! \param nothing
	//! \~endEnglish
	//! \~German
	//! \brief Dies ist der C++ Klassen Konstrucktor für eine Behelfs-Klasse.
	//!
	//! Die Klasse enthält einfachen Typ-Funktionen, die als Platzhalter
	//! dienen, da sie mehrmals verwendet werden.<br>
	//! Der C++ Compiler handelt den inline-Function's Code während der
	//! Übersetzung aus.
	//!
	//! \param keine.
	//! \~endGerman
	PL_helper() {
		#ifdef DEBUG
		::std::cout << "ctor: PL_helper ()" <<
		::std::endl;
		#endif
	}
	
	//! \since  Version 0.0.1
	//! \author paule32
	//! \~English
	//! \brief  This is the C++ de-structor for help class clean-up.
	//! \param  nothing - dtor's have no Arguments.
	//! \return nothing - free Object with null-Pointer.
	//! \~endEnglish
	//! \~German
	//! \brief  Dies ist ein C++ de-struktor für Hilfs-Klassen Bereinigungen.
	//! \param  keine - dtor's werden keinen Argumente zugewiesen.
	//! \return keine - freies Objekt mit null-Zeiger.
	//! \~endGerman
	~PL_helper() {
		#ifdef DEBUG
		::std::cout << "dtor: ~PL_helper ()" <<
		::std::endl;
		#endif
	}
	
	//-- FUNCTION DEFINITIONS ---------------------------------

	//! \fn int inline PL_helper::PL_success()
	//! \since Version 0.0.1
	//! \author paule32
	//! \~English
	//! \brief Prolog member function, that return TRUE on success rule.
	//!        This function will be used by the Prolog parser.
	//! \param nothing.
	//! \~endEnglish
	//! \~German
	//! \brief Diese Funktion gibt TRUE als Wert zurück.
	//!        Sie findet Anwendung beim Prolog Parser.
	//! \param keine.
	//! \~endGerman
	int inline PL_success() { return 0; }
	
	//! \fn int inline PL_helper::PL_fail()
	//! \since Version 0.0.1
	//! \author paule32
	//! \~English
	//! \brief Prolog member function, that return FALSE on fail rule.
	//!        This function will be used by the Prolog parser.
	//! \param nothing.
	//! \~endEnglish
	//! \~German
	//! \brief Diese Funktion gibt FALSE als Wert zurück.
	//!        Sie findet Anwendung beim Prolog Parser.
	//! \param keine.
	//! \~endGerman
	int inline PL_fail   () { return 1; }
};

// -----------------------------------------------------------------------
//! \class  PL_parser
//! \since  Version 0.0.1
//! \author paule32
//! \~English
//! \brief  The Parser class for all PL Projects.
//! \~endEnglish
//! \~German
//! \brief  Die Parser Klasse, für alle PL Projekte.
//! \~endGerman
// -----------------------------------------------------------------------
class PL_parser
{
	//-- INITIAL STUFF ----------------------------------------
	void init() {
		PL_lookaheadPosition = 0;
		PL_lineno            = 1;
		PL_nestedComment     = 0;
	}

public:
	::std::ifstream ifile;
	::std::ofstream ofile;

	uint32_t PL_type_size;
	uint32_t PL_file_size;

	char     PL_lookaheadChar;      // parsed char

	::std::string       PL_ident;
	::std::stringstream PL_source;

public:
	uint32_t PL_lookaheadPosition;
	uint32_t PL_nestedComment;
	uint32_t PL_lineno;

public:
	//-- CONSTRUCTORS DEFINITIONS -----------------------------
	
	//! \since  Version 0.0.1
	//! \author paule32
	//! \see    PL_parser::PL_parser(std::string)
	//! \see    PL_parser::PL_parser(char&)
	//! \~English
	//! \brief  This is a C++ constructor class for Parser Projects.
	//! \param  std::string& filename - file to parse.
	//! \return internal used Object with Pointer to itself.
	//! \~endEnglish
	//! \~German
	//! \brief  Dies ist ein C++ Konstruktor für Parser Projekte
	//! \param  std::string& - Datei die der Parser abarbeiten soll.
	//! \return internes Objekt auf diese Klasse.
	//! \~endGerman
	PL_parser(std::string&) {
		#ifdef DEBUG
		::std::cout << "ctor: PL_parser std::string&" <<
		::std::endl;
		#endif
		init();
	}
	
	//! \since  Version 0.0.1
	//! \author paule32
	//! \see    PL_parser::PL_parser(std::string&)
	//! \see    PL_parser::PL_parser(char&)
	//! \~English
	//! \brief  This is a C++ constructor class for Parser Projects.
	//! \param  std::string filename - file to parse.
	//! \return internal used Object with Pointer to itself.
	//! \~endEnglish
	//! \~German
	//! \brief  Dies ist ein C++ Konstruktor für Parser Projekte
	//! \param  std::string - Datei die der Parser abarbeiten soll.
	//! \return internes Objekt auf diese Klasse.
	//! \~endGerman
	PL_parser(std::string) {
		#ifdef DEBUG
		::std::cout << "ctor: PL_parser std::string" <<
		::std::endl;
		#endif
		init();
	}
	
	//! \since  Version 0.0.1
	//! \author paule32
	//! \see    PL_parser::PL_parser(std::string&)
	//! \see    PL_parser::PL_parser(std::string)
	//! \~English
	//! \brief  This is a C++ constructor class for Parser Projects.
	//! \param  char& filename - file to parse.
	//! \return internal used Object with Pointer to itself.
	//! \~endEnglish
	//! \~German
	//! \brief  Dies ist ein C++ Konstruktor für Parser Projekte
	//! \param  char& - Datei die der Parser abarbeiten soll.
	//! \return internes Objekt auf diese Klasse.
	//! \~endGerman
	PL_parser(char&) {
		#ifdef DEBUG
		::std::cout << "ctor: PL_parser char&" <<
		::std::endl;
		#endif
		init();
	}
	
	//! \since  Version 0.0.1
	//! \author paule32
	//! \see    PL_parser::PL_parser(std::string&)
	//! \see    PL_parser::PL_parser(std::string)
	//! \see    PL_parser::PL_parser(char&)
	//! \~English
	//! \brief  This is a C++ constructor class for Parser Projects.
	//! \param  nothing - default constructor.
	//! \return internal used Object with Pointer to itself.
	//! \~endEnglish
	//! \~German
	//! \brief  Dies ist ein C++ Konstruktor für Parser Projekte
	//! \param  keine - Standard Konstrukor.
	//! \return internes Objekt auf diese Klasse.
	//! \~endGerman
	PL_parser() {
		#ifdef DEBUG
		::std::cout << "ctor: PL_parser ()" <<
		::std::endl;
		#endif
		init();
	}
	
	//! \since  Version 0.0.1
	//! \author paule32
	//! \~English
	//! \brief  This is the C++ de-structor for Parser class clean-up.
	//! \param  nothing - dtor's have no Arguments.
	//! \return nothing - free Object with null-Pointer.
	//! \~endEnglish
	//! \~German
	//! \brief  Dies ist ein C++ de-struktor für Parser Bereinigungen.
	//! \param  keine - dtor's werden keinen Argumente zugewiesen.
	//! \return keine - freies Objekt mit null-Zeiger.
	//! \~endGerman
	~PL_parser() {
		#ifdef DEBUG
		::std::cout << "dtor: ~PL_parser ()" <<
		::std::endl;
		#endif
	}

	//-- FUNCTION DEFINITIONS ---------------------------------
	char PL_getch()
	{
		char buffer[4];

		if (PL_lookaheadPosition >= PL_file_size) return 0x0;
		if (PL_type_size < 1) {
			PL_Exception ex("data get underflow.");
			throw ex;
		}	else
		if (PL_type_size == 1) {
			PL_lookaheadPosition += 1;
			
			PL_lookaheadChar  =
			PL_source.str().c_str()[PL_lookaheadPosition];
		}	else
		if (PL_type_size < 3) {
			PL_source.get(buffer,2);
			PL_lookaheadChar = ((uint16_t) buffer[0] << 8) | buffer[1];
		}
		return PL_lookaheadChar;
	}
	
	char PL_ungetch()
	{
		if (PL_type_size < 1) {
			PL_Exception ex("data set underflow.");
			throw ex;
		}	else
		if (PL_type_size == 1) {
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
	
	void PL_prepare(const ::std::string &filename)
	{
		ifile.open(filename);
		if (ifile.is_open())
		{
			PL_source << ifile.rdbuf();
			PL_type_size = sizeof( char );

			// get size
			PL_source.seekg(0, ::std::ios::end );
			PL_file_size  =
			PL_source.tellp();
			PL_source.seekp(0, ::std::ios::beg );
			
		}	else {
			throw PL_Exception("input file read error");
		}
		
		PL_ident.clear();
	}
	
	uint16_t PL_parse_ident()
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
			
			if (PL_lookaheadChar == '/') {
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
				while ( PL_lookaheadPosition != PL_file_size)
				{
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
				PL_Exception ex("not yet implemented.");
				throw ex;
			}
			
			if (PL_lookaheadChar == '*')
			{
				PL_nestedComment  =
				PL_nestedComment  + 1;
				
				while (PL_lookaheadPosition != PL_file_size) {
					label_comment2:
					if (!(PL_lookaheadChar = PL_getch())) {
						PL_Exception ex("unterminated comment");
						throw ex;
					}
				
					if (PL_lookaheadChar == '\n') {
						PL_lineno =
						PL_lineno + 1;
						continue;
					}

					if (PL_lookaheadChar == '/') {
						if (!(PL_lookaheadChar = PL_getch())) {
							PL_Exception ex("unterminated comment");
							throw ex;
						}
						
						if (PL_lookaheadChar == '*') {
							PL_nestedComment += 1;
							continue;
						}
					}
					
					if (PL_lookaheadChar == '*') {
						if (!(PL_lookaheadChar = PL_getch())) {
							PL_Exception ex("unterminated comment");
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
				PL_Exception ex("not yets implemented.");
				throw ex;
			}
		}
	}
	
	void PL_skip_comment_pas(void)
	{
		if (PL_lookaheadChar == '{')
		{
			if (!(PL_lookaheadChar = PL_getch())) {
				PL_Exception ex("not yet implemented.");
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
				PL_Exception ex("not yet implemented.");
				throw ex;
			}
			
			if (PL_lookaheadChar == '*')
			{
				PL_nestedComment =
				PL_nestedComment + 1;
				
				while (PL_lookaheadPosition != PL_file_size) {
					label_comment2:
					if (!(PL_lookaheadChar = PL_getch())) {
						PL_Exception ex("unterminated comment");
						throw ex;
					}
				
					if (PL_lookaheadChar == '\n') {
						PL_lineno =
						PL_lineno + 1;
						continue;
					}

					if (PL_lookaheadChar == '(') {
						if (!(PL_lookaheadChar = PL_getch())) {
							PL_Exception ex("unterminated comment");
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
							PL_Exception ex("unterminated comment");
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
				PL_Exception ex("not yets implemented.");
				throw ex;
			}
		}
	}
};

class PL_Prolog
{
public:
	PL_parser* parser;

public:
	//-- CONSTRUCTORS DEFINITIONS -----------------------------
	
	//! \since  Version 0.0.1
	//! \author paule32
	//! \see    PL_Prolog::PL_Prolog(std::string&)
	//! \see    PL_Prolog::PL_Prolog(char&)
	//! \see    PL_Prolog::PL_Prolog()
	//! \~English
	//! \brief  This is a C++ constructor class for the Prolog Parser.
	//! \param  Application& ptr - Pointer to the Application class.
	//! \return internal used Object with Pointer to itself.
	//! \~endEnglish
	//! \~German
	//! \brief  Dies ist ein C++ Konstruktor für den Prolog Parser.
	//! \param  Application& ptr - Zeiger auf ein zugewiesenes Application Objekt
	//! \return internes Objekt auf diese Klasse.
	//! \~endGerman
	PL_Prolog(Application&) {
		#ifdef DEBUG
		::std::cout << "ctor: PL_Prolog Application" <<
		::std::endl;
		#endif
		parser = new PL_parser;
	}

	//! \since  Version 0.0.1
	//! \author paule32
	//! \see    PL_Prolog::PL_Prolog(Application)
	//! \see    PL_Prolog::PL_Prolog(std::string)
	//! \see    PL_Prolog::PL_Prolog(char&)
	//! \see    PL_Prolog::PL_Prolog()
	//! \~English
	//! \brief  This is a C++ constructor class for the Prolog Parser.
	//! \param  std::string& filename - file to parse.
	//! \return internal used Object with Pointer to itself.
	//! \~endEnglish
	//! \~German
	//! \brief  Dies ist ein C++ Konstruktor für den Prolog Parser.
	//! \param  std::string& dateiname - Datei die der Parser abarbeiten soll.
	//! \return internes Objekt auf diese Klasse.
	//! \~endGerman
	PL_Prolog(::std::string&) {
		#ifdef DEBUG
		::std::cout << "ctor: PL_Prolog std::string&" <<
		::std::endl;
		#endif
		parser = new PL_parser;
	}
	
	//! \since  Version 0.0.1
	//! \author paule32
	//! \see    PL_Prolog::PL_Prolog(Application)
	//! \see    PL_Prolog::PL_Prolog(std::string&)
	//! \see    PL_Prolog::PL_Prolog(char&)
	//! \see    PL_Prolog::PL_Prolog()
	//! \~English
	//! \brief  This is a C++ constructor class for the Prolog Parser.
	//! \param  std::string filename - file to parse.
	//! \return internal used Object with Pointer to itself.
	//! \~endEnglish
	//! \~German
	//! \brief  Dies ist ein C++ Konstruktor für den Prolog Parser.
	//! \param  std::string dateiname - Datei die der Parser abarbeiten soll.
	//! \return internes Objekt auf diese Klasse.
	//! \~endGerman
	PL_Prolog(::std::string) {
		#ifdef DEBUG
		::std::cout << "ctor: PL_Prolog std::string" <<
		::std::endl;
		#endif
		parser = new PL_parser;
	}
	
	//! \since  Version 0.0.1
	//! \author paule32
	//! \see    PL_Prolog::PL_Prolog(Application)
	//! \see    PL_Prolog::PL_Prolog(std::string&)
	//! \see    PL_Prolog::PL_Prolog(std::string)
	//! \see    PL_Prolog::PL_Prolog()
	//! \~English
	//! \brief  This is a C++ constructor class for the Prolog Parser.
	//! \param  char& filename - file to parse.
	//! \return internal used Object with Pointer to itself.
	//! \~endEnglish
	//! \~German
	//! \brief  Dies ist ein C++ Konstruktor für den Prolog Parser.
	//! \param  char& dateiname - Datei die der Parser abarbeiten soll.
	//! \return internes Objekt auf diese Klasse.
	//! \~endGerman
	PL_Prolog(char&) {
		#ifdef DEBUG
		::std::cout << "ctor: PL_Prolog char&&" <<
		::std::endl;
		#endif
		parser = new PL_parser;
	}

	//! \since  Version 0.0.1
	//! \author paule32
	//! \see    PL_Prolog::PL_Prolog(Application)
	//! \see    PL_Prolog::PL_Prolog(std::string&)
	//! \see    PL_Prolog::PL_Prolog(std::string)
	//! \see    PL_Prolog::PL_Prolog(char&)
	//! \~English
	//! \brief  This is a C++ constructor class for the Prolog Parser.
	//! \param  nothing - Standard constructor.
	//! \return internal used Object with Pointer to itself.
	//! \~endEnglish
	//! \~German
	//! \brief  Dies ist ein C++ Konstruktor für den Prolog Parser.
	//! \param  keine - Standard Konstruktor.
	//! \return internes Objekt auf diese Klasse.
	//! \~endGerman
	PL_Prolog() {
		#ifdef DEBUG
		::std::cout << "ctor: PL_Prolog ()" <<
		::std::endl;
		#endif
		parser = new PL_parser;
	}
	
	//! \since  Version 0.0.1
	//! \author paule32
	//! \~English
	//! \brief  This is a C++ de-structor for the Prolog Parser class clean-up.
	//! \param  nothing - dtor's have no Arguments.
	//! \return nothing - free Object with null-Pointer.
	//! \~endEnglish
	//! \~German
	//! \brief  Dies ist ein C++ Konstruktor für die Prolog Parser Klassen-Bereinigung.
	//! \param  keine - dtor's werden keine Argumente zugewiesen.
	//! \return keine - freies Objekt mit null-Zeiger.
	//! \~endGerman
	~PL_Prolog() {
		delete parser;
		#ifdef DEBUG
		::std::cout << "dtor: ~PL_Prolog ()" <<
		::std::endl;
		#endif
	}

	//-- FUNCTION DEFINITIONS ---------------------------------
	void PL_parseFile(const ::std::string &filename )
	{
			parser->PL_prepare(filename);
		while (
			parser->PL_lookaheadPosition !=
			parser->PL_file_size)
		{
			label_start:
			parser->PL_lookaheadChar =
			
			parser->PL_getch(); if (!
			parser->PL_skip_white_spaces()) break;

			//parser->PL_skip_comment_cpp();
			//parser->PL_skip_comment_c();
			
			// one line comment
			if (parser->PL_lookaheadChar == '%') {
				label_comment:
				while (
					parser->PL_lookaheadPosition !=
					parser->PL_file_size)
				{
					if (!(
					parser->PL_lookaheadChar =
					parser->PL_getch()))
					break;
				
					if (parser->PL_lookaheadChar == '\n') {
						parser->PL_lineno += 1;
						break;
					}
				}

				continue;
			}

				parser->PL_lookaheadChar =
				parser->PL_parse_ident();
			if (parser->PL_ident.size() > 0)
			{
				std::cout <<
				parser->PL_ident  << std::endl;
				parser->PL_ident.clear();
			}
		}
	}

	void exit(int returnCode = 0)
	{
		#ifdef DEBUG
		::std::cout << "PL exit" <<
		::std::endl;
		#endif
	}

	int exec()
	{
		#ifdef DEBUG
		::std::cout << "PL exec" <<
		::std::endl;
		#endif
	}
};

// -----------------------------------------------------------------------
//! \class  PL_dBase
//! \since  Version 0.0.1
//! \author paule32
//! \~English
//! \brief  The Parser class for PL - dBase Projects.
//! \~endEnglish
//! \~German
//! \brief  Die Parser Klasse, für PL - dBase Projekte.
//! \~endGerman
// -----------------------------------------------------------------------
class PL_dBase
{
public:
	PL_parser* parser;

public:
	//-- CONSTRUCTORS DEFINITIONS -----------------------------
	
	//! \since  Version 0.0.1
	//! \author paule32
	//! \see    PL_dBase::PL_dBase(Application)
	//! \see    PL_dBase::PL_dBase(std::string)
	//! \see    PL_dBase::PL_dBase(char&)
	//! \see    PL_dBase::PL_dBase()
	//! \~English
	//! \brief  This is a C++ constructor class for the dBase Parser.
	//! \param  std::string& filename - file to parse.
	//! \return internal used Object with Pointer to itself.
	//! \~endEnglish
	//! \~German
	//! \brief  Dies ist ein C++ Konstruktor für den dBase Parser.
	//! \param  std::string& dateiname - Datei die der Parser abarbeiten soll.
	//! \return internes Objekt auf diese Klasse.
	//! \~endGerman
	PL_dBase(std::string&) {
		#ifdef DEBUG
		::std::cout << "ctor: PL_dBase std::string&" <<
		::std::endl;
		#endif
		parser = new PL_parser;
	}
	
	//! \since  Version 0.0.1
	//! \author paule32
	//! \see    PL_dBase::PL_dBase(Application)
	//! \see    PL_dBase::PL_dBase(std::string&)
	//! \see    PL_dBase::PL_dBase(char&)
	//! \see    PL_dBase::PL_dBase()
	//! \~English
	//! \brief  This is a C++ constructor class for the dBase Parser.
	//! \param  std::string& filename - file to parse.
	//! \return internal used Object with Pointer to itself.
	//! \~endEnglish
	//! \~German
	//! \brief  Dies ist ein C++ Konstruktor für den dBase Parser.
	//! \param  std::string& dateiname - Datei die der Parser abarbeiten soll.
	//! \return internes Objekt auf diese Klasse.
	//! \~endGerman
	PL_dBase(std::string) {
		#ifdef DEBUG
		::std::cout << "ctor: PL_dBase std::string" <<
		::std::endl;
		#endif
		parser = new PL_parser;
	}
	
	//! \since  Version 0.0.1
	//! \author paule32
	//! \see    PL_dBase::PL_dBase(Application)
	//! \see    PL_dBase::PL_dBase(std::string&)
	//! \see    PL_dBase::PL_dBase(std::string)
	//! \see    PL_dBase::PL_dBase()
	//! \~English
	//! \brief  This is a C++ constructor class for the dBase Parser.
	//! \param  char& filename - file to parse.
	//! \return internal used Object with Pointer to itself.
	//! \~endEnglish
	//! \~German
	//! \brief  Dies ist ein C++ Konstruktor für den dBase Parser.
	//! \param  char& dateiname - Datei die der Parser abarbeiten soll.
	//! \return internes Objekt auf diese Klasse.
	//! \~endGerman
	PL_dBase(char&) {
		#ifdef DEBUG
		::std::cout << "ctor: PL_dBase char&" <<
		::std::endl;
		#endif
		parser = new PL_parser;
	}
	
	//! \since  Version 0.0.1
	//! \author paule32
	//! \see    PL_dBase::PL_dBase(Application)
	//! \see    PL_dBase::PL_dBase(std::string&)
	//! \see    PL_dBase::PL_dBase(std::string))
	//! \see    PL_dBase::PL_dBase(char&)
	//! \~English
	//! \brief  This is a C++ constructor class for the dBase Parser.
	//! \param  nothing - default constructor.
	//! \return internal used Object with Pointer to itself.
	//! \~endEnglish
	//! \~German
	//! \brief  Dies ist ein C++ Konstruktor für den dBase Parser.
	//! \param  nothing - Standard Konstruktor.
	//! \return internes Objekt auf diese Klasse.
	//! \~endGerman
	PL_dBase() {
		#ifdef DEBUG
		::std::cout << "ctor: PL_dBase ()" <<
		::std::endl;
		#endif
		parser = new PL_parser;
	}
	
	//! \since  Version 0.0.1
	//! \author paule32
	//! \~English
	//! \brief  This is a C++ de-structor for the dBase Parser class clean-up.
	//! \param  nothing - dtor's have no Argument's
	//! \return nothing - free Object with null-Pointer
	//! \~endEnglish
	//! \~German
	//! \brief  Dies ist ein C++ De-struktor für die dBase Parser Klassen-Bereinigung.
	//! \param  keine - dtor's werden keine Argumente zugewiesen.
	//! \return keine - freies Objekt mit null-Zeiger
	//! \~endGerman
	~PL_dBase() {
		#ifdef DEBUG
		::std::cout << "dtor: ~PL_dBase ()" <<
		::std::endl;
		#endif
		delete parser;
	}

	//-- FUNCTION DEFINITIONS ---------------------------------
	void PL_parseFile(const ::std::string &filename )
	{
			parser->PL_prepare(filename);
		while (
			parser->PL_lookaheadPosition !=
			parser->PL_file_size)
		{
			label_start:
			parser->PL_lookaheadChar =
			parser->PL_getch(); if (!
			
			parser->PL_skip_white_spaces ()) break;
			parser->PL_skip_comment_cpp  ();
			
			//PL_skip_comment_dbase();
		}
	}
};

class PL_Pascal
{
public:
	PL_parser* parser;

public:
	//-- CONSTRUCTORS DEFINITIONS -----------------------------
	
	//! \since  Version 0.0.1
	//! \author paule32
	//! \see    PL_Pascal::PL_Pascal(std::string)
	//! \see    PL_Pascal::PL_Pascal(char&)
	//! \~English
	//! \brief  This is a C++ constructor class for the Pascal Parser.
	//! \param  std::string& filename - file to parse.
	//! \return internal used Object with Pointer to itself.
	//! \~endEnglish
	//! \~German
	//! \brief  Dies ist ein C++ Konstruktor für den Pascal Parser.
	//! \param  std::string& dateiname - Datei die der Parser abarbeiten soll.
	//! \return internes Objekt auf diese Klasse.
	//! \~endGerman
	PL_Pascal(std::string&) {
		#ifdef DEBUG
		::std::cout << "ctor: PL_Pascal std::string&" <<
		::std::endl;
		#endif
		parser = new PL_parser;
	}
	
	//! \since  Version 0.0.1
	//! \author paule32
	//! \see    PL_Pascal::PL_Pascal(std::string&)
	//! \see    PL_Pascal::PL_Pascal(char&)
	//! \~English
	//! \brief  This is a C++ constructor class for the Pascal Parser.
	//! \param  std::string filename - file to parse.
	//! \return internal used Object with Pointer to itself.
	//! \~endEnglish
	//! \~German
	//! \brief  Dies ist ein C++ Konstruktor für den Pascal Parser.
	//! \param  std::string dateiname - Datei die der Parser abarbeiten soll.
	//! \return internes Objekt auf diese Klasse.
	//! \~endGerman
	PL_Pascal(std::string) {
		#ifdef DEBUG
		::std::cout << "ctor: PL_Pascal std::string" <<
		::std::endl;
		#endif
		parser = new PL_parser;
	}
	
	//! \since  Version 0.0.1
	//! \author paule32
	//! \see    PL_Pascal::PL_Pascal(std::string&)
	//! \see    PL_Pascal::PL_Pascal(std::string)
	//! \~English
	//! \brief  This is a C++ constructor class for the Pascall Parser.
	//! \param  char& filename - file to parse.
	//! \return internal used Object with Pointer to itself.
	//! \~endEnglish
	//! \~German
	//! \brief  Dies ist ein C++ Konstruktor für den Pascal Parser.
	//! \param  char& dateiname - Datei die der Parser abarbeiten soll.
	//! \return internes Objekt auf diese Klasse.
	//! \~endGerman
	PL_Pascal(char&) {
		#ifdef DEBUG
		::std::cout << "ctor: PL_Pascal char&" <<
		::std::endl;
		#endif
		parser = new PL_parser;
	}
	
	//! \since  Version 0.0.1
	//! \author paule32
	//! \see    PL_Pascal::PL_Pascal(std::string&)
	//! \see    PL_Pascal::PL_Pascal(std::string)
	//! \see    PL_Pascal::PL_Pascal(char&)
	//! \~English
	//! \brief  This is a C++ constructor class for the Pascal Parser.
	//! \param  nothing - default constructor.
	//! \return internal used Object with Pointer to itself.
	//! \~endEnglish
	//! \~German
	//! \brief  Dies ist ein C++ Konstruktor für den Pascal Parser.
	//! \param  keine - Standard Konstruktor.
	//! \return internes Objekt auf diese Klasse.
	//! \~endGerman
	PL_Pascal() {
		#ifdef DEBUG
		::std::cout << "ctor: PL_Pascal ()" <<
		::std::endl;
		#endif
		parser = new PL_parser;
	}
	
	//! \since  Version 0.0.1
	//! \author paule32
	//! \~English
	//! \brief  This is a C++ de-structor for the Pascal Parser class clean-up.
	//! \param  nothing - dtor's have no Argument's
	//! \return nothing - free Object with null-Pointer
	//! \~endEnglish
	//! \~German
	//! \brief  Dies ist ein C++ De-struktor für die Pascal Parser Klassen-Bereinigung.
	//! \param  keine - dtor's werden keine Argumente zugewiesen.
	//! \return keine - freies Objekt mit null-Zeiger
	//! \~endGerman
	~PL_Pascal() {
		#ifdef DEBUG
		::std::cout << "dtor: ~PL_Pascal ()" <<
		::std::endl;
		#endif
		delete parser;
	}

	//-- FUNCTION DEFINITIONS ---------------------------------
	void PL_parseFile(const ::std::string &filename )
	{
			parser->PL_prepare(filename);
		while (
			parser->PL_lookaheadPosition !=
			parser->PL_file_size)
		{
			label_start:
			parser->PL_lookaheadChar =
			
			parser->PL_getch(); if (!
			parser->PL_skip_white_spaces()) break;
			
			parser->PL_skip_comment_pas ();
			parser->PL_skip_comment_cpp ();
			
			parser->PL_lookaheadChar =
			parser->PL_parse_ident();
			
			if (parser->PL_ident.size() > 0)
			{
				std::cout <<
				parser->PL_ident << std::endl;
				parser->PL_ident.clear();
			}
		}
	}
};

class PL_cLang
{
public:
	PL_parser* parser;

public:
	//-- CONSTRUCTORS DEFINITIONS -----------------------------
	PL_cLang(std::string&) {
		#ifdef DEBUG
		::std::cout << "ctor: PL_cLang std::string&" <<
		::std::endl;
		#endif
		parser = new PL_parser;
	}
	PL_cLang(std::string) {
		#ifdef DEBUG
		::std::cout << "ctor: PL_cLang std::string" <<
		::std::endl;
		#endif
		parser = new PL_parser;
	}
	PL_cLang(char&) {
		#ifdef DEBUG
		::std::cout << "ctor: PL_cLang char&" <<
		::std::endl;
		#endif
		parser = new PL_parser;
	}
	PL_cLang(char) {
		#ifdef DEBUG
		::std::cout << "ctor: PL_cLang char" <<
		::std::endl;
		#endif
		parser = new PL_parser;
	}
	PL_cLang() {
		#ifdef DEBUG
		::std::cout << "ctor: PL_cLang ()" <<
		::std::endl;
		#endif
		parser = new PL_parser;
	}
	~PL_cLang() {
		#ifdef DEBUG
		::std::cout << "dtor: ~PL_cLang ()" <<
		::std::endl;
		#endif
		delete parser;
	}

	//-- FUNCTION DEFINITIONS ---------------------------------
	void PL_parseFile(const ::std::string &filename )
	{
			parser->PL_prepare(filename);
		while (
			parser->PL_lookaheadPosition !=
			parser->PL_file_size)
		{
			label_start:
			parser->PL_lookaheadChar =
			
			parser->PL_getch(); if (!
			parser->PL_skip_white_spaces()) break;
			
			parser->PL_skip_comment_cpp();
			parser->PL_skip_comment_c();
		}
	}
};

class Application {
public:
	Application(Console&) {
		#ifdef DEBUG
		::std::cout << "ctor: PL_Application Console" <<
		::std::endl;
		#endif
	}
	Application(Desktop&) {
		#ifdef DEBUG
		::std::cout << "ctor: PL_Application Desktop" <<
		::std::endl;
		#endif
	}
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
	
	void exit(int returnCode = 0)
	{
		#ifdef DEBUG
		::std::cout << "Application exit" <<
		::std::endl;
		#endif
	}

	int exec()
	{
		#ifdef DEBUG
		::std::cout << "Application exec" <<
		::std::endl;
		#endif
	}
};

class Desktop {
public:
	Desktop(Win32API&) { }
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
	
	void exit(int returnCode = 0)
	{
		#ifdef DEBUG
		::std::cout << "Desktop exit" <<
		::std::endl;
		#endif
	}

	int exec()
	{
		#ifdef DEBUG
		::std::cout << "Desktop exec" <<
		::std::endl;
		#endif
	}
};

class Console {
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

class Win32API {
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

class Server {
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

class Client {
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

class Html {
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

class Ftp {
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

	Win32API    win;
	Desktop     gui( win );
	Application app( gui );
	PL_Prolog   prg( app );

	try {
		// ----------------------------------------
		// get command arguments from console ...
		// -i<input file> -o<output file>
		// ----------------------------------------
		if (argc < 2)
		throw PL_Exception_CommandLine("too few arguments.");

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
					throw PL_Exception_CommandLine
					("only one output supported.");

					oput_file.append(s0);
					output += 1;
				}
			}
		}

		// --------------------------------------------
		// first, check, if user has give output file:
		// --------------------------------------------
		if (oput_file.size() < 1)
		throw PL_Exception_CommandLine("no output file given.");

		// --------------------------------------------
		// then handle each argument file seperatly ...
		// --------------------------------------------
		for (auto const &item: iput_file)
		{
			ifstream ifile;
			
			ifile.open( item );
			if (!ifile.is_open()) {
				string ss;
				ss += "can not open input file: ";
				ss += item;
				throw PL_Exception( ss.c_str() );
			}
			prg.PL_parseFile( item );
		}

		STDCOUT
		<< std::endl
		<< "Compiled: OK" << std::endl
		<< "Lines   : "   << prg.parser->PL_lineno << std::endl;
	}
	catch (PL_Exception_CommandLine& e) {
		STDCOUT
		<< "Command line Error"
		<< std::endl
		<< "reason: " << e.what()
		<< std::endl;
	}
	catch (PL_Exception& e)
	{
		STDCOUT
		<< "line  : " << prg.parser->PL_lineno
		<< std::endl
		<< "reason: " << e.what()
		<< std::endl;

		return 1;
	}	return 0;
}
