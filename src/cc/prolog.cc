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
# include <getopt.h>
# include <limits.h>
# include <signal.h>
# include <sys/types.h>
# include <sys/stat.h>

// ---------------------------------------------------------------------
// application localization ...
// ---------------------------------------------------------------------
# include <libintl.h>
# include <locale.h>

// ---------------------------------------------------------------------
// debug information's by dwarf ...
// ---------------------------------------------------------------------
#include <dwarf.h>

#ifdef _WIN32
# include <io.h>
# define O_RDONLY _O_RDONLY
# define O_BINARY _O_BINARY
#else
# include <unistd.h>
# define O_BINARY 0
#endif

// ---------------------------------------------------------------------
// c++ header
// ---------------------------------------------------------------------
# include <iostream>
# include <string>
# include <strstream>
# include <sstream>
# include <fstream>
# include <istream>
# include <codecvt>
# include <cstdlib> 		// for: ::std::itoa
# include <exception>
# include <vector>
# include <algorithm>
# include <iterator>
# include <ctime>
# include <cerrno>
# include <cstring>
# include <csignal>
# include <type_traits>
# include <typeinfo>
# include <cctype>
# include <iomanip>
# include <regex>
# include <functional>

// ---------------------------------------------------------------------
// Windows header stuff ...
// ---------------------------------------------------------------------
# include <windows.h>
# include <windowsx.h>
# include <imagehlp.h>
# include <CommCtrl.h>

# define DCX_USESTYLE 0x00010000	// undefined in Windows header's

# include "resource.h"

#define IDM_CHARACTER    32771
#define IDM_REGULAR      32772
#define IDM_BOLD         32773
#define IDM_ITALIC       32774
#define IDM_UNDERLINE    32775

// ---------------------------------------------------------------------
// Turbo Vision for C++ ...
// ---------------------------------------------------------------------
# define Uses_TApplication
# define Uses_TProgram
# define Uses_TObject
# define Uses_TView
# define Uses_TWindow
# define Uses_fpstream
# define Uses_ipstream
# define Uses_opstream
# define Uses_TInputLine
# define Uses_TLabel
# define Uses_TCheckBoxes
# define Uses_TDrawBuffer
# define Uses_TRect
# define Uses_TKeys
# define Uses_TSItem
# define Uses_TRadioButtons
# define Uses_TCollection
# define Uses_TScroller
# define Uses_TStaticText
# define Uses_TButton
# define Uses_TSortedListBox
# define Uses_TStatusLine
# define Uses_TStatusItem
# define Uses_TStatusDef
# define Uses_TChDirDialog
# define Uses_TFileDialog
# define Uses_THistory
# define Uses_MsgBox
# define Uses_TDisplay
# define Uses_TScreen
# define Uses_TEditor
# define Uses_TMemo
# define Uses_TStreamable
# define Uses_TStreamableClass
# define Uses_TStringCollection
# define Uses_TEvent
# define Uses_TDialog
# define Uses_TMenu
# define Uses_TSubMenu
# define Uses_TMenuItem
# define Uses_TMenuBar
# define Uses_TDeskTop

# include <tvision/tv.h>
# include <tvision/help.h>

# include "help.h"

inline int SUCCESS() { return 0; }
inline int FAILURE() { return 1; }

// ---------------------------------------------------------------------
// forward declaration's ...
// ---------------------------------------------------------------------
class TApplication;
class TMenuBar;
class TStatusLine;
class TEditWindow;
class TDialog;

// ---------------------------------------------------------------------
// xBASE 4.6.0 database stuff ...
// ---------------------------------------------------------------------
# include "xbase.h"

// ---------------------------------------------------------------------
// database stuff ...
// ---------------------------------------------------------------------
::xb::xbXBase * xdbf_data_class = nullptr;
::xb::xbDbf   * xdbf_data_file  = nullptr;

::std::string   xdbf_data_table;
::std::string   xdbf_data_directory;

# define MAX_LEN 64

// ---------------------------------------------------------------------
// collection class for list boxes (Turbo Vision)
// ---------------------------------------------------------------------
class LB_Collection: public TCollection {
public:
	LB_Collection(short lim, short delta):
		TCollection(lim, delta)
		{}
	virtual void  freeItem(void *p) {
		delete[] (char *) p;
	}
private:
	virtual void *readItem( ipstream& ) { return 0; }
	virtual void writeItem( void *, opstream& ) {}
};

LB_Collection * xdbf_lbc_1 = nullptr;
LB_Collection * xdbf_lbc_2 = nullptr;
LB_Collection * xdbf_lbc_3 = nullptr;
LB_Collection * xdbf_lbc_4 = nullptr;
LB_Collection * xdbf_lbc_5 = nullptr;
LB_Collection * xdbf_lbc_6 = nullptr;

TListBox * xdbf_lb_1 = nullptr;
TListBox * xdbf_lb_2 = nullptr;
TListBox * xdbf_lb_3 = nullptr;
TListBox * xdbf_lb_4 = nullptr;
TListBox * xdbf_lb_5 = nullptr;
TListBox * xdbf_lb_6 = nullptr;

TListBox * new_file_lb_1 = nullptr;
TListBox * new_file_lb_2 = nullptr;
TListBox * new_file_lb_3 = nullptr;
TListBox * new_file_lb_4 = nullptr;

LB_Collection * xdbf_sc_1 = nullptr;
LB_Collection * xdbf_sc_2 = nullptr;
LB_Collection * xdbf_sc_3 = nullptr;
LB_Collection * xdbf_sc_4 = nullptr;
		
::std::vector< ::std::string > xdbf_vec_1;
::std::vector< ::std::string > xdbf_vec_2;
::std::vector< ::std::string > xdbf_vec_3;
::std::vector< ::std::string > xdbf_vec_4;

// ---------------------------------------------------------------------
// error handling
// ---------------------------------------------------------------------
# define NULL_DEVICE_NAME "NUL"

static ::std::stringstream error_buffer;

constexpr int FPE_INTDIV	= 1;
constexpr int FPE_INTOVF	= 2;
constexpr int FPE_FLTDIV	= 3;
constexpr int FPE_FLTOVF	= 4;

constexpr int FPE_FLTUND	= 5;
constexpr int FPE_FLTRES	= 6;
constexpr int FPE_FLTINV	= 7;
constexpr int FPE_FLTSUB	= 8;

constexpr int ILL_ILLOPC	= 1;	// illegal opcode
constexpr int ILL_ILLOPN	= 2;	// illegal operand
constexpr int ILL_ILLADR	= 3;	// illegal addressing mode
constexpr int ILL_ILLTRP	= 4;	// illegal trap
constexpr int ILL_PRVOPC	= 5;	// privileged opcode
constexpr int ILL_PRVREG	= 6;	// privileged register
constexpr int ILL_COPROC	= 7;	// coprocessor error
constexpr int ILL_BADSTK	= 8;	// internal stack error
constexpr int ILL_BADIADDR	= 9;	// unimplemented instruction address


static uint8_t app_lang = 1;

// ---------------------------------------------------------------------
// namespace placeholder.
// ---------------------------------------------------------------------
using namespace asmjit;
using namespace x86;
using namespace std;
using namespace xb;

extern "C" int test_dwarf(void);
extern "C" int test_dwarf2(void);

// ---------------------------------------------------------------------
// name space for the PL library:
// ---------------------------------------------------------------------
namespace prolog {

// ---------------------------------------------------------------------
// forward declaration's ...
// ---------------------------------------------------------------------
template <typename T1, typename T2> class Application;
template <typename T1>              class Desktop;
template <typename T1>              class Client;
template <typename T1>              class Server;
template <typename T1>              class IO_Stream;    // in/out stream

class ConsoleApplication;
class Console;
class Normal;
class Html;
class Ftp;

class PL_Exception_Application;
class PL_Exception_Windows;

static ConsoleApplication * _app = nullptr;

// ---------------------------------------------------------------------
// anonym func pointer to start user application from intro window ...
// ---------------------------------------------------------------------
::std::function<void(prolog::Normal *, int) > ApplicationFuncExePtr;

void ApplicationFuncTUI (prolog::Normal *ptr, int);
void ApplicationFuncGUI (prolog::Normal *ptr, int);

// ---------------------------------------------------------------------
// locale string's (english):
// ---------------------------------------------------------------------
class locale_eng {
private:
	::std::vector< ::std::string > eng_locale = {
		"prolog64",                             // 0000
		"default exception",                    // 0001
		"Application Exception.",               // 0002
		"Can not open:",                        // 0003
		"can not get app language",             // 0004
		"only one output supported.",           // 0005
		"unknown option.",                      // 0006
		"no output file given.",                // 0007
		"can not open input file: ",            // 0008
		"could not determine parser on "        //
		"file extension.",                      // 0009
		"Command line Error",                   // 0010
		"line  : ",                             // 0011
		"reason: ",                             // 0012
		"parser error in line: ",               // 0013
		"compiler: FAIL.",                      // 0014
		"Would You Exit the Application ?",     // 0015
		"Did you would really like exit the "   //
		"Application ?\n"                       //
		"This can take awhile ...",             // 0016
		"Cancel",                               // 0017
		"Help",                                 // 0018
		"New",                                  // 0019
		"~L~oad",                               // 0020
		"Could not open help file",             // 0021
		"~P~roject name:",                      // 0022
		"Error:\nCould not create view.",       // 0023
		"not yet implemented",                  // 0024
		"create",                               // 0025
		"dBASE Catalog:",                       // 0026
		"Open File",                            // 0027
		"~N~ame",                               // 0028
		"~F1~ Help",                            // 0029
		"~F3~ Open",                            // 0030
		"~F10~ Menu",                           // 0031
		"input file read error",                // 0032
		"unterminated comment",                 // 0033
		"parser error",                         // 0034
		"Applications",                         // 0035
		"Data",                                 // 0036
		"Labels",                               // 0037
		"Forms",                                // 0038
		"Queries",                              // 0039
		"Reports",                              // 0040
		"ASCII Chart",                          // 0041
		
		"~F~ile",                               // 0042
		"~O~pen...",                            // 0043
		"~S~ave",                               // 0044
		"~C~hange directory...",                // 0045
		"E~x~it",                               // 0046
				
		"~W~indow",                             // 0047
		"~M~ove",                               // 0048
		"~N~ext",                               // 0049
		"~P~rev",                               // 0050
		"~C~lose",                              // 0051
				
		"~H~elp",                               // 0052
		"~I~ndex",                              // 0053
		"~O~nline Help",                        // 0054
		
		"~A~bout...",                           // 0055
		
		"dBASE new file:",                      // 0056
		"~T~able name:",                        // 0057
		"Field name:",                          // 0058
		"Field type:",                          // 0059
		"Field length:",                        // 0060
		"Field prec.:",                         // 0061
		
		"Add Field",                            // 0062
		"Del Field",                            // 0063
		"Save Table",                           // 0064
		"Active Focus",                         // 0065
		"Field already exists",                 // 0066
		"Empty fields not allowed",             // 0067
		
		"Empty Field name not allowed",         // 0068
		"Empty Field type not allowed",         // 0069
		"Empty Field length not allowed",       // 0070
		"Empty Field prec. not allowed",        // 0071
		
		"data type unknown",                    // 0072
		"Error: ",                              // 0073
		"common exception occured.",            // 0074
		"comment not terminated.",              // 0075
		"unknown keyword found.",               // 0076
		"identifier as keywords not allowed.",  // 0077
		"semicolon expected",                   // 0078
		"New Project",                          // 0079
		"Failed to open file '",                // 0080
		
		" Decimal: ",                           // 0081
		"no table name available",              // 0082
		"can't create data base file",          // 0083
		
		"Windows System Error:",                // 0084
		"Database Systen Error:",               // 0085
		"database information writen",          // 0086
		"can not get information for data "
		"file:\n%s",                            // 0087
		"given file is a directory, not a"
		"database file",                        // 0088
		"a file with this name already exists\n"
		"would you override it ?",              // 0089
		"would you realy delete the current "
		"data record ?",                        // 0090
		"data record is empty - not allowed",   // 0091
		"no data record available for save",    // 0092
		"table already exists in the database "
		"catalog !\nwould you replace it ?",    // 0093
		
		"internal field delete error",          // 0094
		"internal error - no such table file "
		"available on storage disk",            // 0095
		
		"signal handler error: ",               // 0096
		
		"Error: data-base:",                    // 0097
		"XB_INVALID_DATA",                      // 0098
		"XB_INVALID_FIELD_NAME",                // 0099
		"XB_INVALID_FIELD_NO",                  // 0100
		"XB_INVALID_FIELD_TYPE",                // 0101
		
		"internal memory error",                // 0102
		"Error !",                              // 0103
		"Register Window Creation Failed !",    // 0104
		
		"New\nProject",                         // 0105
		"New\nReport",                          // 0106
		"New\nSQL",                             // 0107
		"New\nForm",                            // 0108
		"Custom\nReport",                       // 0109
		"Data Module",                          // 0110
		"Custom Form",                          // 0111
		"New\nLabel",                           // 0112
		"New\nMenue",                           // 0113
		"New\nPopup",                           // 0114
		"New\nProgram",                         // 0115
		"New\nTable",                           // 0116
		"Table's",                              // 0117
		"All",                                  // 0118
		"Querie's",                             // 0119
		"Form's",                               // 0120
		"Program's",                            // 0121

		"locale string"
	};
public:
	::std::string
	message(int32_t which) {
		::std::stringstream ss;
		::std::string r;

		ss  << eng_locale.at( which )
			<< ::std::endl;
			
		ss.str().erase(
		ss.str().size()-1,1);

		// ----------------------------------
		// replace german umlauts ...
		// ----------------------------------
		for (int i  = 0; i < ss.str().length()-1; ++i)
		{
			int ch  = ss.str().c_str()[i];
			
			if (ch == 'Ä') { r += 0x8E; } else
			if (ch == 'Ü') { r += 0x9A; } else
			if (ch == 'Ö') { r += 0x99; } else
			
			if (ch == 'ü') { r += 0x81; } else
			if (ch == 'ä') { r += 0x84; } else
			if (ch == 'ö') { r += 0x94; } else
			
			if (ch == 'ß') { r += 0xE1; } else
			
			r += ch;
		}	return r;
	}
	locale_eng() {}
};

// ---------------------------------------------------------------------
// locale string's (german):
// ---------------------------------------------------------------------
class locale_deu {
private:
	::std::vector< ::std::string > deu_locale = {
		"prolog64",                                  // 0000
		"Standard-Ausnahme",                         // 0001
		"Anwendungs-Ausnahme",                       // 0002
		"kann nicht geöffnet werden:",               // 0003
		"kann Anwendungs-Sprache nicht ermitteln",   // 0004
		"nur eine Ausgabe-Datei unerstützt",         // 0005
		"nicht bekannte Option.",                    // 0006
		"keine Ausgabe-Datei angegeben",             // 0007
		"kann Eingabe-Datei nicht öffnen: ",         // 0008
		"kann Parser anhand der Erweiterung "        //
		"der Eingabe-Datei ermitteln.",              // 0009
		"Kommandozeilen-Fehler",                     // 0010
		"Zeile : ",                                  // 0011
		"Grund : ",                                  // 0012
		"Parser Fehler in Zeile: ",                  // 0013
		"Compiler: fehlgeschlagen",                  // 0014
		"Möchten Sie die Anwendung beenden ?",       // 0015
		"Möchten Sie die Anwendung beenden ?\n"      //
		"Dies kann etwas dauern...",                 // 0016
		"Abbrechen",                                 // 0017
		"Hilfe",                                     // 0018
		"Neu",                                       // 0019
		"~L~aden",                                   // 0020
		"Hilfe-Datei konnte nicht geöffnet werden.", // 0021
		"~P~rojekt-Name:",                           // 0022
		"Fehler:\nAnsicht konnte nicht erstellt "    //
		"werden",                                    // 0023
		"noch nicht implementiert",                  // 0024
		"Neu",                                       // 0025
		"dBASE Katalog:",                            // 0026
		"Öffnen",                                    // 0027
		"~N~ame",                                    // 0028
		"~F1~ Hilfe",                                // 0029
		"~F3~ Öffnen",                               // 0030
		"~F10~ Menü",                                // 0031
		"Eingabe-Datei: Lese-Fehler.",               // 0032
		"Kommentar wurde nicht abgeschlossen",       // 0033
		"Parser-Fehler",                             // 0034
		"Anwendungen",                               // 0035
		"Tabelle",                                   // 0036
		"Etiketten",                                 // 0037
		"Formulare",                                 // 0038
		"Abfragen",                                  // 0039
		"Reporte",                                   // 0040
		"ASCII Tabelle",                             // 0041
		
		"~D~atei",                                   // 0042
		"~Ö~ffnen...",                               // 0043
		"~S~peichern",                               // 0044
		"~V~erz. wechseln...",                       // 0045
		"Beenden",                                   // 0046
				
		"~F~enster",                                 // 0047
		"~V~erschieben",                             // 0048
		"~N~ächstes",                                // 0049
		"Vorhergehendes",                            // 0050
		"~S~chließen",                               // 0051
				
		"~H~ilfe",                                   // 0052
		"~I~nhalt",                                  // 0053
		"~O~nline Hilfe",                            // 0054
		
		"~Ü~ber...",                                 // 0055
		
		"dBASE neue Tabelle:",                       // 0056
		"~T~ablle-Name:",                            // 0057
		"Feld-Name:",                                // 0058
		"Feld-Typ:",                                 // 0059
		"Feld-Länge:",                               // 0060
		"Feld-Auflö.:",                              // 0061

		"Hinzufügen",                                // 0062
		"Löschen",                                   // 0063
		"Speichern",                                 // 0064
		"Liste fokusiert",                           // 0065
		"Feld existiert bereits",                    // 0066
		"Feld darf nicht leer sein",                 // 0067

		"Field-Name darf nicht leer sein",           // 0068
		"Field-Typ  darf nicht leer sein",           // 0069
		"Field-Länge darf nicht leer sein",          // 0070
		"Field-Prec. darf nicht leer sein",          // 0071
		
		"Datentyp unbekannt.",                       // 0072
		"Fehler: ",                                  // 0073
		"Allgemeine Ausnahme aufgetretten",          // 0074
		"Kommentar wurde nicht abgeschlossen",       // 0075
		"Anweisung ist nicht gültig.",               // 0076
		"Kommandozeichenfolge ist ein reserviertes "
		"Schlüsselwort",                             // 0077
		"Semikolon erwartet",                        // 0078
		"Neues Projekt",                             // 0079
		"Datei kann nicht geöffnet werden: '",       // 0080
		
		" Dezimal: ",                                // 0081
		"kein Tabellen-Name vergeben",               // 0082
		"kann Datentabelle nicht anlegen",           // 0083
		
		"Windows System Fehler:",                    // 0084
		"Datenbank System Fehler:",                  // 0085
		"Tabellen-Informationen geschrieben",        // 0086
		"Datei-Informationen können nicht "
		"abgerufen werden:\n%s",                     // 0087
		"Datei-Name ist ein Verzeichnis, und "
		"keine Datenbank-Datei",                     // 0088
		"Daten-Datei existiert bereits\n"
		"Soll diese überschrieben werden ?",         // 0089
		"möchten Sie das aktuelle Tabellen-Feld "
		"löschen ?",                                 // 0090
		"Datensatz-Bezeichner darf nicht leer "
		"sein",                                      // 0091
		"kein Datenfeld vorhanden, das abge"
		"speichert werden kann",                     // 0092
		"Tabelle existiert bereits im Datenbank "
		"Katalog !\n möchten Sie diese über"
		"ersetzen ?",                                // 0093
		
		"interner Datensatz-Lösch-Fehler",           // 0094
		"interner Fehler: keine Datei für diesen "
		"Zugriff vorhanden.",                        // 0095
		
		"Signal-Handler Fehler: ",                   // 0096
		
		"Fehler: Datenbank:",                        // 0097
		"XB_INVALID_DATA",                           // 0098
		"XB_INVALID_FIELD_NAME",                     // 0099
		"XB_INVALID_FIELD_NO",                       // 0100
		"XB_INVALID_FIELD_TYPE",                     // 0101

		"interner Speicher-Fehler",                  // 0102
		"Fehler !",                                  // 0103
		"Fenster konnte nicht registriert werden !", // 0104

		"Neues\nProjekt",                            // 0105
		"Neuer\nBericht",                            // 0106
		"Neu\nSQL",                                  // 0107
		"Neues\nFormular",                           // 0108
		"benutzdefi.\nBericht",                      // 0109
		"Daten Modul",                               // 0110
		"benutzdefi.\nFormulat",                     // 0111
		"Neues\nEttiket",                            // 0112
		"Neues\nMenü",                               // 0113
		"Neues\nPopup-Menü",                         // 0114
		"Neues\nProgramm",                           // 0115
		"Neue\nTabelle",                             // 0116
		"Tabellen",                                  // 0117
		"Alle",                                      // 0118
		"Abfragen",                                  // 0119
		"Formulare",                                 // 0120
		"Programme",                                 // 0121
		
		"locale zeichenkette"
	};

public:
	::std::string
	message(int32_t which) {
		::std::stringstream ss;
		::std::string r;

		ss  << deu_locale.at( which )
			<< ::std::endl;
			
		ss.str().erase(
		ss.str().size()-1,1);

		// ----------------------------------
		// replace german umlauts ...
		// ----------------------------------
		for (int i  = 0; i < ss.str().length()-1; ++i)
		{
			int ch  = ss.str().c_str()[i];
			
			if (ch == 'Ä') { r += 0x8E; } else
			if (ch == 'Ü') { r += 0x9A; } else
			if (ch == 'Ö') { r += 0x99; } else
			
			if (ch == 'ü') { r += 0x81; } else
			if (ch == 'ä') { r += 0x84; } else
			if (ch == 'ö') { r += 0x94; } else
			
			if (ch == 'ß') { r += 0xE1; } else
			
			r += ch;
		}	return r;
	}
	locale_deu() {}
};

::std::string
locale_str(int32_t which)
{
	if (app_lang == 1) { locale_eng l; return l.message( which ); } else
	if (app_lang == 2) { locale_deu l; return l.message( which ); }
	
	return "";
}

uint32_t PL_line_row = 1;	// PL parser row number
uint32_t PL_line_col = 1;   // ...       column #

# define TOK_IDENT 1000
# define TOK_WHITE 1001

// ---------------------------------------------------------------------
// some mark-up styles, and code writing shortner ...
// ---------------------------------------------------------------------
# define BEGIN_WHILE       \
  while (                  \
  PL_lookaheadPosition !=  \
  PL_file_size)    {
# define END_WHILE }

#ifdef DEBUG
# define DEBUGSTR(x)       \
  ::std::cout <<  x  <<    \
  ::std::endl ;
#else
# define DEBUGSTR(x)
#endif


// ---------------------------------------------------------------------
// helper tool's:
// ---------------------------------------------------------------------
// trim from start (in place)
// ---------------------------------------------------------------------
static inline void ltrim(std::string &s) {
	s.erase(s.begin(), std::find_if(s.begin(), s.end(), [](unsigned char ch) {
		return !std::isspace(ch);
	}));
}

// ---------------------------------------------------------------------
// trim from end (in place)
// ---------------------------------------------------------------------
static inline void rtrim(std::string &s) {
	s.erase(std::find_if(s.rbegin(), s.rend(), [](unsigned char ch) {
		return !std::isspace(ch);
	}).base(), s.end());
}

// ---------------------------------------------------------------------
// trim from both ends (in place)
// ---------------------------------------------------------------------
static inline void trim(std::string &s) {
	rtrim(s);
	ltrim(s);
}

// ---------------------------------------------------------------------
// trim from both ends (copying)
// ---------------------------------------------------------------------
static inline std::string trim_copy(std::string s) {
	trim(s);
	return s;
}

// ---------------------------------------------------------------------
//! \class  PL_Exception
//! \since  Version 0.0.1
//! \authos paule32
//! \~English
//! \brief A tiny class with big advantages.
//! \details
//! This class handle exception in Application's, and is used to
//! minimizing Code (no more care, and use of using function results in
//! Context of failures.
//!
//! \~endEnglish
//! \~German
//! \brief Eine kleine Klasse, mit großer Wirkung.
//! \details
//! Sie behandelt Ausnahmen
//! in Anwendungen, und wird benutzt, um den Quellcode kleiner, und
//! sauberer zu halten. Es ist nicht mehr nötig, sich durch
//! Spagetty-Code mit einer Vielzahl an "return" Werten zu navigieren.
//!
//! \~endGerman
// ---------------------------------------------------------------------
class PL_Exception : public std::exception
{
	const ::std::string _message;

	const uint32_t   _line_row;
	const uint32_t   _line_col;

public:
	template <typename T1>
	PL_Exception( T1 msg, uint32_t line = 1):
		_message( msg ),
		_line_row(line),
		_line_col(PL_line_col)
		{}
	PL_Exception():
		_message( locale_str( 2 ) ),
		_line_row(PL_line_row),
		_line_col(PL_line_col)
		{}
		
    const char* what()
	const throw() {
		return _message.c_str();
	}
	const uint32_t line()
	const throw() {
		return _line_row;
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
class PL_Exception_CommandLine     : public PL_Exception { using PL_Exception::PL_Exception; };
class PL_Exception_ParserError     : public PL_Exception { using PL_Exception::PL_Exception; };
class PL_Exception_Application     : public PL_Exception { using PL_Exception::PL_Exception; };
class PL_Exception_Windows         : public PL_Exception { using PL_Exception::PL_Exception; };
class PL_Exception_DataBase        : public PL_Exception { using PL_Exception::PL_Exception; };
class PL_Exception_DataBaseWarning : public PL_Exception { using PL_Exception::PL_Exception; };

// ---------------------------------------------------------------------
// for customize the compiler output ...
// ---------------------------------------------------------------------
# define ENGLISH 1
# define GERMAN  2

#ifndef LANGUAGE
# define LANGUAGE  ENGLISH
#endif

// ---------------------------------------------------------------------
// static assert compiler output:
// ---------------------------------------------------------------------
#if LANGUAGE == ENGLISH
# define PL_ASSERT_APPLICATION              "T1 must be of <DOS> or <Windows> !"
# define PL_ASSERT_APPLICATION_ASCII        "T1 must be of <English> or <German> !"
# define PL_ASSERT_APPLICATION_STREAMER_IO  "T1 must be of <i/ofstream> or <wi/ofstream> !"
# define PL_ASSERT_APPLICATION_WINDOWS      "T1 must be of <Desktop> or <Server> !"
#elif LANGUAGE == GERMAN
# define PL_ASSERT_APPLICATION              "T1 Typ muss <DOS> oder <Windows> sein !"
# define PL_ASSERT_APPLICATION_ASCII        "T1 Typ muss <English> oder <German> sein !"
# define PL_ASSERT_APPLICATION_STREAMER_IO  "T1 Typ muss <i/ofstream> oder <wi/ofstream> sein !"
# define PL_ASSERT_APPLICATION_WINDOWS      "T1 Typ muss <Desktop> oder <Server> sein !"
#endif

# define PL_HELPFILE	"prolog64.hlp"

inline int NT_ListExpr  () { return 1; }
inline int NT_ListString() { return 2; }

struct PL_ASTList_Expr {
	double lhs;
	double rhs;
	int    op;
};

struct PL_ASTList_String {
	::std::string str;
	int           op;
};

struct PL_ASTList_Node {
	int lineno;
	int nodeType;
	::std::string name;
	
	::std::vector< PL_ASTList_Expr   * > nodes_expr;
	::std::vector< PL_ASTList_String * > nodes_string;
	
	struct PL_ASTList_Node * next;
} *pl_head, *pl_tail, * pl_ptr ;


// ---------------------------------------------------------------------
// const, variables.
// ---------------------------------------------------------------------
#define STDCOUT  std::cout

const int CVT_NONE   = 0;
const int CVT_ASM    = 1;
const int CVT_PASCAL = 2;   // default ?

int   convert_mode   = 0;

// ---------------------------------------------------------------------
// DWARF debugging class ...
// ---------------------------------------------------------------------
class DWARF {
	::std::ifstream ifile;
public:
	DWARF(::std::string file_name)
	{
		unsigned            ftype = 0;
		unsigned           endian = 0;
		unsigned       offsetsize = 0;
		int               errcode = 0;
		int                   res = 0;
		Dwarf_Unsigned   filesize = 0;
		unsigned char path_source = DW_PATHSOURCE_unspecified;

		res = test_dwarf();

		if (res == DW_DLV_NO_ENTRY)
		throw PL_Exception_Application("FAIL Cannot dwarf_object_init_b() NO ENTRY."); else
		if (res == DW_DLV_ERROR)
		throw PL_Exception_Application("FAIL CannoNTRY.");

		res = test_dwarf2();
		
		if (res == DW_DLV_NO_ENTRY)
		throw PL_Exception_Application("FAIL Cannot dwarf_object_init_b() NO ENTRY."); else
		if (res == DW_DLV_ERROR)
		throw PL_Exception_Application("FAIL CannoNTRY.");

#if 0
		res = dwarf_object_detector_path_b(
			file_name.c_str(),
			0,0,
			0,0,
			&ftype,&endian,&offsetsize,&filesize,
			&path_source,&errcode);

		if (res != DW_DLV_OK) {
			error_buffer.str("");
			if (res == DW_DLV_ERROR) {
				error_buffer
				<< ::std::string( locale_str( 3 ) )
				<< ::std::string(file_name)
				<< ::std::endl
				<< ::std::string( locale_str( 73 ).c_str() )
				<< dwarf_errmsg_by_number(errcode);
			}	else {
				error_buffer
				<< ::std::string("There is no file: ")
				<< ::std::string(file_name);
			}
			throw PL_Exception_Application(
			error_buffer.str().c_str() );
		}
#endif
	}

	DWARF() {}
	~DWARF()
	{
	}
};

// ---------------------------------------------------------------------
// Application event numbers for Console Project's ...
// ---------------------------------------------------------------------
const unsigned cmMMChangeMenu      = 0x1600;

const unsigned cmNothing            = 200;
const unsigned cmAboutBox           = 201;

const unsigned cmNewProject         = 202;
const unsigned cmNewProjectCancel   = 203;

const unsigned cmHelp               = 204;
const unsigned cmHelpIndex          = 205;
const unsigned cmHelpOnline         = 206;

const unsigned cmAppQuit            = 300;

const unsigned cmLoadData           = 401;
const unsigned cmNewData            = 402;

const unsigned cmDBASE_data         = 500;
const unsigned cmDBASE_query        = 501;
const unsigned cmDBASE_form         = 502;
const unsigned cmDBASE_report       = 503;
const unsigned cmDBASE_label        = 504;
const unsigned cmDBASE_app          = 505;

const unsigned cmDBASE_add_field    = 506;
const unsigned cmDBASE_del_field    = 507;
const unsigned cmDBASE_sav_field    = 508;
const unsigned cmDBASE_upd_field    = 509;

const unsigned cmAsciiTableCmdBase  = 910;
const unsigned cmAsciiTableCmd      = 911;
const unsigned cmCharFocused        =   0;

const unsigned hlChangeDir          = cmChangeDir;
const unsigned maxLineLength        = 255;

static short winNumber              = 0;

// ---------------------------------------------------------------------
// common global settings structure, to minimize global variable.
// so, this structure is a container for variables that may be use
// multiple time.
// ---------------------------------------------------------------------
# define PL_appLang_ENG 1
# define PL_appLang_DEU 2

struct PL_globalHolderValues {
	uint8_t PL_language;		// application language: ENG:1 / DEU:2
};
PL_globalHolderValues PL_globalHolder;

// ---------------------------------------------
// this structure set/get the components values
// of new project dialog items ...
// ---------------------------------------------
static struct DialogData {
	char   inputLineData[128];
	ushort radioButtons1Data;
	ushort radioButtons2Data;
	ushort checkButtons1Data;
} *newData;

// ---------------------------------------------------------------------
// the main console application class ...
// ---------------------------------------------------------------------
class ConsoleApplication: public TApplication {
public:
	class TMultiMenu : public ::TMenuBar {
	protected:
		::TMenu** mList;
		int       numMenus;
	public:
		//! Constructor for a TMultiMenu object.  This version takes an array
		//! of TMenu pointers.
		TMultiMenu( const TRect& bounds, TMenu *aMenu[], int nMenus = 0 ):
			::TMenuBar( bounds, aMenu[0])
		{
			if  (nMenus == 0)
			for (nMenus  = 0; aMenu[nMenus] != NULL; nMenus++);

			mList    = new TMenu *[nMenus];
			numMenus =             nMenus ;

			for (int i = 0; i < nMenus; i++)
			mList[i]   = aMenu[i];
		}

		//! Constructor for a TMultiMenu object.  This version takes an array
		//! of TSubMenu objects.
		TMultiMenu( const TRect& bounds, TSubMenu aMenu[], int nMenus):
			TMenuBar( bounds, aMenu[0]),
			mList (new TMenu *[nMenus]),
			numMenus( nMenus )
		{
			mList[0]   = menu;                  // First menu is already allocated.

			for (int i =  1; i    < nMenus; i++)
			mList[i]   = new TMenu( aMenu[i]);
		}

		//! Destructor for a TMultiMenu object.  Destroys any stored menus
		//! except for the current one (which will be destroyed by ~TMenuBar)
		//! and frees the space where the list was stored.
		~TMultiMenu() {
			for (int i = 0; i < numMenus; i++)
				
			if (mList[i] != menu)
		
			delete mList[i];
			delete [] mList;
		}		
	};

	class TClockView: public TView {
		char lastTime[9];
		char curTime [9];
		
	public:
		TClockView(TRect& r): TView(r) {
			strcpy(lastTime, "        ");
			strcpy(curTime , "        ");
		}
		virtual void draw() {
			TDrawBuffer buf;
			TColorAttr c = getColor(2);
			
			buf.moveChar(0, ' ',     c , (short)size.x);
			buf.moveStr (0, curTime, c);
			writeLine   (0, 0, (short)size.x, 1, buf);
		}
		virtual void update() {
			time_t t = time(0);
			char *date = ctime(&t);

			date[19] = '\0';
			strcpy(curTime, &date[11]);        /* Extract time. */

			if( strcmp(lastTime, curTime)) {
				drawView();
				strcpy(lastTime, curTime);
			}
		}
	};

	// ---------------------------------------------------------------------
	// PE file reader (Windows format):
	// ---------------------------------------------------------------------
	class peExeReader: public TDialog {
	public:
		peExeReader(::std::string filename):
			TWindowInit( &peExeReader::initFrame ),
			TDialog( TRect( 0,0, 52,13), "Windows PE-Exe"),
			name("peExeReader") {

			flags &= ~(wfGrow | wfZoom);
			growMode = 0;
				
			options |= ofCentered;
			options |= ofSelectable;
			
			TInputLine *control = new TInputLine( TRect( 3,2, 34,3), 80);
			insert(control);
			insert( new TLabel  ( TRect(  2,1, 15, 2 ), "~P~roject name:", control));
			insert( new THistory( TRect( 34,2, 37, 3 ), control, 10));
		}
	
		peExeReader(StreamableInit):
				TWindowInit(0),
				TDialog(streamableInit),
				name("peExeReader")
		{}
				
		peExeReader():
			TWindowInit(0),
			TDialog(streamableInit),
			name("peExeReader")
		{}
		
		~peExeReader() {
		}
		
	private:
		virtual const char *streamableName() const
		{ return name; }
	protected:
		virtual void write( opstream& os) { TWindow::write(os); }
		virtual void* read( ipstream& is) { TWindow::read (is); return this; }
	public:
			   const char  * const name;
		static TStreamable * build() {
			return new peExeReader( streamableInit );
		}
	};

	class TTable: public TView
	{
	public:
		TTable( TRect& r ):
			TView(r),
			name("TTable") {
			eventMask |= evKeyboard;
		}
		TTable( StreamableInit ):
			TView(streamableInit),
			name("TTable")
			{}
		
		virtual void draw()
		{
			TDrawBuffer buf;
			TColorAttr  color = getColor(6);

			for(ushort y = 0; y <= size.y-1; y++) {
				buf.moveChar(0, ' ', color, (short)size.x );
				for ( ushort x = 0; x <= size.x-1; x++)
				buf.moveChar(x, (ushort)(32*y+x), color, (ushort)1 );
				writeLine(0, y, (short)size.x, (ushort)1, buf);
			}
			showCursor();
		}

		virtual void
		handleEvent( TEvent& event ) {
		    TView::handleEvent(event);

			if (event.what == evMouseDown)
			{
				do {
					if (mouseInView(event.mouse.where)) {
						TPoint spot = makeLocal(event.mouse.where);
						setCursor(spot.x, spot.y);
						charFocused();
					}
				} while (mouseEvent(event, evMouseMove));
		
				clearEvent(event);
			}
			else if (event.what == evKeyboard)
			{
				switch (event.keyDown.keyCode)
				{
					case kbHome: setCursor(0,0); break;
					case kbEnd: setCursor(size.x-1, size.y-1); break;
					case kbUp:
						if (cursor.y > 0)
						setCursor(cursor.x, cursor.y-1);
					break;
					case kbDown:
						if (cursor.y < size.y-1)
						setCursor(cursor.x, cursor.y+1);
					break;
					case kbLeft:
						if (cursor.x > 0)
						setCursor(cursor.x-1, cursor.y);
					break;
					case kbRight:
						if (cursor.x < size.x-1)
						setCursor(cursor.x+1, cursor.y);
					break;
					default:
						setCursor(event.keyDown.charScan.charCode % 32,
						event.keyDown.charScan.charCode / 32);
					break;
				}
				
				charFocused();
				clearEvent(event);
			}
		}
		
		void charFocused()
		{
			message(owner, evBroadcast, cmAsciiTableCmdBase + cmCharFocused,
			(void *)(size_t)(cursor.x + 32 * cursor.y));
		}
	private:
		virtual const char *streamableName() const
		{ return name; }
		
	protected:
		virtual void write( opstream& os) { TView::write(os); }
		virtual void *read( ipstream& is) { TView::read (is); return this; }

	public:
		        const char * const name;
		static TStreamable *build();
	};

	class TReport: public TView
	{
	public:
		TReport( TRect& r):
			TView(r),
			name("TReport") {
			asciiChar = 0;
		}
		TReport( StreamableInit ):
			TView(streamableInit),
			name("TReport")
			{}

		virtual void draw()
		{
			TDrawBuffer buf;
			TColorAttr  color = getColor(6);
			char        str[80];
			ostrstream  statusStr( str, sizeof str );

			statusStr
			<< "  Char: "       << (char ) ((asciiChar == 0) ? 0x20 : asciiChar)
			<< locale_str( 81 ) << setw(3) << (int) asciiChar
			<< " Hex " << hex   << setiosflags(ios::uppercase)
			<< setw(2) << (int) asciiChar << "     " << ends;

			buf.moveStr(0, str , color);
			writeLine(0,0, 32,1, buf);
		}

		virtual void
		handleEvent( TEvent& event )
		{
			TView::handleEvent(event);
			if (event.what == evBroadcast) {
				if (event.message.command == cmAsciiTableCmdBase + cmCharFocused) {
					asciiChar = event.message.infoByte;
					drawView();
				}
			}
		}

	private:
		uchar asciiChar;
		virtual const char *streamableName() const
		{ return name; }

	protected:
		virtual void write( opstream& os) { TView::write(os); os << asciiChar; }
		virtual void *read( ipstream& is) { TView::read (is); is >> asciiChar; return this; }

	public:
		        const char * const name;
		static TStreamable *build() {
			return new TReport( streamableInit );
		}
	};

	class TAsciiChart: public TWindow {
	public:
		TAsciiChart():
			TWindowInit( &TAsciiChart::initFrame ),
			TWindow(TRect(0, 0, 34, 12), locale_str( 41 ), wnNoNumber),
			name("TAsciiChart")
		{
			TView *control;

			flags &= ~(wfGrow | wfZoom);
			growMode = 0;
			palette = wpGrayWindow;

			TRect r = getExtent();
			r.grow(-1, -1);
			r.a.y = r.b.y - 1;
			
			control = new TReport( r );
			control->options   |= ofFramed;
			control->eventMask |= evBroadcast;
			insert(control);

			r = getExtent();
			r.grow(-1, -1);
			r.b.y = r.b.y - 2;
			
			control = new TTable( r );
			control->options |= ofFramed;
			control->options |= ofSelectable;
			control->blockCursor();
			insert(control);
			control->select();
		}

		TAsciiChart(StreamableInit):
			TWindowInit(0),
			TWindow(streamableInit),
			name("TAsciiChart")
			{}
			
		virtual void handleEvent( TEvent &event ) {
			TWindow::handleEvent( event );
		}

	private:
		virtual const char *streamableName() const
		{ return name; }
	protected:
		virtual void write( opstream& os) { TWindow::write(os); }
		virtual void* read( ipstream& is) { TWindow::read (is); return this; }
	public:
		       const char  * const name;
		static TStreamable * build() {
			return new TAsciiChart( streamableInit );
		}
	};
	
	class TLineCollection: public TCollection {
	public:
		TLineCollection(short lim, short delta) : TCollection(lim, delta) {}
		virtual void  freeItem(void *p) { delete[] (char *) p; }
	private:
		virtual void *readItem( ipstream& ) { return 0; }
		virtual void writeItem( void *, opstream& ) {}
	};

	class TFileViewer: public TScroller {
	public:
		char *fileName;
		
		TCollection *fileLines;
		bool isValid;
		
		TFileViewer( const TRect& bounds,
			TScrollBar *aHScrollBar,
			TScrollBar *aVScrollBar,
			const char *aFileName):
			TScroller( bounds, aHScrollBar, aVScrollBar ),
			name("TFileViewer") {
			
			growMode = gfGrowHiX | gfGrowHiY;
			isValid  = true;
			fileName = 0;
			readFile( aFileName );
		}
		
		~TFileViewer() {
			delete[] fileName;
			destroy (fileLines);
		}
		TFileViewer( StreamableInit ):
			TScroller(streamableInit),
			name("TFileViewer")
			{}
		
		virtual void
		draw()
		{
			char *p;

			TColorAttr c =  getColor(1);
			for( short i = 0; i < size.y; i++ ) {
				TDrawBuffer b;
				b.moveChar( 0, ' ', c, (short)size.x );

				if ( delta.y + i < fileLines->getCount() ) {
					p = (char *)( fileLines->at(delta.y+i) );
					if( p )
					b.moveStr( 0, p, c, (short)size.x, (short)delta.x );
				}
				writeBuf( 0, i, (short)size.x, 1, b );
			}
		}
		
		void readFile( const char *fName )
		{
			delete[] fileName;

			limit.x   = 0;
			fileName  = newStr( fName );
			fileLines = new TLineCollection(5, 5);
			
			ifstream fileToView( fName );
			if (!fileToView ) {
				char buf[256] = {0};
				ostrstream os( buf, sizeof( buf )-1 );
				os  << locale_str( 80 ).c_str()
					<< fName
					<< "'."
					<< ends;
				throw PL_Exception_Application( buf );
			}	else {
				char * line     = new char[ maxLineLength ];
				size_t lineSize = maxLineLength;
				char c;
				while(
					!lowMemory() &&
					!fileToView.eof() && 
					fileToView.get( c )) {
					size_t i = 0;
					while ( !fileToView.eof() && c != '\n' && c != '\r' ) // read a whole line
					{
						if (i == lineSize)
						line  = (char *) realloc(line, (lineSize *= 2));
						line[i++] = c ? c : ' ';
						fileToView.get( c );
					}
					line[i] = '\0';
					if ( c == '\r' && fileToView.peek() == '\n')
					fileToView.get( c ); // grab trailing newline on CRLF
					limit.x = max( limit.x, strwidth( line ) );
					fileLines->insert( newStr( line ) );
				}
				isValid = True;
				delete line;
			}
			limit.y = fileLines->getCount();
		}
		
		void setState( ushort aState, bool enable ) {
			TScroller::setState( aState, enable );
			if ( enable && (aState & sfExposed) )
			setLimit( limit.x, limit.y );
		}

		void scrollDraw() {
			TScroller::scrollDraw();
			draw();
		}
		
		bool valid( ushort command ) { return isValid; }
		
	private:
		virtual const char *streamableName() const
        { return name; }

	protected:
	
		virtual void write( opstream& os) {
			TScroller::write(os);
			os.writeString(fileName);
		}
		
		virtual void *read( ipstream& is) {
			char *fName;

			TScroller::read(is);
			fName = is.readString();
			fileName = 0;
			readFile(fName);
			delete[] fName;
			return this;
		}

	public:
		        const char * const name;
		static TStreamable *build() {
			return new TFileViewer( streamableInit );
		}
	};
	
	class TFileWindow : public TWindow {
	public:
		TFileWindow( const char *fileName ):
			TWindowInit( &TFileWindow::initFrame ),
			TWindow(
			TProgram::deskTop->getExtent(),
			fileName, winNumber++) {
			
			options |= ofTileable;
			
			TRect r( getExtent() );
			r.grow(-1, -1);
			
			insert(new TFileViewer(
				r,
				standardScrollBar(sbHorizontal | sbHandleKeyboard),
				standardScrollBar(sbVertical | sbHandleKeyboard),
				fileName) );
		}
	};

	// ---------------------------------------------------------------------
	// dBase Project window:
	// ---------------------------------------------------------------------
	class PL_dBaseFrame: public TView {
	private:
		void check_control(TView *src, ::std::string ctrl)
		{
			if (!src) {
				::std::stringstream ss;
				ss  << "dBase: "
					<< ctrl
					<< " insert error at line: "
					<< __LINE__;
				throw PL_Exception_Application(ss.str().c_str());
			}
		}
	public:
		PL_dBaseFrame(const TRect& bounds):
			TView(bounds) {
			options |= ofFramed;
		}
		void _writeStr(int x, int y, const char* txt, ushort color)
		{
			TDrawBuffer b;
			ushort c=getColor(color);
			b.moveStr(0, txt, color);
			writeLine(x, y, strlen(txt), 1, b);
		}
		void _writeChar(int x, int y, char chr, ushort color, ushort count = 1, bool flag = false)
		{
			char* buffer = new char[count];
			char* tmp    = new char[count];
			
			if (flag == false) {
				sprintf(buffer,"%c", chr);
				strcpy (tmp,buffer);

				if (count > 1) {
					for (ushort i = 1; i < count; ++i) {
						sprintf(buffer,"%c", chr);
						strcat(tmp,buffer);
					}
				}
				_writeStr(x, y, tmp, color);
			}	else {
				sprintf(buffer, "%c", chr);
				
				for (ushort i = 0; i < count; ++i)
				_writeStr(x, y+i, buffer, color);
			}

			delete tmp;
			delete buffer;
		}
		void _writeInit(int x, int y, ushort color)
		{
			::std::string ini = "    <create>    ";
			_writeStr(x,y,ini.c_str(),color);
		}
		virtual void
		draw()
		{
			TView::draw();
			ushort c = 0x0370;
			ushort x = 8;
			ushort y = 12;

			_writeStr(x, 1, locale_str( 36 ).c_str(), c); x += 16;
			_writeStr(x, 1, locale_str( 39 ).c_str(), c); x += 17;
			_writeStr(x, 1, locale_str( 38 ).c_str(), c); x += 16;

			_writeStr(x, 1, locale_str( 40 ).c_str(), c); x += 17;
			_writeStr(x, 1, locale_str( 37 ).c_str(), c); x += 15;
			_writeStr(x, 1, locale_str( 35 ).c_str(), c);
			
			c = getColor(0x0310);
			x = 1;

			_writeChar(1,  2, 0xc9, c, 1);
			_writeChar(2,  2, 0xcd, c, (17*6) );
			_writeChar(2,  5, 0xcd, c, (17*6) );
			_writeChar(2, 15, 0xcd, c, (17*6) );
			
			// data
			_writeChar(x,  15, 0xc8, c, 1);
			_writeChar(x,   2, 0xcb, c, 1);
			_writeChar(x,   3, 0xba, c, y, true);
			//_writeInit(x+1, 3, c);
			_writeChar(x,   5, 0xcc, c, 1); x += 17;

			// queries
			_writeChar(x,  15, 0xca, c, 1);
			_writeChar(x,   2, 0xcb, c, 1);
			_writeChar(x,   3, 0xba, c, y, true);
			//_writeInit(x+1, 3, c);
			_writeChar(x,   5, 0xce, c, 1); x += 17;

			// forms
			_writeChar(x,  15, 0xca, c, 1);
			_writeChar(x,   2, 0xcb, c, 1);
			_writeChar(x,   3, 0xba, c, y, true);
			//_writeInit(x+1, 3, c);
			_writeChar(x,   5, 0xce, c, 1); x += 17;
			
			// reports
			_writeChar(x,  15, 0xca, c, 1);
			_writeChar(x,   2, 0xcb, c, 1);
			_writeChar(x,   3, 0xba, c, y, true);
			//_writeInit(x+1, 3, c);
			_writeChar(x,   5, 0xce, c, 1); x += 17;
			
			// labels
			_writeChar(x,  15, 0xca, c, 1);
			_writeChar(x,   2, 0xcb, c, 1);
			_writeChar(x,   3, 0xba, c, y, true);
			//_writeInit(x+1, 3, c);
			_writeChar(x,   5, 0xce, c, 1); x += 17;
			
			// applications
			_writeChar(x,  15, 0xca, c, 1);
			_writeChar(x,   2, 0xcb, c, 1);
			_writeChar(x,   3, 0xba, c, y, true);
			//_writeInit(x+1, 3, c);
			_writeChar(x,   5, 0xce, c, 1); x += 17;
			
			_writeChar(x, 15, 0xbc, c, 1);
			_writeChar(x,  2, 0xcb, c, 1);
			_writeChar(x,  3, 0xba, c, y, true);
			_writeChar(x,  5, 0xb9, c, 1);
		}
	};

	class PL_dBaseNewFile: public TDialog {
	private:		
		TScrollBar    * sb_1         = nullptr;
		TScrollBar    * sb_2         = nullptr;
		TScrollBar    * sb_3         = nullptr;
		TScrollBar    * sb_4         = nullptr;
		
		TInputLine    * table_name   = nullptr;
		
		TInputLine    * field_name   = nullptr;
		TInputLine    * field_type   = nullptr;
		TInputLine    * field_length = nullptr;
		TInputLine    * field_prec   = nullptr;
		
		::std::vector< ::std::string > xdbf_lbc_vec_1;
		
		::std::string tbl_name;
		int           tbl_flag;

		void init()
		{
			flags &= ~(wfGrow | wfZoom);
			growMode = 0;
			
			eventMask = evMouseDown | evKeyboard | evCommand | evBroadcast;
			
			options |= ofCentered;
			options |= ofSelectable;

			table_name = new TInputLine( TRect( 2,2, 34,3), 64);
			table_name->setData( (void*)tbl_name.c_str() );
			
			insert(table_name);
			
			insert( new TLabel  ( TRect(  2,1, 15, 2 ), locale_str( 57 ).c_str(), table_name));
			insert( new THistory( TRect( 34,2, 37, 3 ), table_name, 10));
			
			int x =  2;
			int y = 17;
			
			// field name
			field_name = new TInputLine( TRect( 2,5, 22,6), 64);
			insert(field_name);
			insert( new TLabel  ( TRect(  x,4, 15, 5 ), locale_str( 58 ).c_str(), field_name));
			insert( new THistory( TRect( 22,5, 24, 6 ), field_name, 10));
			
			x += 24;
			
			// field type
			field_type = new TInputLine( TRect( x, 5, x+24,6), 64);
			insert(field_type);
			insert( new TLabel  ( TRect( x,   4, x + 15, 5 ), locale_str( 59 ).c_str(), field_type));
			insert( new THistory( TRect( x+22,5, x + 24, 6 ), field_type, 10));
			
			x += 26;
			
			// field length
			field_length = new TInputLine( TRect( x, 5, x+24,6), 64);
			insert(field_length);
			insert( new TLabel  ( TRect( x,   4, x + 15, 5 ), locale_str( 60 ).c_str(), field_length));
			insert( new THistory( TRect( x+22,5, x + 24, 6 ), field_length, 10));
			
			x += 26;
			
			// field prec.
			field_prec = new TInputLine( TRect( x, 5, x+24,6), 64);
			insert(field_prec);
			insert( new TLabel  ( TRect( x,   4, x + 15, 5 ), locale_str( 61 ).c_str(), field_prec));
			insert( new THistory( TRect( x+22,5, x + 24, 6 ), field_prec, 10));

			x = 2;
			
			sb_1 = new TScrollBar( TRect( x,7, x+1,y ) ); x += 24;
			sb_2 = new TScrollBar( TRect( x,7, x+1,y ) ); x += 26;
			sb_3 = new TScrollBar( TRect( x,7, x+1,y ) ); x += 26;
			sb_4 = new TScrollBar( TRect( x,7, x+1,y ) );
			
			insert( sb_1 );
			insert( sb_2 );
			insert( sb_3 );
			insert( sb_4 );

			x =  3;
			y = 17;

			new_file_lb_1 = new TListBox( TRect(x,7,     24, y ), 1, sb_1 ); x += 24;
			new_file_lb_2 = new TListBox( TRect(x,7, x + 23, y ), 1, sb_2 ); x += 26;
			new_file_lb_3 = new TListBox( TRect(x,7, x + 23, y ), 1, sb_3 ); x += 26;
			new_file_lb_4 = new TListBox( TRect(x,7, x + 23, y ), 1, sb_4 );

			insert( new_file_lb_1 );
			insert( new_file_lb_2 );
			insert( new_file_lb_3 );
			insert( new_file_lb_4 );
			
			if (tbl_flag == -1)
			{
				xdbf_sc_1 = new LB_Collection( 10, 10 );
				xdbf_sc_2 = new LB_Collection( 10, 10 );
				xdbf_sc_3 = new LB_Collection( 10, 10 );
				xdbf_sc_4 = new LB_Collection( 10, 10 );
						
				for (auto &item : xdbf_vec_1) xdbf_sc_1->insert( newStr( item.c_str() ) );
				for (auto &item : xdbf_vec_2) xdbf_sc_2->insert( newStr( item.c_str() ) );
				for (auto &item : xdbf_vec_3) xdbf_sc_3->insert( newStr( item.c_str() ) );
				for (auto &item : xdbf_vec_4) xdbf_sc_4->insert( newStr( item.c_str() ) );
						
				new_file_lb_1->newList( xdbf_sc_1 );
				new_file_lb_2->newList( xdbf_sc_2 );
				new_file_lb_3->newList( xdbf_sc_3 );
				new_file_lb_4->newList( xdbf_sc_4 );
			}

			
			x = 2;
			
			insert( new TLabel( TRect(x,6, x + 20,7 ), locale_str( 65 ).c_str(), new_file_lb_1 )); x += 24;
			insert( new TLabel( TRect(x,6, x + 20,7 ), locale_str( 65 ).c_str(), new_file_lb_2 )); x += 26;
			insert( new TLabel( TRect(x,6, x + 20,7 ), locale_str( 65 ).c_str(), new_file_lb_3 )); x += 26;
			insert( new TLabel( TRect(x,6, x + 20,7 ), locale_str( 65 ).c_str(), new_file_lb_4 ));

			
			insert( new TButton ( TRect( 40,2, 55,4 ), locale_str( 62 ).c_str(), cmDBASE_add_field, bfDefault ));
			insert( new TButton ( TRect( 58,2, 73,4 ), locale_str( 63 ).c_str(), cmDBASE_del_field, bfNormal  ));
			insert( new TButton ( TRect( 76,2, 91,4 ), locale_str( 64 ).c_str(), cmDBASE_sav_field, bfNormal  ));
		}
	public:
		PL_dBaseNewFile(::std::string file_name, int flag):
			TWindowInit( &PL_dBaseNewFile::initFrame ),
			TDialog ( TRect( 0, 0, 108,18), locale_str( 56 ).c_str()),
			name("PL_dBaseNewFile") {
			tbl_name = file_name;
			tbl_flag = flag;
			init();
		}
	
		PL_dBaseNewFile(StreamableInit, int flag):
			TWindowInit( 0 ),
			TDialog    ( streamableInit ),
			name("PL_dBaseNewFile") {
			tbl_flag = flag;
			init();
		}
		
		PL_dBaseNewFile(StreamableInit):
			TWindowInit( 0 ),
			TDialog    ( streamableInit ),
			name("PL_dBaseNewFile") {
			init();
		}
				
		PL_dBaseNewFile():
			TWindowInit(0),
			TDialog(streamableInit),
			name("PL_dBaseNewFile") {
			init();
		}
		
		~PL_dBaseNewFile()
		{

		}
		
		void
		handle_helpView(int flag = 0)
		{
			TWindow   * w;
			THelpFile * hFile;
			fpstream  * helpStrm;
				
			static bool helpInUse = false;
			int helpCtx = 0;
				
			if (helpInUse == false) {
				helpInUse = true;
				helpStrm  = new fpstream(PL_HELPFILE, ios::in|ios::binary);
				hFile     = new THelpFile(*helpStrm);
				if (!helpStrm) {
					delete hFile;
					throw PL_Exception_Application(
					locale_str( 21 ).c_str());
				}
				if (PL_globalHolder.PL_language == PL_appLang_ENG) {
					if (flag == 1) helpCtx = hcDBASE_data_field_name_ENG; else
					if (flag == 2) helpCtx = hcDBASE_data_field_type_ENG; else
					if (flag == 3) helpCtx = hcDBASE_data_field_leng_ENG; else
					if (flag == 4) helpCtx = hcDBASE_data_field_prec_ENG; else
					if (flag == 5) helpCtx = hcDBASE_data_field_wind_ENG;
				}
				else if (PL_globalHolder.PL_language == PL_appLang_DEU) {
					if (flag == 1) helpCtx = hcDBASE_data_field_name_DEU; else
					if (flag == 2) helpCtx = hcDBASE_data_field_type_DEU; else
					if (flag == 3) helpCtx = hcDBASE_data_field_leng_DEU; else
					if (flag == 4) helpCtx = hcDBASE_data_field_prec_DEU; else
					if (flag == 5) helpCtx = hcDBASE_data_field_wind_DEU;
				}
				
				w = new THelpWindow(hFile, helpCtx);
				TProgram::deskTop->insert(w);
				
				helpInUse = False;
			}
		}

		virtual void
		handleEvent( TEvent &event )
		{
			TWindow::handleEvent( event );
			::std::string tmp;
			
			if (event.what == evKeyboard)
			{
				if (event.keyDown.keyCode == 283)     // #27 - Escape
				{
					clearEvent(event);
					TObject::destroy(this);
					return;
				}
				if (event.keyDown.keyCode == 0x1c0d)  // #10 #13 key
				{
					clearEvent(event);
					
					if ((new_file_lb_1->state & sfFocused) != 0) { new_file_lb_1->getText(buffer, new_file_lb_1->focused, MAX_LEN); } else
					if ((new_file_lb_2->state & sfFocused) != 0) { new_file_lb_2->getText(buffer, new_file_lb_2->focused, MAX_LEN); } else
					if ((new_file_lb_3->state & sfFocused) != 0) { new_file_lb_3->getText(buffer, new_file_lb_3->focused, MAX_LEN); } else
					if ((new_file_lb_4->state & sfFocused) != 0) { new_file_lb_4->getText(buffer, new_file_lb_4->focused, MAX_LEN); }

					return;
				}
			}
			if (event.message.command == cmHelp)
			{
				clearEvent(event);
				
				if ((new_file_lb_1->state & sfFocused) != 0) { handle_helpView( 1 ); return; } else
				if ((new_file_lb_2->state & sfFocused) != 0) { handle_helpView( 2 ); return; } else
				if ((new_file_lb_3->state & sfFocused) != 0) { handle_helpView( 3 ); return; } else
				if ((new_file_lb_4->state & sfFocused) != 0) { handle_helpView( 4 ); return; }
				
				handle_helpView(5);
				return;
			}
			// -------------------
			// add new field:
			// -------------------
			else if (event.message.command == cmDBASE_add_field)
			{
				clearEvent(event);
				
				char buffer_name[64];
				char buffer_type[64];
				char buffer_leng[64];
				char buffer_prec[64];
				
				field_name  ->getData( buffer_name );
				field_type  ->getData( buffer_type );
				field_length->getData( buffer_leng );
				field_prec  ->getData( buffer_prec );

				::std::string s1 = trim_copy( buffer_name );
				::std::string s2 = trim_copy( buffer_type );
				::std::string s3 = trim_copy( buffer_leng );
				::std::string s4 = trim_copy( buffer_prec );
				
				if (s1.length() < 1) { messageBox( locale_str( 68 ), mfInformation | mfOKButton ); return; }
				if (s2.length() < 1) { messageBox( locale_str( 69 ), mfInformation | mfOKButton ); return; }
				if (s3.length() < 1) { messageBox( locale_str( 70 ), mfInformation | mfOKButton ); return; }
				if (s4.length() < 1) { messageBox( locale_str( 71 ), mfInformation | mfOKButton ); return; }

				// ---------------------------------------------
				// get field type value:
				// ---------------------------------------------
				for (auto &item : xdbf_vec_1 ) {
					if (item.length() < 1) {
						throw PL_Exception_DataBaseWarning(
						locale_str( 92 ).c_str() );
					}
					else if (strcmp(item.c_str(),buffer_name) == 0) {
						throw PL_Exception_DataBaseWarning(
						locale_str( 66 ).c_str() );
					}
				}

				tmp = "";
				for (int x = 0; x  < s2.size(); ++x)
				tmp += tolower( s2.at( x ) );
				
				if (strcmp( tmp.c_str(), "numeric" ) == 0) { } else
				if (strcmp( tmp.c_str(), "char"    ) == 0) { } else
				if (strcmp( tmp.c_str(), "date"    ) == 0) { } else
				if (strcmp( tmp.c_str(), "logical" ) == 0) { } else
				if (strcmp( tmp.c_str(), "memo"    ) == 0) { } else

				throw PL_Exception_Application( locale_str( 72 ).c_str() );

				xdbf_vec_1.push_back( s1 );
				xdbf_vec_2.push_back( s2 );
				xdbf_vec_3.push_back( s3 );
				xdbf_vec_4.push_back( s4 );
				
				xdbf_sc_1 = new LB_Collection( 10, 10 );
				xdbf_sc_2 = new LB_Collection( 10, 10 );
				xdbf_sc_3 = new LB_Collection( 10, 10 );
				xdbf_sc_4 = new LB_Collection( 10, 10 );
				
				for (auto &item : xdbf_vec_1) xdbf_sc_1->insert( newStr( item.c_str() ) );
				for (auto &item : xdbf_vec_2) xdbf_sc_2->insert( newStr( item.c_str() ) );
				for (auto &item : xdbf_vec_3) xdbf_sc_3->insert( newStr( item.c_str() ) );
				for (auto &item : xdbf_vec_4) xdbf_sc_4->insert( newStr( item.c_str() ) );
				
				new_file_lb_1->newList( xdbf_sc_1 );
				new_file_lb_2->newList( xdbf_sc_2 );
				new_file_lb_3->newList( xdbf_sc_3 );
				new_file_lb_4->newList( xdbf_sc_4 );

				return;
			}
			// ----------------------------------
			// delete one record from schema:
			// ----------------------------------
			else if (event.message.command == cmDBASE_del_field)
			{
				clearEvent(event);
				
				new_file_lb_1->getText(buffer,
				new_file_lb_1->focused, MAX_LEN);

				if (trim_copy( buffer ).length() < 1)
				throw PL_Exception_DataBaseWarning(
				locale_str( 82 ).c_str() );

				if (messageBoxRect(
					TRect(10,7, 60,19),
					locale_str( 90 ).c_str(),
					mfError | mfYesButton | mfNoButton ) != 12) {
					return;
				}

				int index  = 0;
				bool found = false;
				
				for (auto &item: xdbf_vec_1) {
					if (strcmp(item.c_str(), buffer) == 0) {
						xdbf_vec_1.erase( xdbf_vec_1.begin() + index );
						xdbf_vec_2.erase( xdbf_vec_2.begin() + index );
						xdbf_vec_3.erase( xdbf_vec_3.begin() + index );
						xdbf_vec_4.erase( xdbf_vec_4.begin() + index );
						found = true;
						break;
					}
					++index;
				}
				if (found == false) {
					messageBox( locale_str( 94 ).c_str(),
					mfError|mfOKButton);
					return;
				}
				
				xdbf_sc_1 = new LB_Collection( 10, 10 );
				xdbf_sc_2 = new LB_Collection( 10, 10 );
				xdbf_sc_3 = new LB_Collection( 10, 10 );
				xdbf_sc_4 = new LB_Collection( 10, 10 );
				
				for (auto &item : xdbf_vec_1) xdbf_sc_1->insert( newStr( item.c_str() ) );
				for (auto &item : xdbf_vec_2) xdbf_sc_2->insert( newStr( item.c_str() ) );
				for (auto &item : xdbf_vec_3) xdbf_sc_3->insert( newStr( item.c_str() ) );
				for (auto &item : xdbf_vec_4) xdbf_sc_4->insert( newStr( item.c_str() ) );
				
				new_file_lb_1->newList( xdbf_sc_1 );
				new_file_lb_2->newList( xdbf_sc_2 );
				new_file_lb_3->newList( xdbf_sc_3 );
				new_file_lb_4->newList( xdbf_sc_4 );
				
				return;
			}
			// ----------------------------------
			// save table information (field's)
			// ----------------------------------
			else if (event.message.command == cmDBASE_sav_field)
			{
				clearEvent(event);
				
				if (xdbf_vec_1.size() < 1)
				throw PL_Exception_DataBaseWarning(
				locale_str( 92 ).c_str() );

				table_name->getData( buffer );
				xdbf_data_table = trim_copy( buffer );
				
				if (xdbf_data_table.length() < 1)
				throw PL_Exception_DataBaseWarning(
				locale_str( 82 ).c_str() );
				
				::std::string data_file;
				::std::size_t data_fnd ;

				data_file  = xdbf_data_directory;
				data_file += "\\";
				data_file += xdbf_data_table;
					
				if (data_file.find( ".dbf" ) == ::std::string::npos)
					data_file +=    ".dbf" ;

				FILE *test = fopen( data_file.c_str(), "rb" );
				if (  test ) {
					fclose( test );
					if (messageBoxRect(
						TRect(10,7, 60,19),
						locale_str( 89 ).c_str(),
						mfError | mfYesButton | mfNoButton ) != 12) {
						return;
					}
				}

				::std::vector< ::xb::xbSchema > MyRecord;
				::std::string  dat;
				char           fld_type;
				xbInt16        fld_len;
				xbInt16        fld_pre;

				for (int i = 0; i < xdbf_vec_1.size(); ++i) {
					tmp = xdbf_vec_2.at(i);

					if (strcmp( tmp.c_str(), "numeric" ) == 0) fld_type = XB_NUMERIC_FLD; else
					if (strcmp( tmp.c_str(), "char"    ) == 0) fld_type = XB_CHAR_FLD;    else
					if (strcmp( tmp.c_str(), "date"    ) == 0) fld_type = XB_DATE_FLD;    else
					if (strcmp( tmp.c_str(), "logical" ) == 0) fld_type = XB_LOGICAL_FLD; else
					if (strcmp( tmp.c_str(), "memo"    ) == 0) fld_type = XB_MEMO_FLD;

					fld_len = ::std::atoi( xdbf_vec_3.at(i).c_str() );
					fld_pre = ::std::atoi( xdbf_vec_4.at(i).c_str() );

					xbSchema record{
						{},
						fld_type,
						fld_len,
						fld_pre
					};
					strcpy(record.cFieldName, xdbf_vec_1.at(i).c_str() );
					MyRecord.push_back( record );
				}
					
				// terminated null record:
				xbSchema record{ "",0,0,0  };
				MyRecord.push_back( record );
					
				if (xdbf_data_file != nullptr) {
					xdbf_data_file->Close(); delete
					xdbf_data_file;
				}	xdbf_data_file = new ::xb::xbDbf4( xdbf_data_class );
					
				// dbase 3 index style
				::xb::xbIxNdx MyIndex1( xdbf_data_file );	// class for index 1
				::xb::xbIxNdx MyIndex2( xdbf_data_file );	// class for index 2
				::xb::xbIxNdx MyIndex3( xdbf_data_file );	// class for index 3

				if (xdbf_data_file->CreateTable(
					xdbf_data_table.c_str(),
					xdbf_data_table.c_str(),
					MyRecord.data(),
					XB_OVERLAY,	XB_MULTI_USER)
					!= XB_NO_ERROR )
				throw PL_Exception_DataBase(
				locale_str( 83 ).c_str() );

				// ---------------------------
				// add table name to catalog
				// ---------------------------
				fnd = xdbf_data_table.find_last_of(".dbf" );
				dat = xdbf_data_table.substr( 0,  fnd - 3 );

				if (::std::find(
					xdbf_lbc_vec_1.begin(),
					xdbf_lbc_vec_1.end  (), dat) !=
					xdbf_lbc_vec_1.end  ()) {
					if (messageBoxRect(
						TRect(10,7, 60,19),
						locale_str( 93 ).c_str(),
						mfError | mfYesButton | mfNoButton ) == 12)
					return;
				}

				xdbf_lbc_vec_1.push_back( dat );
				xdbf_lbc_1 = new LB_Collection( 10, 10 );
				
				for (auto &item: xdbf_lbc_vec_1)
				xdbf_lbc_1->insert ( newStr( item.c_str() ) );
				xdbf_lb_1 ->newList( xdbf_lbc_1 );
			}
		}

	private:
		char buffer[MAX_LEN];
			
		virtual const char *streamableName() const
		{ return name; }
	protected:
		virtual void write( opstream& os) { TWindow::write(os); }
		virtual void* read( ipstream& is) { TWindow::read (is); return this; }
	public:
			   const char  * const name;
		static TStreamable * build() {
			return new PL_dBaseNewFile( streamableInit, -1 );
		}
	};	//  PL_dBaseNewFile
	
	class PL_dBaseCatalog: public TDialog {
	private:
		::std::string fileName;
		
		void createNewFileDialog(::std::string s, int flag)
		{
			auto  * d = new PL_dBaseNewFile(s, flag);
			TView * p = TProgram::application->validView(d);
			if (!p) {
				::std::string sz;
				sz = locale_str( 23 ).c_str();
				throw PL_Exception_Application( sz.c_str() );
			}
			TProgram::deskTop->insert(d);
		}
		
		void init()
		{
			flags &= ~(wfGrow | wfZoom);
			growMode = 0;
			
			eventMask = evMouseDown | evKeyboard | evCommand | evBroadcast;
			
			options |= ofCentered;
			options |= ofSelectable;
			
			TRect r = getClipRect();
			r.grow(-1,-1);
			insert(new PL_dBaseFrame(r));

			int x = 18;
			
			TScrollBar * sb_1 = new TScrollBar( TRect( x,7, x+1,16 ) ); x += 17;
			TScrollBar * sb_2 = new TScrollBar( TRect( x,7, x+1,16 ) ); x += 17;
			TScrollBar * sb_3 = new TScrollBar( TRect( x,7, x+1,16 ) ); x += 17;
			TScrollBar * sb_4 = new TScrollBar( TRect( x,7, x+1,16 ) ); x += 17;
			TScrollBar * sb_5 = new TScrollBar( TRect( x,7, x+1,16 ) ); x += 17;
			TScrollBar * sb_6 = new TScrollBar( TRect( x,7, x+1,16 ) );

			insert(sb_1);
			insert(sb_2);
			insert(sb_3);
			insert(sb_4);
			insert(sb_5);
			insert(sb_6);

			x = 3;

			xdbf_lbc_1 = new LB_Collection(5,5);
			xdbf_lbc_2 = new LB_Collection(5,5);
			xdbf_lbc_3 = new LB_Collection(5,5);
			xdbf_lbc_4 = new LB_Collection(5,5);
			xdbf_lbc_5 = new LB_Collection(5,5);
			xdbf_lbc_6 = new LB_Collection(5,5);
			
			xdbf_lbc_1->insert( newStr("Hello") );
			xdbf_lbc_1->insert( newStr("World") );
			
			xdbf_lbc_2->insert( newStr("Hello") );
			xdbf_lbc_2->insert( newStr("World") );
			xdbf_lbc_2->insert( newStr("foo") );
			xdbf_lbc_2->insert( newStr("bar") );
			xdbf_lbc_2->insert( newStr("fuz") );
			
			xdbf_lbc_3->insert( newStr("Hello") );
			xdbf_lbc_3->insert( newStr("World") );
			xdbf_lbc_2->insert( newStr("smell") );
			
			xdbf_lbc_4->insert( newStr("Hello") );
			xdbf_lbc_4->insert( newStr("World") );
			
			xdbf_lbc_5->insert( newStr("Hello") );
			
			xdbf_lbc_6->insert( newStr("A1") );
			xdbf_lbc_6->insert( newStr("B-1") );
			xdbf_lbc_6->insert( newStr("CCC") );
			xdbf_lbc_6->insert( newStr("dd") );
			xdbf_lbc_6->insert( newStr("ee") );
			xdbf_lbc_6->insert( newStr("gg") );
			xdbf_lbc_6->insert( newStr("hhhho") );
			xdbf_lbc_6->insert( newStr("mmmmm") );
			xdbf_lbc_6->insert( newStr("oooo") );
			xdbf_lbc_6->insert( newStr("232323") );
			xdbf_lbc_6->insert( newStr("ääääüüüü") );
			xdbf_lbc_6->insert( newStr("######") );
			xdbf_lbc_6->insert( newStr("qwerty") );

			xdbf_lb_1 = new TListBox( TRect(x,7,   18, 16), 1, sb_1 ); x += 17;
			xdbf_lb_2 = new TListBox( TRect(x,7, x+15, 16), 1, sb_2 ); x += 17;
			xdbf_lb_3 = new TListBox( TRect(x,7, x+15, 16), 1, sb_3 ); x += 17;
			xdbf_lb_4 = new TListBox( TRect(x,7, x+15, 16), 1, sb_4 ); x += 17;
			xdbf_lb_5 = new TListBox( TRect(x,7, x+15, 16), 1, sb_5 ); x += 17;
			xdbf_lb_6 = new TListBox( TRect(x,7, x+15, 16), 1, sb_6 );
			
			xdbf_lb_1->eventMask = evMouseDown | evKeyDown | evCommand;
			xdbf_lb_2->eventMask = xdbf_lb_1->eventMask;
			xdbf_lb_3->eventMask = xdbf_lb_1->eventMask;
			xdbf_lb_4->eventMask = xdbf_lb_1->eventMask;
			xdbf_lb_5->eventMask = xdbf_lb_1->eventMask;
			xdbf_lb_6->eventMask = xdbf_lb_1->eventMask;

			xdbf_lb_1->newList(xdbf_lbc_1);  xdbf_lb_2->newList(xdbf_lbc_2);
			xdbf_lb_3->newList(xdbf_lbc_3);  xdbf_lb_4->newList(xdbf_lbc_4);
			xdbf_lb_5->newList(xdbf_lbc_5);  xdbf_lb_6->newList(xdbf_lbc_6);
			
			insert(xdbf_lb_1); insert(xdbf_lb_2);
			insert(xdbf_lb_3); insert(xdbf_lb_4);
			insert(xdbf_lb_5); insert(xdbf_lb_6);
			
			x = 3;
			
			insert( new TButton ( TRect( x,4, x+15,6 ), locale_str( 25 ), cmDBASE_data,   bfNormal )); x += 17;
			insert( new TButton ( TRect( x,4, x+15,6 ), locale_str( 25 ), cmDBASE_query,  bfNormal )); x += 17;
			insert( new TButton ( TRect( x,4, x+15,6 ), locale_str( 25 ), cmDBASE_form,   bfNormal )); x += 17;
			insert( new TButton ( TRect( x,4, x+15,6 ), locale_str( 25 ), cmDBASE_report, bfNormal )); x += 17;
			insert( new TButton ( TRect( x,4, x+15,6 ), locale_str( 25 ), cmDBASE_label,  bfNormal )); x += 17;
			insert( new TButton ( TRect( x,4, x+15,6 ), locale_str( 25 ), cmDBASE_app,    bfNormal ));
		}
	public:
		PL_dBaseCatalog(::std::string file_name):
			TWindowInit( &PL_dBaseCatalog::initFrame ),
			TDialog( TRect( 0,0, 108,18), locale_str( 26 ).c_str()),
			name( "PL_dBaseCatalog" ),
			fileName(file_name) {
			init();
		}
	
		PL_dBaseCatalog(StreamableInit):
			TWindowInit(0),
			TDialog(streamableInit),
			name("PL_dBaseCatalog") {
			init();
		}
				
		PL_dBaseCatalog():
			TWindowInit(0),
			TDialog(streamableInit),
			name("PL_dBaseCatalog") {
			init();
		}
		
		~PL_dBaseCatalog()
		{
		}
		
		void
		handle_helpView(int flag = 0)
		{
			TWindow   * w;
			THelpFile * hFile;
			fpstream  * helpStrm;
				
			static bool helpInUse = false;
			int helpCtx = hcNewProjectDialog_ENG;
				
			if (helpInUse == false) {
				helpInUse = true;
				helpStrm  = new fpstream(PL_HELPFILE, ios::in|ios::binary);
				hFile     = new THelpFile(*helpStrm);
				if (!helpStrm) {
					delete hFile;
					throw PL_Exception_Application(
					locale_str( 21 ).c_str());
				}
				if (PL_globalHolder.PL_language == PL_appLang_ENG) {
					if (flag == 1) helpCtx = hcDBASE_list_data_ENG; else
					if (flag == 2) helpCtx = hcDBASE_list_queries_ENG; else
					if (flag == 3) helpCtx = hcDBASE_list_forms_ENG; else
					if (flag == 4) helpCtx = hcDBASE_list_reports_ENG; else
					if (flag == 5) helpCtx = hcDBASE_list_labels_ENG; else
					if (flag == 6) helpCtx = hcDBASE_list_applications_ENG;
				}
				else if (PL_globalHolder.PL_language == PL_appLang_DEU) {
					if (flag == 1) helpCtx = hcDBASE_list_data_DEU; else
					if (flag == 2) helpCtx = hcDBASE_list_queries_DEU; else
					if (flag == 3) helpCtx = hcDBASE_list_forms_DEU; else
					if (flag == 4) helpCtx = hcDBASE_list_reports_DEU; else
					if (flag == 5) helpCtx = hcDBASE_list_labels_DEU; else
					if (flag == 6) helpCtx = hcDBASE_list_applications_DEU;
				}
				
				w = new THelpWindow(hFile, helpCtx); //getHelpCtx());
				TProgram::deskTop->insert(w);
				
				helpInUse = False;
			}
		}

		virtual void
		handleEvent( TEvent &event )
		{
			TWindow::handleEvent( event );
			#define MAX_LEN 64
			if (event.what == evKeyboard)
			{
				if (event.keyDown.keyCode == 283)     // #27 - Escape
				{
					clearEvent(event);
					TObject::destroy(this);
				}
				if (event.keyDown.keyCode == 0x1c0d)  // #10 #13 key
				{
					char buffer[MAX_LEN];
					clearEvent(event);
					
					if ((xdbf_lb_1->state & sfFocused) != 0)
					{
						xdbf_lb_1->getText( buffer,
						xdbf_lb_1->focused, MAX_LEN);

						xdbf_vec_1.clear();
						xdbf_vec_2.clear();
						xdbf_vec_3.clear();
						xdbf_vec_4.clear();

						::xb::xbString xs_buffer( buffer );
						::xb::xbString xb_buffer;
						char           fld_type;

						xs_buffer += ".dbf";
						
						FILE * check = fopen( xs_buffer.Str(), "rb" );
						if (!check)
							throw PL_Exception_DataBaseWarning(
							locale_str( 95 ).c_str() );
						fclose( check );
						
						xdbf_data_file->Close();
						xdbf_data_file->Open ( xs_buffer, xs_buffer );
						
						xbInt32 fieldcount = xdbf_data_file->GetFieldCnt();
						
						for (xbInt16 count = 0; count < fieldcount; ++count){
							xdbf_data_file->GetFieldName( count, xb_buffer );
							xdbf_data_file->GetFieldType( count, fld_type  );
							
							xdbf_vec_1.push_back( xb_buffer.Str() );
							
							if ( fld_type == XB_NUMERIC_FLD ) xdbf_vec_2.push_back( "numeric" ); else
							if ( fld_type == XB_CHAR_FLD    ) xdbf_vec_2.push_back( "char"    ); else
							if ( fld_type == XB_DATE_FLD    ) xdbf_vec_2.push_back( "date"    ); else
							if ( fld_type == XB_LOGICAL_FLD ) xdbf_vec_2.push_back( "logical" ); else
							if ( fld_type == XB_MEMO_FLD    ) xdbf_vec_2.push_back( "memo"    );
							
							if ( fld_type == XB_CHAR_FLD )
							{
								xbInt16 len;
								xbInt16 res = xdbf_data_file->GetFieldLen( count, len );
								
								::std::string err = locale_str( 97 ).c_str();
								
								if (res == XB_INVALID_DATA){
									err += locale_str( 98 );
									throw PL_Exception_DataBase( err.c_str() );
								}	else
								if (res == XB_INVALID_FIELD_NO){
									err += locale_str( 99 );
									throw PL_Exception_DataBase( err.c_str() );
								}	else
								if (res == XB_INVALID_FIELD_NAME){
									err += locale_str( 100 );
									throw PL_Exception_DataBase( err.c_str() );
								}	else
								if (res == XB_INVALID_FIELD_TYPE){
									err += locale_str( 101 );
									throw PL_Exception_DataBase( err.c_str() );
								}
								
								xdbf_vec_3.push_back( itoa( len, buffer, 10 ) );
								xdbf_vec_4.push_back( "0" );
								continue;
							}
						}
						xdbf_data_file->Close();
						
						createNewFileDialog( xs_buffer.Str(), -1 );
						return;
					} else
					if ((xdbf_lb_2->state & sfFocused) != 0) {
						xdbf_lb_2->getText(buffer,
						xdbf_lb_2->focused, MAX_LEN);
						
						messageBox(buffer,mfInformation|mfOKButton);
						return;
					} else
					if ((xdbf_lb_3->state & sfFocused) != 0) {
						xdbf_lb_3->getText(buffer,
						xdbf_lb_3->focused, MAX_LEN);
						
						messageBox(buffer,mfInformation|mfOKButton);
						return;
					} else
					if ((xdbf_lb_4->state & sfFocused) != 0) {
						xdbf_lb_4->getText(buffer,
						xdbf_lb_4->focused, MAX_LEN);
						
						messageBox(buffer,mfInformation|mfOKButton);
						return;
					} else
					if ((xdbf_lb_5->state & sfFocused) != 0) {
						xdbf_lb_5->getText(buffer,
						xdbf_lb_5->focused, MAX_LEN);
						
						messageBox(buffer,mfInformation|mfOKButton);
						return;
					} else
					if ((xdbf_lb_6->state & sfFocused) != 0) {
						xdbf_lb_6->getText(buffer,
						xdbf_lb_6->focused, MAX_LEN);
						
						messageBox(buffer,mfInformation|mfOKButton);
						return;
					}
				}
			}
			if (event.message.command == cmHelp)
			{
				clearEvent(event);
				
				if ((xdbf_lb_1->state & sfFocused) != 0) { handle_helpView( 1 ); } else
				if ((xdbf_lb_2->state & sfFocused) != 0) { handle_helpView( 2 ); } else
				if ((xdbf_lb_3->state & sfFocused) != 0) { handle_helpView( 3 ); } else
				
				if ((xdbf_lb_4->state & sfFocused) != 0) { handle_helpView( 4 ); } else
				if ((xdbf_lb_5->state & sfFocused) != 0) { handle_helpView( 5 ); } else
				if ((xdbf_lb_6->state & sfFocused) != 0) { handle_helpView( 6 ); }
			}
			else if (event.message.command == cmDBASE_data) {
				clearEvent(event);
				createNewFileDialog( ::std::string(""), 1 );
				return;
			}
			else if (event.message.command == cmDBASE_query) {
				clearEvent(event);
				messageBox(
					locale_str( 24 ).c_str(),
					mfInformation | mfOKButton);
				//createNewFileDialog< PL_dBaseNewFile >("query", 3);
				return;
			}
			else if (event.message.command == cmDBASE_form) {
				clearEvent(event);
				messageBox(
					locale_str( 24 ).c_str(),
					mfInformation | mfOKButton);
				//createNewFileDialog< PL_dBaseNewFile >("form", 4);
				return;
			}
			else if (event.message.command == cmDBASE_report) {
				clearEvent(event);
				messageBox(
					locale_str( 24 ).c_str(),
					mfInformation | mfOKButton);
				//createNewFileDialog< PL_dBaseNewFile >("report", 5);
				return;
			}
			else if (event.message.command == cmDBASE_label) {
				clearEvent(event);
				messageBox(
					locale_str( 24 ).c_str(),
					mfInformation | mfOKButton);
				//createNewFileDialog< PL_dBaseNewFile >("label", 6);
				return;
			}
			else if (event.message.command == cmDBASE_app) {
				clearEvent(event);
				auto *dlg = new PL_dBaseNewFile("application", 7);
				return;
			}
			clearEvent( event );
		}
	private:
		virtual const char *streamableName() const
		{ return name; }
	protected:
		virtual void write( opstream& os) { TWindow::write(os); }
		virtual void* read( ipstream& is) { TWindow::read (is); return this; }
	public:
			   const char  * const name;
		static TStreamable * build() {
			return new PL_dBaseCatalog( streamableInit );
		}
	};

	class TNewProjectDialog: public TDialog {
	private:		
		ushort execDialog( TDialog *d )
		{
			TView *p = TProgram::application->validView( d );
			if (!p)
			return cmCancel; else
			{
				ushort res  = TProgram::deskTop->execView( p );
				if  (  res == cmCancel)
				TObject::destroy( p );
				return res;
			}
		}
		
		ushort execDialog(const char* pattern)
		{
			//char* file_name = (char*)malloc(maxLineLength);
			//strcpy(file_name, pattern);
			
			ushort res = 0;
			if ((res = execDialog( new TFileDialog(
				pattern,
				locale_str( 27 ).c_str(),
				locale_str( 28 ).c_str(),
				fdOpenButton,
				100)) != cmCancel))
			{
				// todo
				messageBox("test",mfInformation | mfOKButton);
			}
			return res;
		}

	public:
		TNewProjectDialog():
			TWindowInit( &TNewProjectDialog::initFrame  ),
			TDialog( TRect( 0,0, 55,13), locale_str( 79 ).c_str() ),
			name("TNewProjectDialog") {

			flags &= ~(wfGrow | wfZoom);
			growMode = 0;
			//palette  = cpwpGrayWindow;
			
			options |= ofCentered;
			options |= ofSelectable;
			
			// ------------------------------
			// set dialog data for later use
			// ------------------------------
			newData = new DialogData;
			
			TInputLine *control = new TInputLine( TRect( 3,2, 34,3), 128);
			insert(control);
			insert( new TLabel  ( TRect(  2,1, 15, 2 ), locale_str( 22 ).c_str(), control));
			insert( new THistory( TRect( 34,2, 37, 3 ), control, 10));

			insert( new TRadioButtons( TRect( 3,4, 36,8),
				new TSItem("Pascal",
				new TSItem("C/C++",
				new TSItem("dBase",
				new TSItem("Fortran",
				new TSItem("Prolog",
				new TSItem("Assembler", 0) )))))));

			insert( new TRadioButtons( TRect( 3,9, 23,12),
				new TSItem("PE-Exe  32-Bit",
				new TSItem("DOS-Exe 16-Bit",
				new TSItem("DOS-Com 16-Bit", 0) ))));
				
			insert( new TCheckBoxes( TRect( 24,9, 36,12 ),
				new TSItem("gdwarf",
				new TSItem("binary", 0) )));
			
			insert( new TButton ( TRect( 38,2, 52, 4 ), locale_str( 19 ).c_str(), cmNewData,  bfDefault ));
			insert( new TButton ( TRect( 38,4, 52, 6 ), locale_str( 20 ).c_str(), cmLoadData, bfNormal  ));
			insert( new TButton ( TRect( 38,6, 52, 8 ), locale_str( 17 ).c_str(), cmCancel,   bfNormal  ));
			insert( new TButton ( TRect( 38,9, 52,11 ), locale_str( 18 ).c_str(), cmHelp,     bfNormal  ));
			
			selectNext(true);
			
			strcpy(
			newData->inputLineData,"C:\\");
			newData->radioButtons1Data = 2;
			newData->radioButtons2Data = 1;
			newData->checkButtons1Data = 1;
			
			setData(newData);
		}

		TNewProjectDialog(StreamableInit):
			TWindowInit(0),
			TDialog(streamableInit),
			name("TNewProjectDialog")
			{}

		~TNewProjectDialog()
		{
		}
		
		void
		handle_helpView(int flag = 0)
		{
			TWindow   * w;
			THelpFile * hFile;
			fpstream  * helpStrm;
				
			static bool helpInUse = false;
			int helpCtx = hcNewProjectDialog_ENG;
				
			if (helpInUse == false) {
				helpInUse = true;
				helpStrm  = new fpstream(PL_HELPFILE, ios::in|ios::binary);
				hFile     = new THelpFile(*helpStrm);
				if (!helpStrm) {
					delete hFile;
					throw PL_Exception_Application(
					locale_str( 21 ).c_str());
				}
				if (PL_globalHolder.PL_language == PL_appLang_ENG)
				{
					getData(newData);
					ushort radid = newData->radioButtons1Data;
								
					if (radid == 0) helpCtx = hcNewPascal_ENG;  else
					if (radid == 1) helpCtx = hcNewCPP_ENG;     else
					if (radid == 2) helpCtx = hcNewDBASE_ENG;   else
					if (radid == 3) helpCtx = hcNewFortran_ENG; else
					if (radid == 4) helpCtx = hcNewProlog_ENG;  else
					if (radid == 5) helpCtx = hcNewAssembler_ENG;
				}
				else if (PL_globalHolder.PL_language == PL_appLang_DEU)
				{
					getData(newData);
					ushort radid = newData->radioButtons1Data;

					if (radid == 0) helpCtx = hcNewPascal_DEU;  else
					if (radid == 1) helpCtx = hcNewCPP_DEU;     else
					if (radid == 2) helpCtx = hcNewDBASE_DEU;   else
					if (radid == 3) helpCtx = hcNewFortran_DEU; else
					if (radid == 4) helpCtx = hcNewProlog_DEU;  else
					if (radid == 5) helpCtx = hcNewAssembler_DEU;
				}
				
				w = new THelpWindow(hFile, helpCtx); //getHelpCtx());
				TProgram::deskTop->insert(w);
				
				helpInUse = False;
			}
		}

		virtual void
		handleEvent( TEvent &event )
		{
			TWindow   * w;
			THelpFile * hFile;
			fpstream  * helpStrm;
			
			static bool helpInUse = false;
			
			TWindow::handleEvent( event );
			if (event.what == evKeyboard)
			{
				if (event.keyDown.keyCode == 283)     // #27 - Escape
				{
					clearEvent(event); TObject::destroy(this);
				}	clearEvent(event); return;
			}

			switch (event.message.command)
			{
				case cmHelp: { handle_helpView(0); clearEvent(event); } break;
				case cmCancel:
				{
					clearEvent(event);
					TObject::destroy(this);
				}
				break;
				
				case cmLoadData:
				{
					getData(newData);
					ushort radid = newData->radioButtons1Data;

					if (radid == 0) helpCtx = execDialog("*.pas"); else
					if (radid == 1) helpCtx = execDialog("*.cpp"); else
					if (radid == 2) helpCtx = execDialog("*.prg"); else
					if (radid == 3) helpCtx = execDialog("*.for"); else
					if (radid == 4) helpCtx = execDialog("*.pro"); else
					if (radid == 5) helpCtx = execDialog("*.asm");
				}
				break;

				case cmNewData:
				{
					clearEvent(event);

					// ---------------------------------
					// get dialog data for current use:
					// ---------------------------------
//					char* buffer = new char[255];
					getData(newData);
					ushort resid     = newData->radioButtons1Data;
					::std::string sz = locale_str( 23 ).c_str();
					
					if (resid == 2) {	// dBase
						auto  * d = new PL_dBaseCatalog( newData->inputLineData );
						TView * p = TProgram::application->validView( d );
						if (!p) {
							delete d;
							throw PL_Exception_Application( sz );
						}
						TProgram::deskTop->insert(d);
					}	else {
						auto  * d = new peExeReader( newData->inputLineData );
						TView * p = TProgram::application->validView( d );
						if (!p) {
							delete d;
							throw PL_Exception_Application( sz );
						}
						TProgram::deskTop->insert(d);
					}
					
/*
					sprintf(buffer,"btn1: %d, btn2: %d, chk1: %d\n%s",
					newData->radioButtons1Data,
					newData->radioButtons2Data,
					newData->checkButtons1Data,newData->inputLineData);
					messageBox( buffer, mfInformation | mfOKButton);
					delete buffer;
*/
				}
				break;
			}
		}
		
	private:
		virtual const char *streamableName() const
		{ return name; }
	protected:
		virtual void write( opstream& os) { TWindow::write(os); }
		virtual void* read( ipstream& is) { TWindow::read (is); return this; }
	public:
		       const char  * const name;
		static TStreamable * build() {
			return new TNewProjectDialog( streamableInit );
		}
	};

	ushort
	MessageBox(::std::string txt, ushort aOptions) {
		return messageBox(txt.c_str(), aOptions);
	}
	ushort
	MessageBoxRect(
		const TRect   &r,
		::std::string txt,
		ushort        aOptions) {
		return messageBoxRect(r,txt.c_str(),aOptions);
	}
	
	void
	openHelpWindow() {
		TView *w = validView( new TFileWindow( PL_HELPFILE ));
		if (!w)
		deskTop->insert(w);
	}

	virtual void
	handleEvent(TEvent& event)
	{
		TWindow   * w;
		THelpFile * hFile;
		fpstream  * helpStrm;
		static bool helpInUse = false;
			
		TApplication::handleEvent(event);
		if (event.what != evCommand) {
			clearEvent(event);
			return;
		}

		switch (event.message.command)
		{
			case cmHelp:
			{
				if (helpInUse == false) {
					helpInUse = true;
					helpStrm  = new fpstream(PL_HELPFILE, ios::in|ios::binary);
					hFile     = new THelpFile(*helpStrm);
					if (!helpStrm) {
						delete hFile;
						throw PL_Exception_Application(
						locale_str( 21 ).c_str());
					}
					else {
						w = new THelpWindow(hFile, hcNoContext);
						TProgram::deskTop->insert(w);
						clearEvent(event);
					}
					helpInUse = False;
				}
			}
			break;

			case cmAppQuit:
			{
				if (messageBox( locale_str( 16 ).c_str(), mfYesButton | mfNoButton ) == 12)
				//	delete _app;
				TObject::destroy(this);
			}
			break;

			case cmNewProject:
			{
				createNewProjectDialog();
				clearEvent(event);
			}
			break;
			
			case cmAsciiTableCmd:
			{
				TAsciiChart *chart = (TAsciiChart *) validView(new TAsciiChart);
				if(chart != 0) {
					chart  ->helpCtx = hcAsciiTable;
					deskTop->insert(chart);
				}	clearEvent(event);
			}
			break;
			
			case cmAboutBox:
			{
				::std::string sz;
				sz = "\x3Zwapel 0.0.1\n\n\x3(c) 2023 by Jens Kallup";
				messageBox( sz.c_str(), mfInformation | mfOKButton );
				clearEvent(event);
			}
			break;
		}
	}

	static ::TMenuBar*
	initMenuBar( ::TRect r )
	{
		r.b.y = r.a.y + 1;
		//::TMenu *M[] =
		//{
			return new ::TMenuBar(r,
			*new ::TSubMenu( "=", hcNoContext) +
				*new TMenuItem( locale_str( 41 ), cmAsciiTableCmd, kbNoKey, hcNoContext ) +

			*new ::TSubMenu( locale_str( 42 ), hcNoContext) +
				*new TMenuItem( locale_str( 43 ), cmNewProject, kbF3, hcAsciiTable, "F3" )        +
				*new TMenuItem( locale_str( 44 ), 101,          kbF2, hcNoContext,  "F2" )        +
				newLine()                                                                         +
				*new TMenuItem( locale_str( 45 ), 102,      kbNoKey, hcNoContext )                +
				*new TMenuItem( locale_str( 46 ), cmAppQuit, kbAltX, hcNoContext,   "Alt-X" )     +
				
			*new TSubMenu( locale_str( 47 ), hcNoContext )                                        +
				*new TMenuItem( locale_str( 48 ), cmResize, kbCtrlF5,  hcNoContext, "Cntl-F5")    +
				*new TMenuItem( locale_str( 49 ), cmNext,   kbF6,      hcNoContext, "F6")         +
				*new TMenuItem( locale_str( 50 ), cmPrev,   kbShiftF6, hcNoContext, "Shift-F6")   +
				*new TMenuItem( locale_str( 51 ), cmClose,  kbAltF3,   hcNoContext, "Alt-F3")     +
				
			*new TSubMenu( locale_str( 52 ), hcNoContext )                                        +
				*new TMenuItem( locale_str( 53 ), cmHelpIndex,  kbCtrlF5, hcNoContext, "Cntl-F5") +
				*new TMenuItem( locale_str( 54 ), cmHelpOnline, kbF6,     hcNoContext, "F6")      +
				newLine()                                                                         +
				*new TMenuItem( locale_str( 55 ), cmAboutBox,   kbAltF1,  hcNoContext, "F1" ));
		//	0
		//};
		//return new TMultiMenu( r, M );
	}

	static ::TStatusLine*
	initStatusLine( ::TRect r )
	{
		r.a.y = r.b.y - 1;
		return new ::TStatusLine( r,
			*new ::TStatusDef( 0, 0xFFFF ) +
			*new ::TStatusItem( locale_str( 29 ).c_str(), kbF1,  cmHelp       ) +
			*new ::TStatusItem( locale_str( 30 ).c_str(), kbF3,  cmNewProject ) +
			*new ::TStatusItem( locale_str( 31 ).c_str(), kbF10, cmMenu       ) +

			*new ::TStatusItem( 0,  kbAltX,     cmAppQuit) +
			*new ::TStatusItem( 0,  kbShiftDel, cmCut    ) +
			*new ::TStatusItem( 0,  kbCtrlIns,  cmCopy   ) +
			*new ::TStatusItem( 0,  kbShiftIns, cmPaste  ) +
			*new ::TStatusItem( "", kbCtrlF5,   cmResize )
		);
	}
	
	void
	createPEviewer(::std::string filename) {
		auto  * d = new peExeReader(filename.c_str());
		TView * p = TProgram::application->validView(d);
		if (!p) {
			::std::string sz;
			sz = locale_str( 23 ).c_str();
			throw PL_Exception_Application( sz.c_str() );
		}
		TProgram::deskTop->insert(d);
	}
	
	void
	createNewProjectDialog()
	{
		project_dialog = new TNewProjectDialog();
		TView * p = TProgram::application->validView(
		project_dialog );
		if (!p) {
			::std::string sz;
			sz = locale_str( 23 ).c_str();
			throw PL_Exception_Application( sz.c_str() );
		}
		TProgram::deskTop->insert( project_dialog );
	}
	
	static bool isTileable(TView *p, void*)
	{
		if ((p->options & ofTileable) != 0)
		return true;
		return false;
	}
	void idle()
	{
		TProgram::idle();
		clock->update ();
		if (deskTop->firstThat(isTileable,0) != 0) {
			enableCommand(cmTile);
			enableCommand(cmCascade);
		}	else {
			disableCommand(cmTile);
			disableCommand(cmCascade);
		}
	}

public:
	ConsoleApplication(
		::std::vector<  ::std::string > argv):
		::TProgInit(
			&ConsoleApplication::initStatusLine,
			&ConsoleApplication::initMenuBar,
			&ConsoleApplication::initDeskTop),
		TApplication(),
		curMenu(0)
	{
		TRect r = getExtent();
		r.a.x = r.b.x - 9;
		r.b.y = r.a.y + 1;
		
		clock = new TClockView(r);
		clock->growMode = gfGrowLoX | gfGrowHiX;
		insert(clock);
		
		newData = new DialogData;
		
		exe = argv.at(0);
		dir = "";
		fnd = 0;
		
		fnd = exe.find_last_of("/\\");
		dir = exe.substr( 0,  fnd );
		exe = exe.substr( fnd + 1 );

		//messageBox( exe.c_str(), mfOKButton );
		//messageBox( dir.c_str(), mfOKButton );

		xdbf_data_class     = new xbXBase();
		xdbf_data_directory = dir ;

		xdbf_data_class->SetDataDirectory( dir.c_str() );
	}
	
	~ConsoleApplication() {
		if (xdbf_data_file != nullptr) {
			xdbf_data_file->Close();
			delete xdbf_data_file;
		}
		
		if (xdbf_data_class != nullptr)
		delete xdbf_data_class;

		if (xdbf_lbc_1 != nullptr) delete xdbf_lbc_1;
		if (xdbf_lbc_2 != nullptr) delete xdbf_lbc_2;
		if (xdbf_lbc_3 != nullptr) delete xdbf_lbc_3;
		
		if (xdbf_lbc_4 != nullptr) delete xdbf_lbc_4;
		if (xdbf_lbc_5 != nullptr) delete xdbf_lbc_5;
		if (xdbf_lbc_6 != nullptr) delete xdbf_lbc_6;

		if (xdbf_lb_1  != nullptr) delete xdbf_lb_1;
		if (xdbf_lb_2  != nullptr) delete xdbf_lb_2;
		if (xdbf_lb_3  != nullptr) delete xdbf_lb_3;
		
		if (xdbf_lb_4  != nullptr) delete xdbf_lb_4;
		if (xdbf_lb_5  != nullptr) delete xdbf_lb_5;
		if (xdbf_lb_6  != nullptr) delete xdbf_lb_6;

		if (new_file_lb_1 != nullptr) delete new_file_lb_1;
		if (new_file_lb_2 != nullptr) delete new_file_lb_2;

		if (new_file_lb_3 != nullptr) delete new_file_lb_3;
		if (new_file_lb_4 != nullptr) delete new_file_lb_4;

		if (clock   != nullptr) delete clock;
		if (newData != nullptr) delete newData;
	}
	
	void exit(int returnCode = 0)
	{
		DEBUGSTR("ConsoleApplication exit")
	}

	void run() { TApplication::run(); }
	int exec()
	{
		DEBUGSTR("ConsoleApplication exec")
		return 0;
	}

private:
	TClockView *clock;
	int curMenu;

	static inline TNewProjectDialog * project_dialog;
	static inline ::std::size_t fnd;
	
	::std::string exe;  // application name:   foo.exe
	::std::string dir;  // application folder: C:\path\to
	
};	// class ConsoleApplication

inline ipstream& operator >> ( ipstream& is, ConsoleApplication::TTable&  cl ) { return is >> (TStreamable&) cl; }
inline ipstream& operator >> ( ipstream& is, ConsoleApplication::TTable*& cl ) { return is >> (void *&) cl; }

inline opstream& operator << ( opstream& os, ConsoleApplication::TTable&  cl ) { return os << (TStreamable&) cl; }
inline opstream& operator << ( opstream& os, ConsoleApplication::TTable*  cl ) { return os << (TStreamable*) cl; }

inline ipstream& operator >> ( ipstream& is, ConsoleApplication::TReport&  cl ) { return is >> (TStreamable&) cl; }
inline ipstream& operator >> ( ipstream& is, ConsoleApplication::TReport*& cl ) { return is >> (void *&) cl; }

inline opstream& operator << ( opstream& os, ConsoleApplication::TReport&  cl ) { return os << (TStreamable&) cl; }
inline opstream& operator << ( opstream& os, ConsoleApplication::TReport*  cl ) { return os << (TStreamable*) cl; }

inline ipstream& operator >> ( ipstream& is, ConsoleApplication::TAsciiChart&  cl ) { return is >> (TStreamable&) cl; }
inline ipstream& operator >> ( ipstream& is, ConsoleApplication::TAsciiChart*& cl ) { return is >> (void *&) cl; }

inline opstream& operator << ( opstream& os, ConsoleApplication::TAsciiChart&  cl ) { return os << (TStreamable&) cl; }
inline opstream& operator << ( opstream& os, ConsoleApplication::TAsciiChart*  cl ) { return os << (TStreamable*) cl; }

// ---------------------------------------------------------------------
//! \class  PL_helper
//! \since  Version 0.0.1
//! \~English
//! \brief  This is a helper class for the zwapel Prolog classes.
//! \details
//! The class contains misc. help functions that will be use multiple
//! times in the source code.<br>
//! It is not the main class, so they can be a little bit twisted till
//! the end product class system will be reached a profesional stage.
//!
//! \~endEnglish
//! \~German
//! \brief  Dies ist eine Behelfs-Klasse mit verschiedenen Funktionen,
//!         für verschiedene Zwecke, die mehrmals verwendet werden.
//! \details
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
	//! \details
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
	//! \details
	//! Die Klasse enthält einfachen Typ-Funktionen, die als Platzhalter
	//! dienen, da sie mehrmals verwendet werden.<br>
	//! Der C++ Compiler handelt den inline-Function's Code während der
	//! Übersetzung aus.
	//!
	//! \param keine.
	//! \~endGerman
	PL_helper() {
		DEBUGSTR("ctor: PL_helper ()")
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
		DEBUGSTR("dtor: ~PL_helper ()")
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
//! \class  PL_ASTList
//! \since  Version 0.0.1
//! \author paule32
//! \~English
//! \brief  AST - The Parser Abstract Syntax Tree class for all PL Projects.
//!         Here implemented as linked list.
//! \~endEnglish
//! \~German
//! \brief  Die Parser AST-Klasse, für alle PL Projekte.
//!         Hier als linked list umgesetzt.
//! \~endGerman
// -----------------------------------------------------------------------
class PL_ASTList
{
public:	
	PL_ASTList()
	{	struct PL_ASTList_Node *current, *temp;
		pl_head = nullptr;
		pl_tail = nullptr;
		current = pl_head;
		temp    = pl_head;
		while (current != nullptr) {
			current = current->next;
			delete temp;
			temp = current;
		}
	}
   ~PL_ASTList() {
		struct PL_ASTList_Node *current, *temp;
		current = pl_head;
		temp    = pl_head;
		while (current != nullptr) {
			current = current->next; delete temp;
			temp    = current;
		}
    }
   
	struct PL_ASTList_Node* initNode(::std::string s, int i) {
	struct PL_ASTList_Node* pl_ptr = new PL_ASTList_Node;
		
		// error? then just return
		if (pl_ptr == nullptr)
		return static_cast<
		struct PL_ASTList_Node * >(nullptr);
	
		// assign it
		// then return pointer to the node
		else {
			pl_ptr->name   = s;
			pl_ptr->lineno = i;
			return pl_ptr;
		}
	}
	
	void reverse() {
		if ((pl_head == nullptr) || (pl_head->next == nullptr))
		return;
	
		PL_ASTList_Node * parent = pl_head;
		PL_ASTList_Node * me     = pl_head->next;
		PL_ASTList_Node * child  = me     ->next;
		
		// convert head to tail
		pl_head->next = nullptr;
		
		// reverse pointer direction
		me->next      = pl_head;
		
		while (child != nullptr) {
			me->next  = parent;
			parent    = me;
			me        = child;
			child     = child->next;
		}
		
		// when we reached tail
		// we become head
		pl_head = me;
		
		// the head now pointing to the second last node
		pl_head->next = parent;
	}
	
	void addNode(
	struct PL_ASTList_Node* newNode) {

		// if there no node, put it to head
		if (pl_head == nullptr) {
			pl_head  = newNode;
			pl_tail  = newNode;
		}
		
		// link int the new_node to the tail of the list
		// then mark the next field as then end of the list
		// adjust tail to point to the last node
		pl_tail->next = newNode;
		newNode->next = nullptr;
		pl_tail       = newNode;
	}

	void insertNode(
	struct PL_ASTList_Node* newnode) {
	struct PL_ASTList_Node* temp, *prev;
		
		if (pl_head == nullptr) {			   // uf an empty list,
			pl_head = newnode;			       // set "head" to it
			pl_tail = newnode;
			pl_head->next = nullptr;		   // set end of list to null
			return;
		}
		temp = pl_head; 				       // start at beginning of list
		while (temp->name < newnode->name) {   // while current name < new name
			temp = temp->next;			       // to be inserted then
			if (temp == nullptr)			   // goto to the next node in list
			break;					           // don't go past end of list
		}
		if (temp == pl_head) {
			newnode->next = pl_head;
			pl_head = newnode;
		}	else {
			prev = pl_head;
			while (prev->next != temp) {
				prev = prev->next;
			}
			prev   ->next = newnode;
			newnode->next = temp;
			
			if (pl_tail == prev)
			pl_tail = newnode;
		}
	}
	
	struct PL_ASTList_Node* searchName(
	struct PL_ASTList_Node* ptr, ::std::string name)
	{
		while (name != ptr->name) {
			ptr = ptr->next;
			if (ptr == nullptr)
			break;
		}
		return ptr;
	}
	
	struct PL_ASTList_Node* searchID(
	struct PL_ASTList_Node* ptr, int id)
	{
		while (id != ptr->lineno) {
			ptr = ptr->next;
			if (ptr == nullptr)
			break;
		}
		return ptr;
	}
	
	void deleteList(
	struct PL_ASTList_Node* ptr) {
	struct PL_ASTList_Node* temp, *prev;
		
		temp = ptr;     // node to be deleted
		prev = pl_head; // start of the list, will cycle to node before temp
		
		if (temp == prev) {
			pl_head = pl_head->next;
			
			if (pl_tail == temp)
			pl_tail = pl_tail->next;

			delete temp;
		}	else {
			while (prev->next != temp) {
				prev = prev->next;
			}
			prev->next = temp->next;
			
			if (pl_tail == temp)
			pl_tail = prev;
		
			delete temp;
		}
	}
	
	void displayNode(
	struct PL_ASTList_Node* ptr) const {

		::std::cout << ptr->lineno << ": " << ptr->name <<
		::std::endl ;
		
		if (ptr->nodeType == NT_ListExpr()) {
			::std::cout <<
			ptr->nodes_expr.at(0)->lhs << ::std::endl <<
			ptr->nodes_expr.at(0)->rhs << ::std::endl ;
		}
	}
	
	void displayList(
	struct PL_ASTList_Node* ptr) const {

		if (!ptr)
		::std::cout << "nothing to display" <<
		::std::endl ;
		
		while (ptr) {
			displayNode(ptr);
			ptr = ptr->next;
		}
	}
	
	//-- EXPRESSION STUFF -------------------------------------
	
	void addExpr(uint32_t lhs, uint32_t rhs) {
	struct PL_ASTList_Node *current;
	
		auto *n_expr = new PL_ASTList_Expr;
		
		current = pl_head;
		current->nodeType = NT_ListExpr();

		n_expr->lhs = static_cast< double >(lhs);
		n_expr->rhs = static_cast< double >(rhs);
		
		current->nodes_expr.push_back(n_expr);
	}
};

class PL_ASTListRunner {
public:
	PL_ASTListRunner(){}
	~PL_ASTListRunner(){}
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
private:
	//-- INITIAL STUFF ----------------------------------------
	void init() {
		PL_lookaheadPosition = -1;
		PL_line_row          =  1;
		PL_line_col          =  1;
		PL_nestedComment     =  0;
	}

	::std::vector< ::std::string > PL_pascal_keywords = {
		"define", "endif",
		"unit", "library", "program",
		"interface", "implementation",
		"var", "const",
		"begin", "end", "exit", "result",
		"procedure", "function",
		"for", "while", "repeat", "until", "do"
		"string", "integer", "char", "byte",
		"mod", "div", "abs",
		"sin", "cos", "tan",
		"if", "else", "case", "break"
	};
	
	::std::ifstream ifile;
	::std::ofstream ofile;

public:
	uint32_t PL_type_size;
	uint32_t PL_file_size;
	
	uint16_t PL_token;
	uint16_t PL_lookaheadChar;      // parsed char
	
	::std::string       PL_ident;
	::std::stringstream PL_source;

public:
	uint32_t PL_lookaheadPosition;
	uint32_t PL_nestedComment;

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
		DEBUGSTR("ctor: PL_parser std::string&")
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
		DEBUGSTR("ctor: PL_parser std::string")
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
		DEBUGSTR("ctor: PL_parser char&")
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
		DEBUGSTR("ctor: PL_parser ()")
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
		DEBUGSTR("dtor: ~PL_parser ()")
	}

	//-- FUNCTION DEFINITIONS ---------------------------------
	char PL_getch()
	{
		PL_lookaheadChar =
		PL_source.str().c_str()[++PL_lookaheadPosition];
		PL_line_col += 1;

		return PL_lookaheadChar;
	}
	
	uint16_t PL_ungetch()
	{
		PL_lookaheadChar  =
		PL_source.str().c_str()[--PL_lookaheadPosition];
		PL_line_col -= 1;

		return PL_lookaheadChar;
	}
	
	void PL_prepare(const ::std::string &filename)
	{
		/*
		PL_ASTList     myAST;
		PL_ASTList_Node* ptr;
		
		ptr = myAST.initNode("main", PL_line_row);
		myAST.addNode(ptr);
		myAST.addExpr(12,10012);
		
		
		myAST.displayList(pl_head);

		throw PL_Exception("kein fehler");*/
		
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
			throw PL_Exception(
			locale_str( 32 ).c_str(), PL_line_row);
		}
		
		PL_ident = ::std::string("");
	}
	
	uint16_t PL_parse_ident()
	{
		//PL_ident = PL_lookaheadChar;
		PL_lookaheadChar =
		PL_ungetch();

		BEGIN_WHILE
			PL_lookaheadChar = PL_getch();
			if (::std::isalnum(PL_lookaheadChar) ||
				PL_lookaheadChar == '_') {
				PL_ident +=
				PL_lookaheadChar;
				//printf("----> %c\n", PL_lookaheadChar);
				continue;
			}
			else if (
				PL_lookaheadChar == '\n') {
				PL_line_row += 1;
				PL_line_col  = 1;
				break;
			}
			else if (PL_lookaheadChar == '\t') break;
			else if (PL_lookaheadChar == ' ' ) break;
			else {
				PL_lookaheadChar = PL_ungetch();
				break;
			}
		END_WHILE
		return PL_lookaheadChar;
	}

	bool
	PL_check_white_spaces()
	{
		bool result = false;
		if (PL_lookaheadChar == ' ' ||
			PL_lookaheadChar == '\t') {
			result = true;
		}
		else if (PL_lookaheadChar == '\n') {
			PL_line_row += 1;
			PL_line_col  = 1;
			result = true;
		}	return result;
	}

	uint16_t PL_skip_white_spaces()
	{
		BEGIN_WHILE
			PL_lookaheadChar = PL_getch();
				
			if (PL_lookaheadChar == 0x00) {
				PL_lookaheadChar = 0;
				break;
			}
			else if(std::isalnum(PL_lookaheadChar) ||
				PL_lookaheadChar == '_') {
				PL_lookaheadChar =
				PL_parse_ident() ;
				PL_lookaheadChar = TOK_IDENT;
				break;
			}
			else if (PL_check_white_spaces())
			continue; else
			break;
		END_WHILE
		return PL_lookaheadChar;
	}
	
	uint16_t PL_skip_comment_cpp(void)
	{
		BEGIN_WHILE
			PL_lookaheadChar =
			PL_getch();

			if (PL_lookaheadChar == '/') {
				PL_lookaheadChar =
				PL_getch();
				if (PL_lookaheadChar == '/') {
					cout << "c++ coment" << endl;
					BEGIN_WHILE
						PL_lookaheadChar = PL_getch(); if (
						PL_lookaheadChar == '\n') {
						PL_line_row += 1;
						PL_line_col  = 1;
						break;
						}
					END_WHILE
				}	else
				if (PL_lookaheadChar == '*') {
					BEGIN_WHILE
						PL_lookaheadChar = PL_getch(); if (
						PL_lookaheadChar == '*') {
						
						PL_lookaheadChar = PL_getch(); if (
						PL_lookaheadChar == '/')
						break;
						}
					END_WHILE
				}	else {
					throw PL_Exception_ParserError(
					locale_str( 24 ).c_str());
				}
			}
			else if (PL_check_white_spaces())
			continue; else return
			PL_lookaheadChar;
		END_WHILE
		return 0;
	}

	//! \fn     void PL_skip_comment_c(void)
	//! \since  Version 0.0.1
	//! \author paule32
	//! \see    PL_skip_comment_cpp(void)
	//! \see    PL_skip_comment_pas(void)
	//! \~English
	//! \brief  This function member is related to the C Parser.
	//!         Here, we deal with C source code comment's.
	//! \param  nothing - void.
	//! \return nothing - void.
	//! \~endEnglish
	//! \~German
	//! \brief  Diese C++ Funktion wird im C Parser verwendet.
	//!         Es werden nomale c und C++ Kommentare behandelt.
	//! \param  keine - void.
	//! \return keine - void.
	//! \~endGerman
	void PL_skip_comment_c(void)
	{
		if (PL_lookaheadChar == '/')
		{
			if (!(PL_lookaheadChar = PL_getch()))
				throw PL_Exception(
				locale_str( 24 ).c_str(),
				PL_line_row);
			
			if (PL_lookaheadChar == '*')
			{	PL_nestedComment += 1;
				
				BEGIN_WHILE
					label_comment2:
					
					if (!(PL_lookaheadChar = PL_getch()))
					throw PL_Exception(
					locale_str( 33 ).c_str(),PL_line_row);
				
					if (PL_lookaheadChar == '\n') {
						PL_line_row += 1;
						PL_line_col  = 1;
						continue;
					}

					if (PL_lookaheadChar == '/')
					{
						if (!(PL_lookaheadChar = PL_getch()))
						throw PL_Exception(
						locale_str( 33 ).c_str(),PL_line_row);
						
						if (PL_lookaheadChar == '*') {
							PL_nestedComment += 1;
							continue;
						}
					}
					
					if (PL_lookaheadChar == '*')
					{
						if (!(PL_lookaheadChar = PL_getch()))
						throw PL_Exception(
						locale_str( 33 ).c_str(),PL_line_row);
					
						if (  PL_lookaheadChar == '/') {
						if (++PL_nestedComment < 1)
						break;
						}
					}
				END_WHILE
			}	else {
				// todo
				throw PL_Exception(
				locale_str( 24 ).c_str(),
				PL_line_row);
			}
		}
	}

	//! \fn     void PL_skip_comment_pas(void)
	//! \since  Version 0.0.1
	//! \author paule32
	//! \see    PL_skip_comment_cpp(void)
	//! \~English
	//! \brief  This function member is related to the Pascal Parser.
	//!         Here, we deal with Pascal comment's.
	//! \param  nothing - void.
	//! \return nothing - void.
	//! \~endEnglish
	//! \~German
	//! \brief  Diese C++ Funktion wird im Pascal Parser verwendet.
	//!         Es werden nomale Pascal, und C++ Kommentare behandelt.
	//! \param  keine - void.
	//! \return keine - void.
	//! \~endGerman
	uint16_t PL_skip_comment_pas(void)
	{
		cout << "pas" << endl;
		uint16_t PL_result = 0;

		BEGIN_WHILE
			PL_lookaheadChar =
			PL_getch();
		
			// { comment }
			// {$define}
			if (PL_lookaheadChar == '{')
			{
				PL_nestedComment += 1;
				PL_lookaheadChar =
				PL_getch();
			
				if (PL_lookaheadChar == '$') {
					PL_ident = "";
					PL_lookaheadChar =
					PL_parse_ident();
						
					cout << "comm: " << PL_ident << endl;
					
					if (PL_lookaheadChar == TOK_IDENT) {
						cout << "PL: " << PL_ident << endl;
						PL_ident = "";
						continue;
					}	else
					if (PL_lookaheadChar == '}') {
						PL_nestedComment -= 1;
						if (PL_nestedComment > 0)
						continue; else
						break;
					}	else
					if (PL_lookaheadChar == '\n') {
						PL_line_row += 1;
						PL_line_col  = 1;
						continue;
					}
				}	else
				if (PL_lookaheadChar == '}') {
					PL_nestedComment -= 1;
					if (PL_nestedComment > 0)
					continue; else
					break;
				}
			}	else
			if (PL_lookaheadChar == '\n') {
				PL_line_row += 1;
				PL_line_col  = 1;
				continue;
			}	else
			if (PL_lookaheadChar == '\t') {
				continue;
			}	else
			if (PL_lookaheadChar == ' ') {
				continue;
			}	else
			// (* comment *)
			if (PL_lookaheadChar == '(') {
				PL_lookaheadChar =
				PL_getch();
			
				if (PL_lookaheadChar == '*') {
					PL_nestedComment += 1;
					BEGIN_WHILE
						PL_lookaheadChar =
						PL_getch();
					
						if (PL_lookaheadChar == '\n') {
							PL_line_row += 1;
							PL_line_col  = 1;
							continue;
						}	else
						if (PL_lookaheadChar == '*') {
							PL_lookaheadChar =
							PL_getch();
						
							if (PL_lookaheadChar == ')') {
								PL_nestedComment -= 1;
								PL_lookaheadChar =
								PL_getch();
								if (
								PL_nestedComment > 0)
								continue; else
								break;
							}	else
							if (PL_lookaheadChar == '\n') {
								PL_line_row += 1;
								PL_line_col  = 1;
							}
						}
					END_WHILE
				}	else {
					throw PL_Exception_ParserError(
					locale_str( 34 ).c_str());
				}
			}	else {
				PL_lookaheadChar =
				PL_ungetch();
				break;
			}
		END_WHILE
		return 0;
	}
	
	uint16_t PL_handle_pas_white_spaces()
	{
		uint16_t result = 0;
		BEGIN_WHILE
			PL_lookaheadChar =
			PL_getch();
		
			if (PL_lookaheadChar == '/') {
				PL_ungetch();
				PL_lookaheadChar  =
				PL_skip_comment_cpp  (); }
				
			if (PL_lookaheadChar == '{') {
				PL_ungetch();
				PL_lookaheadChar  =
				PL_skip_comment_pas  (); }
				
			if (PL_lookaheadChar == '(') {
				PL_ungetch();
				PL_lookaheadChar  =
				PL_skip_comment_pas  (); }
		
			if (PL_lookaheadChar == '\n') {
				PL_line_row += 1;
				PL_line_col  = 1;
			}
			if (PL_lookaheadChar == ' ' ) continue; else
			if (PL_lookaheadChar == '\t') continue; else
		
			if (PL_lookaheadChar == '}' ) {
			if (PL_nestedComment  > 0)
				PL_nestedComment -= 1; else
				throw PL_Exception_ParserError(
				locale_str( 33 ).c_str());
			}	else
			if (PL_lookaheadChar == ';') {
				result = ';';
				break;
			}
			
			if (::std::isalnum(
				PL_lookaheadChar) ||
				PL_lookaheadChar  == '_') {

				result = PL_lookaheadChar;
				break;
			}
		END_WHILE
		return result;
	}
	
	bool
	PL_check_pascal_keyword(::std::string kw) {
		bool result = false;
		::std::transform(
		kw.begin(),
		kw.end(),
		kw.begin(), ::tolower);
		
		for (auto const& item: PL_pascal_keywords) {
			if (item == kw) {
				result = true;
				break;
			}
		}
		return result;
	}
};

// -----------------------------------------------------------------------
//! \class  PL_Fortran
//! \since  Version 0.0.1
//! \author paule32
//! \~English
//! \brief  The Parser class for PL - dBase Projects.
//! \details
//! Good old Fortran stuff.
//!
//! \~endEnglish
//! \~German
//! \brief  Die Parser Klasse, für PL - dBase Projekte.
//! Das gute Alte St&uuml;
//!
//! \~endGerman
// -----------------------------------------------------------------------
class PL_Fortran: public PL_parser
{
public:
	//-- CONSTRUCTORS DEFINITIONS -----------------------------
	
	//! \since  Version 0.0.1
	//! \author paule32
	//! \see    PL_Prolog::PL_Prolog(std::string&)
	//! \see    PL_Prolog::PL_Prolog(char&)
	//! \see    PL_Prolog::PL_Prolog()
	//! \~English
	//! \brief  This is a C++ constructor class for the Prolog Parser.
	//! \param  ConsoleApplication& ptr - Pointer to the ConsoleApplication class.
	//! \return internal used Object with Pointer to itself.
	//! \~endEnglish
	//! \~German
	//! \brief  Dies ist ein C++ Konstruktor für den Prolog Parser.
	//! \param  ConsoleApplication& ptr - Zeiger auf ein zugewiesenes ConsoleApplication Objekt
	//! \return internes Objekt auf diese Klasse.
	//! \~endGerman
	PL_Fortran(ConsoleApplication&) {
		DEBUGSTR("ctor: PL_Fortran ConsoleApplication")
	//	init();
	}
	PL_Fortran(ConsoleApplication*) {
		DEBUGSTR("ctor: PL_Fortran ConsoleApplication")
	//	init();
	}
	
	PL_Fortran() { }
	
	//-- FUNCTION DEFINITIONS ---------------------------------
	void PL_handle_ident()
	{
		::std::transform(
		PL_ident.begin(),
		PL_ident.end(),
		PL_ident.begin(), ::tolower);
	}

	uint16_t
	PL_handle_for_white_spaces()
	{
		uint16_t result = 0;
		BEGIN_WHILE
			PL_lookaheadChar =
			PL_getch();
			
			if (PL_lookaheadChar == 'c') {
				if (PL_line_col < 2) {
					BEGIN_WHILE
					
					END_WHILE
				}
			}
		END_WHILE
		return result;
	}
			
	void PL_parseFile(const ::std::string &filename )
	{
			PL_prepare(filename);
		BEGIN_WHILE
			PL_handle_for_white_spaces();

			if (::std::isalnum(
				PL_lookaheadChar) ||
				PL_lookaheadChar  == '_') {
					
				PL_ident =
				PL_lookaheadChar;
				PL_parse_ident();
				
				PL_handle_ident();
				continue;
			}
		END_WHILE
	}
};

// -----------------------------------------------------------------------
//! \class  PL_Assembler
//! \since  Version 0.0.1
//! \author paule32
//! \~English
//! \brief  The Parser class for PL - Assembly Projects.
//! \details
//! Good old Assembler stuff.
//!
//! \~endEnglish
//! \~German
//! \brief  Die Parser Klasse, für PL - Assembler Projekte.
//! Das gute Alte St&uuml;
//!
//! \~endGerman
// -----------------------------------------------------------------------
class PL_Assembler: public PL_parser
{
	void init() {
	}
public:
	//-- CONSTRUCTORS DEFINITIONS -----------------------------
	PL_Assembler(ConsoleApplication&) {
		DEBUGSTR("ctor: PL_Assembler ConsoleApplication")
		init();
	}
	PL_Assembler(ConsoleApplication*) {
		DEBUGSTR("ctor: PL_Assembler ConsoleApplication")
		init();
	}
	PL_Assembler() { }
	
	//-- FUNCTION DEFINITIONS ---------------------------------
	uint16_t
	PL_handle_for_white_spaces()
	{
		uint16_t result = 0;
		BEGIN_WHILE
			PL_lookaheadChar =
			PL_getch();
			
			if (PL_lookaheadChar == 'c') {
				if (PL_line_col < 2) {
					BEGIN_WHILE
					
					END_WHILE
				}
			}
		END_WHILE
		return result;
	}
			
	void PL_parseFile(const ::std::string &filename )
	{
			PL_prepare(filename);
		BEGIN_WHILE
			PL_handle_for_white_spaces();

			if (::std::isalnum(
				PL_lookaheadChar) ||
				PL_lookaheadChar  == '_') {
					
				PL_ident =
				PL_lookaheadChar;
				PL_parse_ident();
				
				//PL_handle_ident();
				continue;
			}
		END_WHILE
	}
};

class PL_Prolog: public PL_parser
{
private:
	void init() {
		ast = new PL_ASTList;
	}

public:
	PL_ASTList * ast;

public:
	//-- CONSTRUCTORS DEFINITIONS -----------------------------
	
	//! \since  Version 0.0.1
	//! \author paule32
	//! \see    PL_Prolog::PL_Prolog(std::string&)
	//! \see    PL_Prolog::PL_Prolog(char&)
	//! \see    PL_Prolog::PL_Prolog()
	//! \~English
	//! \brief  This is a C++ constructor class for the Prolog Parser.
	//! \param  ConsoleApplication& ptr - Pointer to the ConsoleApplication class.
	//! \return internal used Object with Pointer to itself.
	//! \~endEnglish
	//! \~German
	//! \brief  Dies ist ein C++ Konstruktor für den Prolog Parser.
	//! \param  ConsoleApplication& ptr - Zeiger auf ein zugewiesenes ConsoleApplication Objekt
	//! \return internes Objekt auf diese Klasse.
	//! \~endGerman
	PL_Prolog(ConsoleApplication&) {
		DEBUGSTR("ctor: PL_Prolog ConsoleApplication")
		init();
	}
	PL_Prolog(ConsoleApplication*) {
		DEBUGSTR("ctor: PL_Prolog ConsoleApplication")
		init();
	}

	//! \since  Version 0.0.1
	//! \author paule32
	//! \see    PL_Prolog::PL_Prolog(ConsoleApplication&)
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
		DEBUGSTR("ctor: PL_Prolog std::string&")
		init();
	}
	
	//! \since  Version 0.0.1
	//! \author paule32
	//! \see    PL_Prolog::PL_Prolog(ConsoleApplication&)
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
		DEBUGSTR("ctor: PL_Prolog std::string")
		init();
	}
	
	//! \since  Version 0.0.1
	//! \author paule32
	//! \see    PL_Prolog::PL_Prolog(ConsoleApplication&)
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
		DEBUGSTR("ctor: PL_Prolog char&&")
		init();
	}

	//! \since  Version 0.0.1
	//! \author paule32
	//! \see    PL_Prolog::PL_Prolog(ConsoleApplication&)
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
		DEBUGSTR("ctor: PL_Prolog ()")
		init();
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
		delete ast;
		DEBUGSTR("dtor: ~PL_Prolog ()")
	}

	//-- FUNCTION DEFINITIONS ---------------------------------
	void PL_parseFile(const ::std::string &filename )
	{
		PL_prepare(filename);
		BEGIN_WHILE
			PL_lookaheadChar =
			
			PL_getch(); if (!
			PL_skip_white_spaces()) break;

			// -------------------
			// one line comment:
			// -------------------
			if (PL_lookaheadChar == '%') {
				label_comment:
				BEGIN_WHILE
					if (!(
					PL_lookaheadChar =
					PL_getch()))
					break;
				
					if (PL_lookaheadChar == '\n') {
						PL_line_row += 1;
						PL_line_col  = 1;
						break;
					}
				END_WHILE
				continue;
			}

				PL_lookaheadChar =
				PL_parse_ident();
			if (PL_ident.size() > 0)
			{
				std::cout <<
				PL_ident  << std::endl;
				PL_ident = ::std::string("");
			}
		END_WHILE
		
		if (PL_nestedComment > 0) {
			throw PL_Exception_ParserError(
			locale_str( 24 ).c_str(),
			PL_line_row);
		}	else {
			STDCOUT
			<< std::endl
			<< "Compiled: OK" << std::endl
			<< "Lines   : "   << PL_line_row << std::endl;
		}
	}

	void exit(int returnCode = 0)
	{
		DEBUGSTR("PL exit")
	}

	int exec()
	{
		DEBUGSTR("PL exec")
		return 0;
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
class PL_dBase: public PL_parser
{
private:
	void init() {
		ast = new PL_ASTList;
	}

public:
	PL_ASTList * ast;

public:
	//-- CONSTRUCTORS DEFINITIONS -----------------------------
	
	//! \since  Version 0.0.1
	//! \author paule32
	//! \see    PL_dBase::PL_dBase(ConsoleApplication&)
	//! \see    PL_dBase::PL_dBase(std::string&)
	//! \see    PL_dBase::PL_dBase(std::string)
	//! \see    PL_dBase::PL_dBase(char&)
	//! \see    PL_dBase::PL_dBase()
	//! \~English
	//! \brief  This is the C++ constructor class for the dBase Parser.
	//! \param  ConsoleApplication& ptr - Pointer to the ConsoleApplication class.
	//! \return internal used Object with Pointer to itself.
	//! \~endEnglish
	//! \~German
	//! \brief  Dies ist der C++ Konstruktor für den dBase Parser.
	//! \param  ConsoleApplication& ptr - Zeiger auf ein zugewiesenes ConsoleApplication Objekt
	//! \return internes Objekt auf diese Klasse.
	//! \~endGerman
	PL_dBase(ConsoleApplication&) {
		DEBUGSTR("ctor: PL_dBase ConsoleApplication")
		init();
	}
	PL_dBase(ConsoleApplication*) {
		DEBUGSTR("ctor: PL_dBase ConsoleApplication")
		init();
	}
	
	//! \since  Version 0.0.1
	//! \author paule32
	//! \see    PL_dBase::PL_dBase(ConsoleApplication&)
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
		DEBUGSTR("ctor: PL_dBase std::string&")
		init();
	}
	
	//! \since  Version 0.0.1
	//! \author paule32
	//! \see    PL_dBase::PL_dBase(ConsoleApplication&)
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
		DEBUGSTR("ctor: PL_dBase std::string")
		init();
	}
	
	//! \since  Version 0.0.1
	//! \author paule32
	//! \see    PL_dBase::PL_dBase(ConsoleApplication&)
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
		DEBUGSTR("ctor: PL_dBase char&")
		init();
	}
	
	//! \since  Version 0.0.1
	//! \author paule32
	//! \see    PL_dBase::PL_dBase(ConsoleApplication&)
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
		DEBUGSTR("ctor: PL_dBase ()")
		init();
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
		delete ast;
		DEBUGSTR("dtor: ~PL_dBase ()")
	}

	//-- FUNCTION DEFINITIONS ---------------------------------
	void PL_parseFile(const ::std::string &filename )
	{
			PL_prepare(filename);
		BEGIN_WHILE
			PL_lookaheadChar =
			PL_getch(); if (!
			
			PL_skip_white_spaces ()) break;
			PL_skip_comment_cpp  ();
			
			//PL_skip_comment_dbase();
		END_WHILE
		STDCOUT
		<< std::endl
		<< "Compiled: OK" << std::endl
		<< "Lines   : "   << PL_line_row << std::endl;
	}
};

// -----------------------------------------------------------------------
//! \class  PL_Pascal
//! \since  Version 0.0.1
//! \author paule32
//! \~English
//! \brief  A class for PL - Pascal Parser Projects.
//! \~endEnglish
//! \~German
//! \brief  Die Parser Klasse, für PL - Pascal Projekte.
//! \~endGerman
// -----------------------------------------------------------------------
class PL_Pascal: public PL_parser
{
	void init() {
		ast    = new PL_ASTList;
	}

public:
	PL_ASTList * ast;

public:
	//-- CONSTRUCTORS DEFINITIONS -----------------------------
	
	//! \since  Version 0.0.1
	//! \author paule32
	//! \see    PL_Pascal::PL_Pascal(std::string&)
	//! \see    PL_Pascal::PL_Pascal(std::string)
	//! \see    PL_Pascal::PL_Pascal(char&)
	//! \see    PL_Pascal::PL_Pascal()
	//! \~English
	//! \brief  This is the C++ constructor class for the Pascal Parser.
	//! \param  ConsoleApplication& ptr - Pointer to the ConsoleApplication class.
	//! \return internal used Object with Pointer to itself.
	//! \~endEnglish
	//! \~German
	//! \brief  Dies ist der C++ Konstruktor für den Pascal Parser.
	//! \param  ConsoleApplication& ptr - Zeiger auf ein zugewiesenes ConsoleApplication Objekt
	//! \return internes Objekt auf diese Klasse.
	//! \~endGerman
	PL_Pascal(ConsoleApplication&) {
		DEBUGSTR("ctor: PL_Pascal ConsoleApplication")
		init();
	}
	PL_Pascal(ConsoleApplication*) {
		DEBUGSTR("ctor: PL_Pascal ConsoleApplication")
		init();
	}
	
	//! \since  Version 0.0.1
	//! \author paule32
	//! \see    PL_Pascal::PL_Pascal(std::string&)
	//! \see    PL_Pascal::PL_Pascal(std::string)
	//! \see    PL_Pascal::PL_Pascal(char&)
	//! \see    PL_Pascal::PL_Pascal()
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
		DEBUGSTR("ctor: PL_Pascal std::string&")
		init();
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
		DEBUGSTR("ctor: PL_Pascal std::string")
		init();
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
		DEBUGSTR("ctor: PL_Pascal char&")
		init();
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
		DEBUGSTR("ctor: PL_Pascal ()")
		init();
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
		DEBUGSTR("dtor: ~PL_Pascal ()")
		delete ast;
	}

	//-- FUNCTION DEFINITIONS ---------------------------------
	void PL_handle_ident()
	{
		::std::transform(
		PL_ident.begin(),
		PL_ident.end(),
		PL_ident.begin(), ::tolower);
		
		PL_ident.erase(0,1);

		if (PL_check_pascal_keyword(PL_ident)) {
			cout << "ident1: " << PL_ident << endl;

			if (PL_ident == "program") {
				PL_ident = "";
				PL_lookaheadChar = PL_handle_pas_white_spaces();
				
				if (PL_lookaheadChar == TOK_IDENT) {
					cout << "--> " << PL_ident << endl;
					PL_ident = "";
				}	else
				if (::std::isalnum(
					PL_lookaheadChar) ||
					PL_lookaheadChar  == '_') {
						
					PL_ident =
					PL_lookaheadChar;
					PL_parse_ident();

					PL_ident.erase(0,1);
					if (PL_check_pascal_keyword(PL_ident)) {
						throw PL_Exception_ParserError(
						locale_str( 77 ).c_str() );
					}
					cout << "program => " << PL_ident << endl;
					
					PL_lookaheadChar = PL_handle_pas_white_spaces();
					if (
					PL_lookaheadChar != ';')
					throw PL_Exception_ParserError(
					locale_str( 78 ).c_str() );
				}	else {
					printf(">>%c<<\n",PL_lookaheadChar);
				}
			}	else
			if (PL_ident == "LIBRARY") {
				PL_ident = ::std::string("");
				PL_handle_pas_white_spaces();
				
			}	else
			if (PL_ident == "unit") {
				PL_ident = "";
				PL_lookaheadChar = PL_handle_pas_white_spaces();
				
				if (::std::isalnum(
					PL_lookaheadChar) ||
					PL_lookaheadChar  == '_') {

					PL_ident =
					PL_lookaheadChar;
					PL_parse_ident();
					
					cout << "ident3: " << PL_ident << endl;
				}	else {
					printf(">>%c<<\n",PL_lookaheadChar);
				}
			}	else
			if (PL_lookaheadChar == TOK_IDENT) {
				cout << "id: " << PL_ident << endl;
			}
		}	else {
			throw PL_Exception_ParserError(
			locale_str( 76 ).c_str(),
			PL_line_row);
		}
	}
	
	void PL_parseFile(const ::std::string &filename )
	{
			PL_prepare(filename);
		BEGIN_WHILE
			PL_handle_pas_white_spaces();

			if (::std::isalnum(
				PL_lookaheadChar) ||
				PL_lookaheadChar  == '_') {
					
				PL_ident =
				PL_lookaheadChar;
				PL_parse_ident();
				
				PL_handle_ident();
				continue;
			}
		END_WHILE
		
		if (PL_nestedComment > 0) {
			throw PL_Exception_ParserError(
			locale_str( 75 ).c_str(),
			PL_line_row);
		}	else {
			STDCOUT
			<< std::endl
			<< "Compiled: OK" << std::endl
			<< "Lines   : "   << PL_line_row << std::endl;
		}
	}
};

class PL_cLang: public PL_parser
{
private:
	void init() {
		ast    = new PL_ASTList;
	}

public:
	PL_ASTList * ast;

public:
	//-- CONSTRUCTORS DEFINITIONS -----------------------------
	
	//! \since  Version 0.0.1
	//! \author paule32
	//! \see    PL_cLang::PL_cLang(std::string&)
	//! \see    PL_cLang::PL_cLang(std::string)
	//! \see    PL_cLang::PL_cLang(char&)
	//! \see    PL_cLang::PL_cLang()
	//! \~English
	//! \brief  This is the C++ constructor class for the C Parser.
	//! \param  ConsoleApplication& ptr - Pointer to the ConsoleApplication class.
	//! \return internal used Object with Pointer to itself.
	//! \~endEnglish
	//! \~German
	//! \brief  Dies ist der C++ Konstruktor für den C Parser.
	//! \param  ConsoleApplication& ptr - Zeiger auf ein zugewiesenes ConsoleApplication Objekt
	//! \return internes Objekt auf diese Klasse.
	//! \~endGerman
	PL_cLang(ConsoleApplication&) {
		DEBUGSTR("ctor: PL_Pascal ConsoleApplication")
		init();
	}
	PL_cLang(ConsoleApplication*) {
		DEBUGSTR("ctor: PL_Pascal ConsoleApplication")
		init();
	}

	PL_cLang(std::string&) {
		DEBUGSTR("ctor: PL_cLang std::string&")
		init();
	}
	PL_cLang(std::string) {
		DEBUGSTR("ctor: PL_cLang std::string")
		init();
	}
	PL_cLang(char&) {
		DEBUGSTR("ctor: PL_cLang char&")
		init();
	}
	PL_cLang(char) {
		DEBUGSTR("ctor: PL_cLang char")
		init();
	}
	PL_cLang() {
		DEBUGSTR("ctor: PL_cLang ()")
		init();
	}
	~PL_cLang() {
		DEBUGSTR("dtor: ~PL_cLang ()")
		delete ast;
	}

	//-- FUNCTION DEFINITIONS ---------------------------------
	void PL_parseFile(const ::std::string &filename )
	{
			PL_prepare(filename);
		BEGIN_WHILE
			PL_lookaheadChar =
			
			PL_getch(); if (!
			PL_skip_white_spaces()) break;
			
			PL_skip_comment_cpp();
			PL_skip_comment_c();
		END_WHILE
		
		STDCOUT
		<< std::endl
		<< "Compiled: OK" << std::endl
		<< "Lines   : "   << PL_line_row << std::endl;
	}
};

// -----------------------------------------------------------------------
//! \class  PL_Pascal
//! \since  Version 0.0.1
//! \author paule32
//! \~English
//! \brief  A class for PL - Pascal Parser Projects.
//! \~endEnglish
//! \~German
//! \brief  Die Parser Klasse, für PL - Pascal Projekte.
//! \~endGerman
// -----------------------------------------------------------------------
class PL_Executable: public PL_parser
{
	void init() {
		ast    = new PL_ASTList;
	}

public:
	PL_ASTList * ast;

public:
	//-- CONSTRUCTORS DEFINITIONS -----------------------------
	
	//! \since  Version 0.0.1
	//! \author paule32
	//! \see    PL_Executable::PL_Executable(std::string&)
	//! \see    PL_Executable::PL_Executable(std::string)
	//! \see    PL_Executable::PL_Executable(char&)
	//! \see    PL_Executable::PL_Executable()
	//! \~English
	//! \brief  This is the C++ constructor class for the Pascal Parser.
	//! \param  ConsoleApplication& ptr - Pointer to the ConsoleApplication class.
	//! \return internal used Object with Pointer to itself.
	//! \~endEnglish
	//! \~German
	//! \brief  Dies ist der C++ Konstruktor für den Pascal Parser.
	//! \param  ConsoleApplication& ptr - Zeiger auf ein zugewiesenes ConsoleApplication Objekt
	//! \return internes Objekt auf diese Klasse.
	//! \~endGerman
	PL_Executable(ConsoleApplication&) {
		DEBUGSTR("ctor: PL_Executable ConsoleApplication")
		init();
	}
	PL_Executable(ConsoleApplication*) {
		DEBUGSTR("ctor: PL_Executable ConsoleApplication")
		init();
	}

	//! \since  Version 0.0.1
	//! \author paule32
	//! \see    PL_Executable::PL_Executable(std::string&)
	//! \see    PL_Executable::PL_Executable(std::string)
	//! \see    PL_Executable::PL_Executable(char&)
	//! \see    PL_Executable::PL_Executable()
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
	PL_Executable(std::string&) {
		DEBUGSTR("ctor: PL_Executable std::string&")
		init();
	}
	
	//! \since  Version 0.0.1
	//! \author paule32
	//! \see    PL_Executable::PL_Executable(std::string&)
	//! \see    PL_Executable::PL_Executable(char&)
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
	PL_Executable(std::string) {
		DEBUGSTR("ctor: PL_Executable std::string")
		init();
	}
	
	//! \since  Version 0.0.1
	//! \author paule32
	//! \see    PL_Executable::PL_Executable(std::string&)
	//! \see    PL_Executable::PL_Executable(std::string)
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
	PL_Executable(char&) {
		DEBUGSTR("ctor: PL_Executable char&")
		init();
	}
	
	//! \since  Version 0.0.1
	//! \author paule32
	//! \see    PL_Executable::PL_Executable(std::string&)
	//! \see    PL_Executable::PL_Executable(std::string)
	//! \see    PL_Executable::PL_Executable(char&)
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
	PL_Executable() {
		DEBUGSTR("ctor: PL_Executable ()")
		init();
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
	~PL_Executable() {
		DEBUGSTR("dtor: ~PL_Executable ()")
		delete ast;
	}
	
	//-- FUNCTION DEFINITIONS ---------------------------------
	void PL_handle_ident()
	{
		::std::transform(
		PL_ident.begin(),
		PL_ident.end(),
		PL_ident.begin(), ::tolower);
	}

	uint16_t
	PL_handle_for_white_spaces()
	{
		uint16_t result = 0;
		BEGIN_WHILE
			PL_lookaheadChar =
			PL_getch();
			
			if (PL_lookaheadChar == 'c') {
				if (PL_line_col < 2) {
					BEGIN_WHILE
					
					END_WHILE
				}
			}
		END_WHILE
		return result;
	}
			
	void PL_parseFile(const ::std::string &filename )
	{
			PL_prepare(filename);
		BEGIN_WHILE
			PL_handle_for_white_spaces();

			if (::std::isalnum(
				PL_lookaheadChar) ||
				PL_lookaheadChar  == '_') {
					
				PL_ident =
				PL_lookaheadChar;
				PL_parse_ident();
				
				PL_handle_ident();
				continue;
			}
		END_WHILE
	}
};

// ----------------------------------------------------------
// Resolve symbol name and source location given the path
// to the executable and an address
// ----------------------------------------------------------
int
addr2line(
	char const * const program_name,
	void const * const addr)
{
	char addr2line_cmd[ 512 ] = {0};

	// ------------------------------------------
	// have addr2line map the address to the
	// relent line in the code
	// ------------------------------------------
	sprintf( addr2line_cmd,
		".\\addr2line.exe -f main -p -e %.256s %p",
		program_name,
		addr);
	::std::cout << addr2line_cmd << ::std::endl;
	// ------------------------------------------
	// This will print a nicely formatted string
	// specifying the function and source line
	// of the address
	// ------------------------------------------
	int res = system( addr2line_cmd );
	::std::cout << res <<
	::std::endl;
	return res;
}

void
windows_print_stacktrace(
	CONTEXT* context)
{	SymInitialize(GetCurrentProcess(), 0, true);

	STACKFRAME frame = { 0 };

	/* setup initial stack frame */
	frame.AddrPC.Offset         = context->Rip;
	frame.AddrPC.Mode           = AddrModeFlat;
	
	frame.AddrStack.Offset      = context->Rsp;
	frame.AddrStack.Mode        = AddrModeFlat;
	
	frame.AddrFrame.Offset      = context->Rbp;
	frame.AddrFrame.Mode        = AddrModeFlat;

	if (!frame.AddrPC.Offset) {
		while (
			StackWalk(IMAGE_FILE_MACHINE_I386 ,
			GetCurrentProcess(),
			GetCurrentThread(),
			&frame,
			context,
			0,
			SymFunctionTableAccess,
			SymGetModuleBase,
			0 ) ) {
			addr2line(
				"prolog64.exe",
				(void*)frame.AddrPC.Offset
			);
		}

		SymCleanup( GetCurrentProcess() );
	}
}

LONG
WINAPI windows_exception_handler(
	EXCEPTION_POINTERS * ExceptionInfo)
{
	::std::stringstream ss;
	ss << locale_str( 73 ).c_str();
	
	switch ( ExceptionInfo->ExceptionRecord->ExceptionCode )
	{
		case EXCEPTION_ACCESS_VIOLATION:
		{
			ss << "EXCEPTION_ACCESS_VIOLATION";
		}
		break;
		case EXCEPTION_ARRAY_BOUNDS_EXCEEDED:
		{
			ss << "EXCEPTION_ARRAY_BOUNDS_EXCEEDED";
		}
		break;
		case EXCEPTION_BREAKPOINT:
		{
			ss << "EXCEPTION_BREAKPOINT";
		}
		break;
		case EXCEPTION_DATATYPE_MISALIGNMENT:
		{
			ss << "EXCEPTION_DATATYPE_MISALIGNMENT";
		}
		break;
		case EXCEPTION_FLT_DENORMAL_OPERAND:
		{
			ss << "EXCEPTION_FLT_DENORMAL_OPERAND";
		}
		break;
		case EXCEPTION_FLT_DIVIDE_BY_ZERO:
		{
			ss << "EXCEPTION_FLT_DIVIDE_BY_ZERO";
		}
		break;
		case EXCEPTION_FLT_INEXACT_RESULT:
		{
			ss << "EXCEPTION_FLT_INEXACT_RESULT";
		}
		break;
		case EXCEPTION_FLT_INVALID_OPERATION:
		{
			ss << "EXCEPTION_FLT_INVALID_OPERATION";
		}
		break;
		case EXCEPTION_FLT_OVERFLOW:
		{
			ss << "EXCEPTION_FLT_OVERFLOW";
		}
		break;
		case EXCEPTION_FLT_STACK_CHECK:
		{
			ss << "EXCEPTION_FLT_STACK_CHECK";
		}
		break;
		case EXCEPTION_FLT_UNDERFLOW:
		{
			ss << "EXCEPTION_FLT_UNDERFLOW";
		}
		break;
		case EXCEPTION_ILLEGAL_INSTRUCTION:
		{
			ss << "EXCEPTION_ILLEGAL_INSTRUCTION";
		}
		break;
		case EXCEPTION_IN_PAGE_ERROR:
		{
			ss << "EXCEPTION_IN_PAGE_ERROR";
		}
		break;
		case EXCEPTION_INT_DIVIDE_BY_ZERO:
		{
			ss << "EXCEPTION_INT_DIVIDE_BY_ZERO";
		}
		break;
		case EXCEPTION_INT_OVERFLOW:
		{
			ss << "EXCEPTION_INT_OVERFLOW";
		}
		break;
		case EXCEPTION_INVALID_DISPOSITION:
		{
			ss << "EXCEPTION_INVALID_DISPOSITION";
		}
		break;
		case EXCEPTION_NONCONTINUABLE_EXCEPTION:
		{
			ss << "EXCEPTION_NONCONTINUABLE_EXCEPTION";
		}
		break;
		case EXCEPTION_PRIV_INSTRUCTION:
		{
			ss << "EXCEPTION_PRIV_INSTRUCTION";
		}
		break;
		case EXCEPTION_SINGLE_STEP:
		{
			ss << "EXCEPTION_SINGLE_STEP";
		}
		break;
		case EXCEPTION_STACK_OVERFLOW:
		{
			ss << "EXCEPTION_STACK_OVERFLOW";
		}
		break;
		default:
		{
			ss << "Unrecognized Exception";
		}
		break;
	}
	::std::cout << ss.str() <<
	::std::endl ;

	// -----------------------------------------------------------
	// If this is a stack overflow then we can't walk the stack,
	// so just show where the error happened ...
	// -----------------------------------------------------------
	if (EXCEPTION_STACK_OVERFLOW !=
		ExceptionInfo  ->
		ExceptionRecord->
		ExceptionCode)  {
		windows_print_stacktrace(ExceptionInfo->ContextRecord);
	}	else {
		addr2line(
			"prolog64.exe",
			(void*)ExceptionInfo->ContextRecord->Rip);
	}
	return EXCEPTION_EXECUTE_HANDLER;
}

void
app_signal_handler(
	int sig ,
	int arg )
{
	::std::stringstream ss;
	
	::std::string s1 = "Caught ";
	::std::string s2 = "Caught SIGFPE: (floating-point: ";
	::std::string s3 = "Caught SIGILL: ";
	::std::string s4 = "Caught SIGFPE: ";

	switch ( sig )
	{
		case SIGSEGV:
			ss << s1;
			ss << "SIGSEGV: Segmentation Fault" << ::std::endl;
		break;
		case SIGINT:
			ss << s1;
			ss << "SIGINT: Interactive attention signal, (usually ctrl+c)" << ::std::endl;
		break;
		case SIGFPE:
			switch ( arg )
			{
				case FPE_INTDIV:
					ss << s2;
					ss << "(integer divide by zero)" << ::std::endl;
				break;
				case FPE_INTOVF:
					ss << s2;
					ss << "(integer overflow)" << ::std::endl;
				break;
				case FPE_FLTDIV:
					ss << s2;
					ss << "divide by zero)" << ::std::endl;
				break;
				case FPE_FLTOVF:
					ss << s2;
					ss << "overflow)" << ::std::endl;
				break;
				case FPE_FLTUND:
					ss << s2;
					ss << "underflow)" << ::std::endl;
				break;
				case FPE_FLTRES:
					ss << s2;
					ss << "inexact result)" << ::std::endl;
				break;
				case FPE_FLTINV:
					ss << s2;
					ss << "invalid operation)" << ::std::endl;
				break;
				case FPE_FLTSUB:
					ss << s4;
					ss << "(subscript out of range)" << ::std::endl;
				break;
				default:
					ss << s4;
					ss << "Arithmetic Exception" << ::std::endl;
				break;
			}
		case SIGILL:
			switch ( arg )
			{
				case ILL_ILLOPC:
					ss << s3;
					ss << "(illegal opcode)" << ::std::endl;
				break;
				case ILL_ILLOPN:
					ss << s3;
					ss << "(illegal operand)" << ::std::endl;
				break;
				case ILL_ILLADR:
					ss << s3;
					ss << "(illegal addressing mode)" << ::std::endl;
				break;
				case ILL_ILLTRP:
					ss << s3;
					ss << "(illegal trap)" << ::std::endl;
				break;
				case ILL_PRVOPC:
					ss << s3;
					ss << "(privileged opcode)" << ::std::endl;
				break;
				case ILL_PRVREG:
					ss << s3;
					ss << "(privileged register)" << ::std::endl;
				break;
				case ILL_COPROC:
					ss << s3;
					ss << "(coprocessor error)" << ::std::endl;
				break;
				case ILL_BADSTK:
					ss << s3;
					ss << "(internal stack error)" << ::std::endl;
				break;
				default:
					ss << s3;
					ss << "Illegal Instruction" << ::std::endl;
				break;
			}
		break;
		case SIGTERM:
			ss << s1;
			ss << "SIGTERM: a termination request was sent to the program" << ::std::endl;
		break;
		case SIGABRT:
			ss << s1;
			ss << "SIGABRT: usually caused by an abort() or assert()" << ::std::endl;
		break;
		default:
		break;
	}

	throw PL_Exception_Application( ss.str() );

	//::std::cout << ss.str() <<
	//::std::endl ;
}

// ---------------------------------------------------------------------
// signal handler registration's ...
// ---------------------------------------------------------------------
void sig_handler_1( int arg ) { app_signal_handler( SIGSEGV, arg ); }
void sig_handler_2( int arg ) { app_signal_handler( SIGFPE , arg ); }
void sig_handler_3( int arg ) { app_signal_handler( SIGINT , arg ); }

void sig_handler_4( int arg ) { app_signal_handler( SIGILL , arg ); }
void sig_handler_5( int arg ) {	app_signal_handler( SIGTERM, arg ); }
void sig_handler_6( int arg ) {	app_signal_handler( SIGABRT, arg ); }

void set_signal_handler()
{
	signal(SIGSEGV, &sig_handler_1);
	signal(SIGFPE,  &sig_handler_2);
	signal(SIGINT,  &sig_handler_3);
	signal(SIGILL,  &sig_handler_4);
	signal(SIGTERM, &sig_handler_5);
	signal(SIGABRT, &sig_handler_6);
}


void set_signal_handler(prolog::ConsoleApplication * a) {
	_app = a;
	set_signal_handler();
	SetUnhandledExceptionFilter( windows_exception_handler );
}

// ---------------------------------------------------------------------
// tui app - text user interface ConsoleApplication ...
// ---------------------------------------------------------------------
void
init_con_app(
	::std::vector< ::std::string > argv,
	::std::string item,
	int flag)
{
	auto * app = new ConsoleApplication( argv );
	start_label:
	try {
		if (flag == 2) {
			PL_globalHolder.PL_language = app_lang;
			PL_Executable prg ( app );
			//prg.PL_parseFile ( item );
			app->run();
			return;
		}
		// --- test signal ---
		static int flg = 0;
		if (flg == 0) {
			flg += 1;
			set_signal_handler( app );
			//raise(SIGILL);
		}
		// --- test end ---
		while (true) {
			if (app == nullptr)
			break;

			switch (flag) {
				case 1: {
					PL_globalHolder.PL_language = app_lang;
					app->run();
				}
				break;
				case 2: { PL_Executable prg ( app ); prg.PL_parseFile ( item ); } break;
				case 3: { PL_Assembler  prg ( app ); prg.PL_parseFile ( item ); } break;
				case 4: { PL_Fortran    prg ( app ); prg.PL_parseFile ( item ); } break;
				case 5: { PL_Prolog     prg ( app ); prg.PL_parseFile ( item ); } break;
				case 6: { PL_Pascal     prg ( app ); prg.PL_parseFile ( item ); } break;
				case 7: { PL_cLang      prg ( app ); prg.PL_parseFile ( item ); } break;
				case 8: { PL_dBase      prg ( app ); prg.PL_parseFile ( item );	} break;
			}
		}
	}
	catch (PL_Exception_Application& e) {
		::std::stringstream txt;
		txt << locale_str( 73 ).c_str()
			<< ::std::endl << e.what ()
			<< ::std::endl
			<< ::std::endl
			<< locale_str( 15 ).c_str();

		if (app != nullptr) {
			if (app->MessageBoxRect(
				TRect(10,7,60,19),
				txt.str().c_str(),
				mfError | mfYesButton | mfNoButton ) == 12) {
				delete app;
				exit( 1  );
			}
		}	else {
			throw PL_Exception_Application(
			locale_str( 102 ).c_str() );
		}
	}
	catch (PL_Exception_Windows& e)
	{
		::std::stringstream txt;
		txt << locale_str( 84 ).c_str()
			<< ::std::endl
			<< ::std::endl
			<< e.what();
			
		if (app->MessageBoxRect(
			TRect(10,7,60,19),
			txt.str().c_str(),
			mfError | mfOKButton ) == 12)
		goto start_label;
	}
	catch (PL_Exception_DataBaseWarning& e)
	{
		app->MessageBoxRect(
			TRect(10,7,60,19),
			e.what(),
			mfError | mfOKButton );
		goto start_label;
	}
	catch (PL_Exception_DataBase& e)
	{
		::std::stringstream txt;
		txt << locale_str( 85 ).c_str()
			<< ::std::endl
			<< ::std::endl
			<< e.what();
			
		if (app->MessageBoxRect(
			TRect(10,7,60,19),
			txt.str().c_str(),
			mfError | mfOKButton ) == 12)
		goto start_label;
	}
	catch (...) {
		::std::stringstream txt;
		txt << locale_str( 73 ).c_str() << ::std::endl
			<< locale_str( 74 ).c_str()
			<< ::std::endl
			<< locale_str( 15 );

		if (app->MessageBoxRect(
			TRect(10,7,60,19),
			txt.str().c_str(),
			mfError | mfYesButton | mfNoButton ) == 12)
		delete app;
		goto start_label;
	}
}

inline ::std::string
PL_STREAM_FILE() {
	return ::std::string("test.out");
}

// window classes:
class DOS;
class MDI;

template <typename T1>
class IO_Stream {
	static_assert(
		::std::is_base_of< ::std::ofstream, T1>::value ||
		::std::is_base_of< ::std::wfstream, T1>::value ||
		PL_ASSERT_APPLICATION_STREAMER_IO);
public:
	IO_Stream( ::std::string file_name )
	{
		const std::type_info& t2 = typeid( ::std::ofstream );
		const std::type_info& t3 = typeid( ::std::wfstream );
		
		stream_file.clear( stream_file.failbit );
		stream_file.clear( stream_file.badbit  );

		// ansi
		if ( typeid( T1 ) == t2 ) {
			::std::stringstream ss;
			stream_file.open(
				PL_STREAM_FILE(),
				::std::fstream::out |
				::std::fstream::in  |
				::std::fstream::app
			);
			if (stream_file.failbit == true)
			ss << "A logical error on i/o operation"; else

			if (stream_file.badbit == true)
			ss << "A read error on i/o operation.";
		}
		
		// wide
		else if ( typeid( T1 ) == t3 ) {
			::std::wstringstream ss;
			stream_file.open(
				PL_STREAM_FILE(),
				::std::wfstream::out |
				::std::wfstream::in  |
				::std::wfstream::app
			);
			if (stream_file.failbit == true)
			ss << "W logical error on i/o operation"; else

			if (stream_file.badbit == true)
			ss << "W read error on i/o operation.";
		}
	}
	~IO_Stream()
	{
		::std::cout << "close stream file ..." <<
		::std::endl;
		
		stream_file.close();
	}
private:
	T1 stream_file;
};

// server classes:
class FTP;

class FTP {
public:
	FTP(int) {
	}
	FTP(void) {
	}
private:
};

template <typename T1>
class Client {
	static_assert(
	::std::is_base_of< FTP, T1>::value ||
	PL_ASSERT_APPLICATION_WINDOWS);
public:
	Client(void)
	{
		::std::cout << "Client" <<
		::std::endl;
	}
private:
};

template <typename T1>
class Server {
	static_assert(
	::std::is_base_of< FTP, T1>::value ||
	PL_ASSERT_APPLICATION_WINDOWS);
public:
	Server(int)
	{
		::std::cout << "Server Windows Template" <<
		::std::endl;
	}
	Server( void )
	{
		::std::cout << "Server" <<
		::std::endl;
	}
private:
	T1 * server_type;
};

class Menu
{
public:
	Menu() { }
	~Menu() {
		items.clear();
	}
	
	void operator << ( ::std::string s ) { add( s ); }

	void add( ::std::string s ) { items.push_back( s ); }
	int getCount() const { return items.size(); }

	::std::vector< ::std::string > items;
};

class WindowGlobals {
public:
	WindowGlobals( void )
	{
		::std::cout << "win globals" << ::std::endl;
	}
	
	static void
	RePaintWindow(
		HWND   _hwnd,
		WPARAM wParam,
		LPARAM lParam)
	{
		HDC hdc = GetDCEx(_hwnd, 0, DCX_WINDOW|DCX_USESTYLE);
		if (hdc) {
			RECT  rcclient;
			RECT  rcwin;
			
			POINT ptupleft;
			
			GetClientRect( _hwnd, &rcclient );
			GetWindowRect( _hwnd, &rcwin );
			
			ptupleft.x = rcwin.left;
			ptupleft.y = rcwin.top;

			MapWindowPoints(0, _hwnd, (LPPOINT) &rcwin, (sizeof(RECT)/sizeof(POINT)));
			
			OffsetRect( &rcclient, -rcwin.left, -rcwin.top);
			OffsetRect( &rcwin,    -rcwin.left, -rcwin.top);
			
			HRGN rgntemp = NULL;
			
			if (wParam == NULLREGION || wParam == ERROR ) {
				ExcludeClipRect(
					hdc,
					rcclient.left,
					rcclient.top,
					rcclient.right,
					rcclient.bottom
				);
			}
			else {
				rgntemp = CreateRectRgn(
				rcclient.left   + ptupleft.x,
				rcclient.top    + ptupleft.y,
				rcclient.right  + ptupleft.x,
				rcclient.bottom + ptupleft.y);
					
				if (CombineRgn(rgntemp, (HRGN) wParam, rgntemp, RGN_DIFF) == NULLREGION) {
					// nothing to paint
				}
				
				OffsetRgn(rgntemp, -ptupleft.x, -ptupleft.y);
				ExtSelectClipRgn(hdc, rgntemp, RGN_AND);
			}

			HBRUSH borderBrush = CreateSolidBrush(RGB(255,   0,   0));
			HBRUSH menuBrush   = CreateSolidBrush(RGB(  0,   0, 200));
			
			FillRect(hdc, &rcwin, borderBrush);
			
			rcclient.top    = 37;
			rcclient.bottom = 62;
			FillRect(hdc, &rcclient, menuBrush);
			
			DeleteObject( menuBrush   );
			DeleteObject( borderBrush );
			
			ReleaseDC(_hwnd, hdc);
			
			if (rgntemp != 0) {
				DeleteObject(rgntemp);
			}
		}
	}
	
	static LRESULT CALLBACK
	windowProc(
		HWND   _hwnd,
		UINT   _msg,
		WPARAM wParam,
		LPARAM lParam)
	{
		HBITMAP hBitmap;
		HDC     hdcMem;
		HBITMAP bimp;
		HDC     hdc;
		HBRUSH  menuBrush;
		HBRUSH  clientBrush;

		switch (_msg)
		{
			case WM_CREATE:
			{
				// remove border icons (close, max/min)
				SetWindowLong(_hwnd, GWL_STYLE,
				GetWindowLong(_hwnd, GWL_STYLE) & (0xFFFFFFFF ^ WS_SYSMENU));
				
				hdcMem = CreateCompatibleDC(hdc);
				
				clientBrush = CreateSolidBrush( RGB( 0, 100, 255 ) );
			}
			break;
			case WM_PAINT:
			{
				PAINTSTRUCT ps;
				RECT rect;
				
				hdc = GetDC( _hwnd );
				
				HFONT  hFont = CreateFont(
					-MulDiv(11, GetDeviceCaps(hdc, LOGPIXELSY), 72),
					0,0,0,
					FW_BOLD,	// font weight
					FALSE,		// italic ?
					FALSE,		// underline ?
					FALSE,		// strike-out ?
					ANSI_CHARSET, 
					OUT_TT_PRECIS,
					CLIP_DEFAULT_PRECIS,
					DEFAULT_QUALITY, 
					FF_SWISS,
					TEXT("Arial")
				);
				
				hdc = BeginPaint  ( _hwnd, &ps   );
					// menu bar
					if (menu_ptr != nullptr)
					{
						GetClientRect ( _hwnd, &rect );
						
						rect.top = 0;
						rect.left = 0;
						rect.bottom = 34;
						
						menuBrush  = CreateSolidBrush( RGB( 0,  10, 200 ) );
						FillRect(hdc, &rect, menuBrush);
						//
						SelectFont  ( hdc, hFont);
						SetBkColor  ( hdc, RGB(0, 10,255));
						SetTextColor( hdc, RGB(0,255,255));
						
						SIZE strSize;
						int  xp = 14;
						int  yp =  5;
						for (auto &item: menu_ptr->items)
						{
							TextOutA( hdc, xp,yp, item.c_str(), item.size());
							GetTextExtentPoint32A(
								hdc,
								item.c_str(),
								item.size(),
								&strSize
							);
							xp += strSize.cx + 14;
						}
					}
					DeleteObject( menuBrush   );

				EndPaint(_hwnd, &ps);

				DeleteObject( hFont       );
			}
			break;
			case WM_SHOWWINDOW:
			case WM_MOUSEACTIVATE:
			case WM_LBUTTONDOWN:
			case WM_ACTIVATE:
			{
				RECT  rcwin;
				POINT ptupleft;

				GetWindowRect(_hwnd, &rcwin);
				MapWindowPoints(0, _hwnd, (LPPOINT) &rcwin, (sizeof(RECT)/sizeof(POINT)));
				OffsetRect( &rcwin, -rcwin.left, -rcwin.top);
				
				SetWindowPos( _hwnd,0,
					rcwin.left , rcwin.top,
					rcwin.right, rcwin.bottom,
					SWP_DRAWFRAME    |
					SWP_FRAMECHANGED |
					SWP_NOMOVE       | SWP_NOREPOSITION );
					
				SendMessage(_hwnd, WM_PAINT,      0,0);
				SendMessage(_hwnd, WM_ERASEBKGND, 0,0);
				
				return 0;
			}
			break;
			case WM_NCPAINT:
			{
				RePaintWindow(_hwnd, wParam, lParam);

				RECT    rcwin;
				HDC hdc = GetDCEx(   _hwnd, 0, DCX_WINDOW|DCX_USESTYLE);
				GetWindowRect    (   _hwnd, &rcwin );
				MapWindowPoints  (0, _hwnd,
					(LPPOINT)&rcwin,
					(sizeof(RECT)  /
					 sizeof(POINT)));
				{
					RECT    temp; 
					int    r,g,b;
					
					int r1 = 255, g1 =   0, b1 = 0;
					int r2 = 255, g2 = 255, b2 = 0;

					// title bar gradient:
					hdcMem = CreateCompatibleDC(hdc);
					bimp   = CreateCompatibleBitmap(hdc,rcwin.right,32);
					
					for (int i = 0; i < rcwin.right; i++)
					{
						r = r1 + (i * (r2-r1) / rcwin.right);
						g = g1 + (i * (g2-g1) / rcwin.right);
						b = b1 + (i * (b2-b1) / rcwin.right);

						temp.left    = i;
						temp.top     = 1; 
						temp.right   = i + 1;
						temp.bottom  = 32;
						
						HBRUSH color = CreateSolidBrush(RGB(r, g, b));
						SelectObject( hdcMem, bimp);
						FillRect    ( hdcMem, &temp, color);
						DeleteBrush ( color );
					}
				}
				
				// window title
				if (window_title.size() > 0)
				{
					HFONT   hFont = CreateFont(
						-MulDiv(11, GetDeviceCaps(hdc, LOGPIXELSY), 72),
						0,0,0,
						FW_BOLD,	// font weight
						FALSE,		// italic ?
						FALSE,		// underline ?
						FALSE,		// strike-out ?
						ANSI_CHARSET, 
						OUT_TT_PRECIS,
						CLIP_DEFAULT_PRECIS,
						DEFAULT_QUALITY, 
						FF_SWISS,
						TEXT("Arial")
					);
					
					SelectFont  ( hdcMem, hFont);
					SetBkMode   ( hdcMem, TRANSPARENT );
					SetTextColor( hdcMem, RGB(255,255,255));
					TextOutA( hdcMem, 15,9,
						window_title.c_str(),
						window_title.size());
					
					SetBkMode   ( hdcMem, TRANSPARENT );
					SetTextColor( hdcMem, RGB(0,0,0));
					TextOutA( hdcMem, 14,8,
						window_title.c_str(),
						window_title.size());
					
					DeleteObject(hFont);
				}
				
				BitBlt(hdc,0,0,	rcwin.right,32, hdcMem, 0, 0, SRCCOPY);
					
				DeleteBitmap( bimp );
				DeleteDC    ( hdcMem );
				
				// close button
				HBITMAP arrow = (HBITMAP) LoadImageA(
					GetModuleHandle(NULL),
					MAKEINTRESOURCE(IDBMP_CLOSE),
					IMAGE_BITMAP,
					32,32,
					LR_SHARED 
				);
				HDC hdcMem = CreateCompatibleDC(hdc);
				SelectObject(hdcMem, arrow);
				BitBlt(hdc, rcwin.right-32, 1, 32, 32, hdcMem, 0, 0, SRCCOPY);
				
				DeleteDC(hdcMem);
				return 0;
			}
			break;
			case WM_NCMOUSEMOVE:
			{
				int xPos = GET_X_LPARAM(lParam);
				int yPos = GET_Y_LPARAM(lParam);
				
				RECT  rcwin   ;
				POINT ptupleft;

				HDC hdc = GetDCEx( _hwnd, 0, DCX_WINDOW|DCX_USESTYLE);
				GetWindowRect    ( _hwnd, &rcwin );
				
				ptupleft.x = rcwin.left;
				ptupleft.y = rcwin.top;

				MapWindowPoints(0, _hwnd, (LPPOINT) &rcwin, (sizeof(RECT)/sizeof(POINT)));
				OffsetRect( &rcwin, -rcwin.left, -rcwin.top );
				
				int ypos = yPos - ptupleft.y;
				int xpos = xPos - ptupleft.x;
				
				// close button
				if (((ypos >= 10)               && (ypos <= 30))
				&&  ((xpos >= rcwin.right - 40) && (xpos <= rcwin.right-10)))
				{
					HBITMAP arrow = (HBITMAP) LoadImageA(
						GetModuleHandle(NULL),
						MAKEINTRESOURCE(IDBMP_OPEN),
						IMAGE_BITMAP,
						32,32,
						LR_SHARED 
					);
					HDC hdcMem = CreateCompatibleDC(hdc);
					SelectObject(hdcMem, arrow);
					BitBlt(hdc, rcwin.right-43, 1, 32, 32, hdcMem, 0, 0, SRCCOPY);
					DeleteDC(hdcMem);
				}
				else {
					HBITMAP arrow = (HBITMAP) LoadImageA(
						GetModuleHandle(NULL),
						MAKEINTRESOURCE(IDBMP_CLOSE),
						IMAGE_BITMAP,
						32,32,
						LR_SHARED 
					);
					HDC hdcMem = CreateCompatibleDC(hdc);
					SelectObject(hdcMem, arrow);
					BitBlt(hdc, rcwin.right-43, 1, 32, 32, hdcMem, 0, 0, SRCCOPY);
					DeleteDC(hdcMem);
				}
			}
			break;
			case WM_NCLBUTTONDOWN:
			{
				int xPos = GET_X_LPARAM(lParam);
				int yPos = GET_Y_LPARAM(lParam);
				
				RECT  rcwin   ;
				POINT ptupleft;

				HDC hdc = GetDCEx( _hwnd, 0, DCX_WINDOW|DCX_USESTYLE);
				GetWindowRect    ( _hwnd, &rcwin );
				
				ptupleft.x = rcwin.left;
				ptupleft.y = rcwin.top;

				MapWindowPoints(0, _hwnd, (LPPOINT) &rcwin, (sizeof(RECT)/sizeof(POINT)));
				OffsetRect( &rcwin, -rcwin.left, -rcwin.top );
				
				int ypos = yPos - ptupleft.y;
				int xpos = xPos - ptupleft.x;
				
				// close button
				if (((ypos >= 10)               && (ypos <= 30))
				&&  ((xpos >= rcwin.right - 40) && (xpos <= rcwin.right-10)))
				{
					SendMessage( getWindowHandle(), WM_DESTROY, 0,0);
					return 0;
				}
				else {
					return DefWindowProc(_hwnd, _msg, wParam, lParam);
				}
			}
			break;
			case WM_MOVE:
			{
				SendMessage( _hwnd, WM_NCPAINT, 0,0);
			}
			break;
			case WM_SIZE:
			{
				RePaintWindow(_hwnd, wParam, lParam);
			}
			break;
	        case WM_CLOSE:
			{
				DestroyWindow( _hwnd );
			}
			break;
			case WM_DESTROY:
			{
				DeleteObject( clientBrush );
				
				PostQuitMessage(0);
			}
			break;

			default:
			return DefWindowProc(_hwnd, _msg, wParam, lParam);
		}
		return 0;
	}
	
	void add_menu( Menu& m )
	{
		menu_ptr = &m;
	}
	
	static void setTitle( ::std::string s) { window_title = s; }

	static HWND getWindowHandle() { return hwnd; }

	static WNDCLASSEX wc;
	static HWND       hwnd;
	static MSG        msg;
	static HMODULE    hinstance;
	
	static Menu *     menu_ptr;
	
	static ::std::string window_title;
};

WNDCLASSEX WindowGlobals::wc;
MSG        WindowGlobals::msg;
HWND       WindowGlobals::hwnd = 0;

HMODULE    WindowGlobals::hinstance;
Menu *     WindowGlobals::menu_ptr = nullptr;

::std::string WindowGlobals::window_title = "";

class RegisterWindow {
public:
	RegisterWindow( void ) {
		RegisterWindow( ::std::string("tool") );
	}
	
	RegisterWindow( ::std::string class_name )
	{
		::std::stringstream win_type;
		win_type << "RegisterWindow_" << ++intWinGlobals;
		
		InitCommonControls();
		
		// windows application ...
		{
			wg                    = new WindowGlobals;
			wg->hinstance         = GetModuleHandle(NULL);
					
			wg->wc.cbSize         = sizeof(WNDCLASSEX);
			wg->wc.style          = CS_HREDRAW | CS_VREDRAW;
			wg->wc.lpfnWndProc    = wg->windowProc;
			wg->wc.cbClsExtra     = 0;
			wg->wc.cbWndExtra     = 0;
			wg->wc.hInstance      = wg->hinstance;
			wg->wc.hIcon          = LoadIcon  ( NULL, IDI_APPLICATION);
			wg->wc.hCursor        = LoadCursor( NULL, IDC_ARROW);
			wg->wc.hbrBackground  = (HBRUSH)CreateSolidBrush(RGB( 0, 100, 255));
			wg->wc.lpszMenuName   = NULL;
			wg->wc.lpszClassName  = class_name.c_str();
			wg->wc.hIconSm        = LoadIcon(NULL, IDI_APPLICATION);

			if (!::RegisterClassEx(&wg->wc))
				throw PL_Exception_Application(
				"Window Registration Failed!" );
				
			wg->hwnd = CreateWindowEx(
				WS_EX_CLIENTEDGE,
				class_name.c_str(),
				"dBase4Windows (c) 2023 Jens Kallup",
				WS_OVERLAPPEDWINDOW | WS_VISIBLE,
				CW_USEDEFAULT, CW_USEDEFAULT, 800, 600,
				nullptr, nullptr, wg->hinstance,
				nullptr);
			if (wg->hwnd == nullptr)
			{
				MessageBox(nullptr, "Window Creation Failed!", "Error!",
				MB_ICONEXCLAMATION | MB_OK);

				throw PL_Exception_Application(
				"Window Creation Failed!");
			}
		}
	}
	~RegisterWindow()
	{
		delete wg;
	}
	void add( Menu& m) { getWinGlobals()->add_menu( m ); }
	void setTitle( ::std::string s) {
		getWinGlobals()->setTitle( s );
		SetWindowTextA(
			getWinGlobals()->
			getWindowHandle(),
			s.c_str()
		);
	}
	int  run()
	{
		int result = 0;
		while(GetMessage(&getWinGlobals()->msg, nullptr, 0, 0) > 0) {
			TranslateMessage( &getWinGlobals()->msg );
			DispatchMessage ( &getWinGlobals()->msg );
		}
		result = getWinGlobals()->msg.wParam;
		return result;
	}
	WindowGlobals * getWinGlobals(void) const { return wg; }
	void            setWinGlobals(WindowGlobals * w) { this->wg = w; }
	void            setWinGlobals(void) { wg = new WindowGlobals; }

	static int      intWinGlobals;
private:
	WindowGlobals * wg;
};
int RegisterWindow::intWinGlobals = 0;

static HWND
CreateButton(
	HWND parentw,
	int x, int y,
	int w, int h, int id, ::std::string bt)
{
	HWND  buttonHWND;
	HMENU btnId = reinterpret_cast<HMENU>(id);
	
	if ((buttonHWND = CreateWindow(
		"button",
		bt.c_str(),
		WS_VISIBLE | WS_CHILD | WS_TABSTOP,
		x, y, w, h,  parentw, btnId,
		(HINSTANCE)GetWindowLongPtr(parentw, GWLP_HINSTANCE),
		nullptr)) == nullptr) {

		MessageBox(nullptr, "Window Creation Failed!", "Error!",
		MB_ICONEXCLAMATION | MB_OK);

		throw PL_Exception_Application(
		"Window Creation Failed!");
	}
	return buttonHWND;
}

static void
CallUserApplication(
	HWND hwndParent,
	int  lang,
	int  bthID,
	::std::function<void(Normal *, int)> func)
{
	app_lang = lang;
	ApplicationFuncExePtr = func;
	SendMessage( hwndParent, WM_CLOSE, 0,0 );
}

static LRESULT CALLBACK
chooseProc(
	HWND   hwndParent,
	UINT   msg,
	WPARAM wParam,
	LPARAM lParam)
{
	// intro button id
	# define BTNID_ENG_TUI 2001
	# define BTNID_ENG_GUI 2002
	# define BTNID_DEU_TUI 2003
	# define BTNID_DEU_GUI 2004
	
	switch (msg)
	{
		case WM_CREATE:
		{
			CreateButton(hwndParent, 20, 20, 420,50, BTNID_ENG_TUI, "English Text-User-Interface");
			CreateButton(hwndParent, 20, 80, 420,50, BTNID_ENG_GUI, "English Graphical-User-Interface");
			CreateButton(hwndParent, 20,160, 420,50, BTNID_DEU_TUI, "Deutsch textual-Oberfläche");
			CreateButton(hwndParent, 20,220, 420,50, BTNID_DEU_GUI, "Deutsch graphische-Oberfläche");
		}
		break;
		case WM_COMMAND:
		{
			int btnID = LOWORD(wParam);
			switch (btnID)
			{
				case BTNID_ENG_TUI: CallUserApplication(hwndParent, ENGLISH, btnID, ApplicationFuncTUI); break;
				case BTNID_ENG_GUI: CallUserApplication(hwndParent, ENGLISH, btnID, ApplicationFuncGUI); break;
				//
				case BTNID_DEU_TUI: CallUserApplication(hwndParent, GERMAN , btnID, ApplicationFuncTUI); break;
				case BTNID_DEU_GUI: CallUserApplication(hwndParent, GERMAN , btnID, ApplicationFuncGUI); break;
			}
		}
		break;
		case WM_CLOSE:	{
			DestroyWindow( hwndParent );
		}
		break;
		case WM_DESTROY: {
			PostQuitMessage(0);
		}
		break;
		default:
		return DefWindowProc(hwndParent, msg, wParam, lParam);
	}	return 0;
}

class Normal {
public:
	Normal( void )
	{
		::std::cout << "Normal" <<
		::std::endl ;
		
		InitCommonControls();
		
		// choose application type ...
		{
			WNDCLASSEX _wc;
			HWND       _hwnd;
			MSG        _msg;
					
			_wc.cbSize         = sizeof(WNDCLASSEX);
			_wc.style          = CS_HREDRAW | CS_VREDRAW;
			_wc.lpfnWndProc    = chooseProc;
			_wc.cbClsExtra     = 0;
			_wc.cbWndExtra     = 0;
			_wc.hInstance      = GetModuleHandle(  NULL );
			_wc.hIcon          = LoadIcon  ( NULL, IDI_APPLICATION);
			_wc.hCursor        = LoadCursor( NULL, IDC_ARROW);
			_wc.hbrBackground  = (HBRUSH)CreateSolidBrush(RGB( 0, 100, 255));
			_wc.lpszMenuName   = NULL;
			_wc.lpszClassName  = "towindow";
			_wc.hIconSm        = LoadIcon(NULL, IDI_APPLICATION);

			if (!::RegisterClassEx(&_wc))
				throw PL_Exception_Application(
				"jjjWindow Registration Failed!" );
				
			_hwnd = CreateWindowEx(
				WS_EX_CLIENTEDGE,
				"towindow",
				"dBase4Windows (c) 2023 Jens Kallup",
				WS_OVERLAPPEDWINDOW | WS_VISIBLE,
				CW_USEDEFAULT, CW_USEDEFAULT, 480, 350,
				nullptr, nullptr, GetModuleHandle( NULL ),
				nullptr);
			if (_hwnd == nullptr)
			{
				MessageBox(nullptr, "hhhhhWindow Creation Failed!", "Error!",
				MB_ICONEXCLAMATION | MB_OK);

				throw PL_Exception_Application(
				"aaaaWindow Creation Failed!");
			}
			ShowWindow(_hwnd, SW_SHOWNORMAL);
			while(GetMessage(&_msg, nullptr, 0, 0) > 0) {
				TranslateMessage( &_msg );
				DispatchMessage ( &_msg );
			}
			
			// -----------------------------------
			// depend on button id-click, start
			// ptr function/gui or tui ...
			// -----------------------------------
			ApplicationFuncExePtr(this, app_lang);
		}
	}
	~Normal()
	{
		delete regwin;
	}

	void add( Menu& m)              { regwin->add( m );    }
	void setMenu ( Menu& m)         { regwin->add( m );    }
	void setTitle( ::std::string s) { regwin->setTitle(s); }
	
	int  run() { return regwin->run(); }
	RegisterWindow * regwin;
};

class MDI: public RegisterWindow {
public:
	MDI( void )
	{
		::std::cout << "MDI" <<
		::std::endl ;
		
		::std::stringstream win_type;
		win_type << "RegisterWindow_" << ++intWinGlobals;
		
		RegisterWindow( win_type.str().c_str() );
	}
private:
};

template <typename T1>
class Desktop {
	static_assert(
		::std::is_base_of< Normal, T1>::value ||
		::std::is_base_of< MDI   , T1>::value ||
		PL_ASSERT_APPLICATION_WINDOWS);
public:
	Desktop(int)
	{
		::std::cout << "Desktop Windows Template" <<
		::std::endl;
	}
	Desktop( void )
	{
		::std::cout << "Desktop" <<
		::std::endl;
		
		window_type = new T1();
	}
	~Desktop()
	{
		delete window_type;
	}
	void add( Menu& m)              {        window_type->add( m );    }
	void setMenu ( Menu& m )        {        window_type->add( m );    }
	void setTitle( ::std::string s) {        window_type->setTitle(s); }
	
	int  run()                      { return window_type->run();       }
private:
	T1 * window_type;
};

template <typename T1>
class Windows {
	static_assert(
		::std::is_base_of< Desktop< Normal >, T1>::value ||
		::std::is_base_of< Desktop< MDI    >, T1>::value ||

		::std::is_base_of< Client < FTP    >, T1>::value ||
		::std::is_base_of< Server < FTP    >, T1>::value ,
		PL_ASSERT_APPLICATION_WINDOWS);
public:
	Windows( int )
	{
		::std::cout << "Windows Template" << ::std::endl;
	}
	Windows( void )
	{
		app_type = new T1();
	}
	~Windows()
	{
		::std::cout << "dtor Windows" << ::std::endl;
		delete app_type;
	}
	void add( Menu& m)              { app_type->add( m );    }
	void setMenu ( Menu& m)         { app_type->add(m);      }
	void setTitle( ::std::string s) { app_type->setTitle(s); }
	
	int  run() { return app_type->run();  }
private:
	T1 * app_type;
};

class DOS {
public:
	DOS( int )
	{
		::std::cout << "DOS Template" << ::std::endl;
		fflush(stdout);
	}
	DOS( void )
	{
		::std::cout << "DOS" << ::std::endl;
		fflush(stdout);
	}
};

class English {
public:
private:
};

class German {
public:
private:
};

template <typename T1>
class Ascii: public T1 {
	static_assert(
		(::std::is_base_of< English, T1 >::value == false) ||
		(::std::is_base_of< German , T1 >::value == false),
		PL_ASSERT_APPLICATION_ASCII);
public:
private:
};

template <typename T1>
class Wide: public T1 {
	static_assert(
		(::std::is_base_of< English, T1 >::value == false) ||
		(::std::is_base_of< German , T1 >::value == false),
		PL_ASSERT_APPLICATION_ASCII);
public:
private:
};

template <typename T1, typename T2>
class Application : public T1 {
	static_assert(
		(::std::is_base_of< Windows< Desktop< Normal >>, T2 >::value == false) ||
		(::std::is_base_of< Windows< Desktop< MDI    >>, T2 >::value == false) ||
		
		(::std::is_base_of< Windows< Client < FTP    >>, T2 >::value == false) ||
		(::std::is_base_of< Windows< Server < FTP    >>, T2 >::value == false) ||
		
		(::std::is_base_of< Ascii< English >, T1 >::value == false) ||
		(::std::is_base_of< Ascii< German  >, T1 >::value == false) ||
		
		(::std::is_base_of< Wide < English >, T1 >::value == false) ||
		(::std::is_base_of< Wide < German  >, T1 >::value == false) ||
		
		(::std::is_base_of< DOS, T2 >::value == false),
		PL_ASSERT_APPLICATION);
public:
	Application( int argc, ::std::vector< ::std::string > argv )
	{
		::std::cout << "Application Template: " <<
		::std::endl << "argc: " << argc <<
		::std::endl << "argv: " <<
		::std::endl ;
		
		sub_system = new T2();
	//	out_stream.open( 
	}
	Application(void)
	{
		::std::cout << "Application" << ::std::endl;
	}
	bool operator << ( ::std::string s ) {
		//out_stream << s;
		return true;
	}
	~Application()
	{
		::std::cout << "dtor Application" << ::std::endl;
		delete sub_system;
	}
	void add( Menu& m )              { sub_system->add( m );    }
	void setTitle( ::std::string s ) { sub_system->setTitle(s); }

	int run(void)
	{
		int result = 0;
		result = sub_system->run();

		return result;
	}
private:
	T2 * sub_system;
};


::std::vector< ::std::string > argv_vec;

void ApplicationFuncTUI(Normal *ptr, int lang)
{
	::std::cout << "starting tui... " << lang << ::std::endl;
	delete ptr;
	init_con_app( argv_vec, "dbase.prg", 2 );
	exit(1);
}

void ApplicationFuncGUI(Normal *ptr, int lang)
{
	::std::cout << "starting gui..." << lang << ::std::endl;
	ptr->regwin = new RegisterWindow();
	delete ptr;
}

}	// namespace: prolog

// ---------------------------------------------------------------------
// test case entry point ...
// ---------------------------------------------------------------------
BOOL WINAPI
WinMain(
	HINSTANCE hInstance,
	HINSTANCE hPrevInstance,
	LPSTR     lpCmdLine,
	int       nCmdShow)
{
	using namespace prolog;

	::std::vector< ::std::string > iput_file;
	::std::string                  oput_file;
	::std::string                  s0;
	
	int output = 0;
	int result = 0;

	try {
		LPWSTR *szArglist;

		int nArgs  = 0;
		szArglist  = CommandLineToArgvW( GetCommandLineW(), &nArgs );

		::std::wstring a;
		::std:: string s;

		for (int i = 0; i < nArgs; i++) {
			a = szArglist[i];
			::std::transform(
				a.begin(),
				a.end(), std::back_inserter(s), [] (wchar_t c) {
					return (char)c;
				}
			);
			argv_vec.push_back( s );
			s = "";
		}

		LocalFree( szArglist );

		setlocale(LC_ALL,"");
		bindtextdomain (locale_str( 0 ).c_str(), getenv("PWD"));
		textdomain     (locale_str( 0 ).c_str());

		// ----------------------------------------
		// get command arguments from console ...
		// -i<input file> -o<output file>
		// ----------------------------------------
		if (argv_vec.size() < 2) {
			app_lang = 1;	// <-- todo
			
			#ifdef WINDOWS_APPLICATION
			
			//Application< Desktop >( argv_vec );
			//Application< Console >( argv_vec );
			
			#define WinApp( x )          \
				using namespace prolog;  \
				Application< Ascii< German >, Windows< Desktop< x > >>

			// --------------------
			// create window:
			// --------------------
			WinApp(Normal) win_app ( argv_vec.size(), argv_vec );
			win_app.setTitle("dBase Win (c) 2023 by Jens Kallup - paule32");
			
			// create menu:
			Menu menuBar;
			
			menuBar.add( "File"  );
			menuBar.add( "Edit"  );
			menuBar.add( "Tools" );
			
			// add menu bar to application:
			win_app.add( menuBar );

			// message loop
			result = win_app.run();
			
			#else
			// --------------------
			// create DOS window
			// --------------------
			init_con_app ( argv_vec, "dbase.prg", 2 );
			
			return TRUE;
			#endif
		}

		for (int arg = 1; arg < argv_vec.size(); ++arg)
		{
			s0.clear();
			s0.append( argv_vec.at(arg) );

			switch (s0.at(0)) {
			case '-':
				switch (s0.at(1)) {
				case 'l': {  						// lang
					switch (s0.at(2)) {
					case 'e': app_lang = 1; break;  // english
					case 'd': app_lang = 2; break;  // german
					default :
						throw PL_Exception_CommandLine(
						locale_str( 4 ).c_str());
					break;
					}
				}
				break;
				case 'i':
					s0.erase(0,2);
					iput_file.push_back( s0 );
				break;
				case 'o':
					if (output > 0)
					throw PL_Exception_CommandLine(
					locale_str( 5 ).c_str());
						
					s0.erase(0,2);

					oput_file.append(s0);
					output += 1;
				break;
				default:
					throw PL_Exception_CommandLine(
					locale_str( 6 ).c_str());
				break;
			}
			break;
			default:
				throw PL_Exception_CommandLine(
				locale_str( 6 ).c_str());
			break;
			}
		}
		
		// --------------------------------------------
		// first, check, if user has give output file:
		// --------------------------------------------
		if (oput_file.size() < 1)
		throw PL_Exception_CommandLine(locale_str( 7 ).c_str());

		// --------------------------------------------
		// then handle each argument file seperatly ...
		// --------------------------------------------
		for (auto const &item: iput_file)
		{
			ifstream ifile(item);
			if (!ifile.is_open()) {
				stringstream ss;
				ss << locale_str( 8 );
				ss << item;
				throw PL_Exception_CommandLine( ss.str().c_str() );
			}

			// -----------------------------------------------------
			// we deal with the extension of the file; here: EXE/COM
			// -----------------------------------------------------
			if (item.substr(item.find_last_of(".") + 1) == "exe")
			{
				init_con_app ( argv_vec, item, 2 );
				return 0;
			}
			// -------------------------------------------------------
			// we deal with the extension of the file; here: Assembler
			// -------------------------------------------------------
			if (item.substr(item.find_last_of(".") + 1) == "asm")
			{
				init_con_app ( argv_vec, item, 3 );
				return 0;
			}
			// -----------------------------------------------------
			// we deal with the extension of the file; here: Fortran
			// -----------------------------------------------------
			if (item.substr(item.find_last_of(".") + 1) == "for")
			{
				init_con_app ( argv_vec, item, 4 );
				return 0;
			}
			// -----------------------------------------------------
			// we deal with the extension of the file; here: Prolog
			// -----------------------------------------------------
			if (item.substr(item.find_last_of(".") + 1) == "pl")
			{
				init_con_app ( argv_vec, item, 5 );
				return 0;
			}
			// -----------------------------------------------------
			// we deal with the extension of the file; here: Pascal
			// -----------------------------------------------------
			if (item.substr(item.find_last_of(".") + 1) == "pas")
			{
				init_con_app ( argv_vec, item, 6 );
				return 0;
			}
			// -----------------------------------------------------
			// // we deal with the extension of the file; here: C
			// -----------------------------------------------------
			if (item.substr(item.find_last_of(".") + 1) == "cc")
			{
				init_con_app ( argv_vec, item, 7 );
				return 0;
			}
			// -------------------------------------------------------
			// // we deal with the extension of the file; here: dBase
			// -------------------------------------------------------
			if (item.substr(item.find_last_of(".") + 1) == "prg")
			{
				init_con_app ( argv_vec, item, 8 );
				return 0;
			}

			// -----------------------------------------------------
			// any other file extension => fail.
			// -----------------------------------------------------
			throw PL_Exception_CommandLine(
			locale_str( 9 ).c_str());
		}
	}
	
	//-- CENTRALIZED EXCEPTION HANDLING -----------------------
	
	// -------------------------------------------
	// exception, coming from command line error:
	// -------------------------------------------
	catch (PL_Exception_CommandLine& e) {
		::std::cout
		<< locale_str( 10 )
		<< std::endl
		<< locale_str( 12 ) << e.what()
		<< std::endl;
		
		return 1;
	}
	// -------------------------------------------
	// exception coming in context of PL parser:
	// -------------------------------------------
	catch (PL_Exception_ParserError& e)
	{
		::std::cout
		<< locale_str( 13 ) << e.line () << std::endl
		<< locale_str( 14 ) << std::endl
		<< locale_str( 12 ) << e.what()
		<< std::endl;

		return 1;
	}
	// -------------------------------------------
	// common exception, context is PL:
	// -------------------------------------------
	catch (PL_Exception_Application& e)
	{
		::std::cout << "eeeeee" << ::std::endl;
		return 1;
	}
	catch (PL_Exception& e)
	{
		::std::cout
		<< locale_str( 11 ) << e.line() << std::endl
		<< locale_str( 12 ) << e.what() << std::endl;

		return 1;
	}
	// -------------------------------------------
	// all other exception (defualt):
	// -------------------------------------------
	catch (...)
	{
		::std::cout
		<< locale_str( 1 )
		<< std::endl;

		return FALSE;
	}	return TRUE;
}
