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
# include <exception>
# include <vector>
# include <algorithm>
# include <iterator>
# include <csignal>
# include <type_traits>
# include <typeinfo>
# include <cctype>
# include <iomanip>

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
// error handling
// ---------------------------------------------------------------------
#ifdef _WIN32
# define NULL_DEVICE_NAME "NUL"
#else
# define NULL_DEVICE_NAME "/dev/null"
#endif

static ::std::stringstream error_buffer;

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
class Win32API;
class Application;
class Desktop;
class Console;
class Client;
class Server;
class Html;
class Ftp;

// ---------------------------------------------------------------------
// PL parser stuff:
// ---------------------------------------------------------------------
class    PL_Prolog ;
class    PL_Pascal ;
class    PL_cLang  ;
class    PL_dBase  ;
class    PL_Fortran;

class    PL_parser; 		// common parser stuff

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

# define SUCCESS 0
# define FAILURE 1

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
	PL_Exception( ::std::string& msg, uint32_t line):
		_message( msg ),
		_line_row(line),
		_line_col(PL_line_col)
		{}
	PL_Exception( ::std::string msg, uint32_t line):
		_message( msg ),
		_line_row(line),
		_line_col(PL_line_col)
		{}
	PL_Exception( ::std::string& msg):
		_message( msg ),
		_line_row(1),
		_line_col(1)
		{}
	PL_Exception(const char* msg, uint32_t line):
		_message( ::std::string( msg ) ),
		_line_row(line),
		_line_col(PL_line_col)
		{}
	PL_Exception(const char* msg):
		_message( ::std::string( msg ) ),
		_line_row(PL_line_row),
		_line_col(PL_line_col)
		{}
	PL_Exception():
		_message("Application Exception."),
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
class PL_Exception_CommandLine: public PL_Exception { using PL_Exception::PL_Exception; };
class PL_Exception_ParserError: public PL_Exception { using PL_Exception::PL_Exception; };
class PL_Exception_Application: public PL_Exception { using PL_Exception::PL_Exception; };

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
				<< ::std::string("Can not open: ")
				<< ::std::string(file_name)
				<< ::std::endl
				<< ::std::string("Error: ")
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

// ---------------------------------------------------------------------
// the main console application class ...
// ---------------------------------------------------------------------
class Application: public TApplication {
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
				
			if (mList[i] != menu)          // Delete all but current menu.
		
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
		handleEvent( TEvent& event )
		{
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
			<< "  Char: "     << (char ) ((asciiChar == 0) ? 0x20 : asciiChar)
			<< " Decimal: "   << setw(3) << (int) asciiChar
			<< " Hex " << hex << setiosflags(ios::uppercase)
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
			TWindow(TRect(0, 0, 34, 12), "ASCII Chart", wnNoNumber),
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
		Boolean isValid;
		
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
				os << "Failed to open file '" << fName << "'." << ends;
				throw PL_Exception_Application( buf );
				isValid = false;
			}	else {
				char *line = (char *) malloc(maxLineLength);
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
				::free(line);
			}
			limit.y = fileLines->getCount();
		}
		
		void setState( ushort aState, Boolean enable ) {
			TScroller::setState( aState, enable );
			if ( enable && (aState & sfExposed) )
			setLimit( limit.x, limit.y );
		}

		void scrollDraw() {
			TScroller::scrollDraw();
			draw();
		}
		
		Boolean valid( ushort command ) { return isValid; }
		
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
				
			_writeStr(x, 1, "Data",         c); x += 16;
			_writeStr(x, 1, "Queries",      c); x += 17;
			_writeStr(x, 1, "Forms",        c); x += 16;
			_writeStr(x, 1, "Reports",      c); x += 17;
			_writeStr(x, 1, "Labels",       c); x += 15;
			_writeStr(x, 1, "Applications", c);
			
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
		TListBox * lb_1 = nullptr;
		TListBox * lb_2 = nullptr;
		TListBox * lb_3 = nullptr;
		TListBox * lb_4 = nullptr;
		
		void init()
		{
			flags &= ~(wfGrow | wfZoom);
			growMode = 0;
			
			eventMask = evMouseDown | evKeyboard | evCommand | evBroadcast;
			
			options |= ofCentered;
			options |= ofSelectable;

			TInputLine *control = new TInputLine( TRect( 3,2, 34,3), 128);
			insert(control);
			insert( new TLabel  ( TRect(  2,1, 15, 2 ), "~T~able name:", control));
			insert( new THistory( TRect( 34,2, 37, 3 ), control, 10));
			
			TScrollBar * sb_1 = standardScrollBar( sbVertical | sbHandleKeyboard );
			TScrollBar * sb_2 = standardScrollBar( sbVertical | sbHandleKeyboard );
			TScrollBar * sb_3 = standardScrollBar( sbVertical | sbHandleKeyboard );
			TScrollBar * sb_4 = standardScrollBar( sbVertical | sbHandleKeyboard );

			int x =  3;
			int y = 15;
			
			lb_1 = new TListBox( TRect(x,5,     26, y ), 1, sb_1 ); x += 24;
			lb_2 = new TListBox( TRect(x,5, x + 25, y ), 1, sb_2 ); x += 26;
			lb_3 = new TListBox( TRect(x,5, x + 25, y ), 1, sb_3 ); x += 26;
			lb_4 = new TListBox( TRect(x,5, x + 25, y ), 1, sb_4 );
			
			x = 3;
			
			insert( new TLabel( TRect(x,4, x + 20,5 ), "Field Name"  , lb_1 )); x += 24;
			insert( new TLabel( TRect(x,4, x + 20,5 ), "Field Type"  , lb_2 )); x += 26;
			insert( new TLabel( TRect(x,4, x + 20,5 ), "Field Length", lb_3 )); x += 26;
			insert( new TLabel( TRect(x,4, x + 20,5 ), "Index Name"  , lb_4 ));

			insert( lb_1 );
			insert( lb_2 );
			insert( lb_3 );
			insert( lb_4 );
			
			insert( new TButton ( TRect( 40,2, 55,4 ), "Add Field" , cmDBASE_add_field, bfDefault ));
			insert( new TButton ( TRect( 58,2, 73,4 ), "Del Field" , cmDBASE_del_field, bfNormal  ));
			insert( new TButton ( TRect( 76,2, 91,4 ), "Save Table", cmDBASE_sav_field, bfNormal  ));
		}
	public:
		PL_dBaseNewFile(::std::string file_name):
			TWindowInit( &PL_dBaseNewFile::initFrame ),
			TDialog( TRect( 0,0, 108,18), "dBASE new file:"),
			name("PL_dBaseNewFile") {
			init();
		}
	
		PL_dBaseNewFile(StreamableInit):
			TWindowInit(0),
			TDialog(streamableInit),
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
		
		virtual void
		handleEvent( TEvent &event )
		{
			TWindow::handleEvent( event );
			clearEvent(event);
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
			return new PL_dBaseNewFile( streamableInit );
		}
	};
	
	class PL_dBaseCatalog: public TDialog {
	private:
		TListBox * lb_1 = nullptr;
		TListBox * lb_2 = nullptr;
		TListBox * lb_3 = nullptr;
		TListBox * lb_4 = nullptr;
		TListBox * lb_5 = nullptr;
		TListBox * lb_6 = nullptr;
		
		template <typename T1>
		void createNewFileDialog(::std::string s)
		{
			auto  * d = new T1(s);
			TView * p = TProgram::application->validView(d);
			if (!p) {
				::std::string sz;
				sz = "Error:\nCould not create view.";
				throw PL_Exception_Application( sz.c_str() );
			}
			TProgram::deskTop->insert(d);
		}
		
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

			TScrollBar * sb_1 = standardScrollBar( sbVertical | sbHandleKeyboard );
			TScrollBar * sb_2 = standardScrollBar( sbVertical | sbHandleKeyboard );
			TScrollBar * sb_3 = standardScrollBar( sbVertical | sbHandleKeyboard );
			TScrollBar * sb_4 = standardScrollBar( sbVertical | sbHandleKeyboard );
			TScrollBar * sb_5 = standardScrollBar( sbVertical | sbHandleKeyboard );
			TScrollBar * sb_6 = standardScrollBar( sbVertical | sbHandleKeyboard );

			int x = 3;

			auto * lbc_1 = new LB_Collection(5,5);
			auto * lbc_2 = new LB_Collection(5,5);
			auto * lbc_3 = new LB_Collection(5,5);
			auto * lbc_4 = new LB_Collection(5,5);
			auto * lbc_5 = new LB_Collection(5,5);
			auto * lbc_6 = new LB_Collection(5,5);
			
			lbc_1->insert( newStr("Hello") );
			lbc_1->insert( newStr("World") );
			
			lbc_2->insert( newStr("Hello") );
			lbc_2->insert( newStr("World") );
			lbc_2->insert( newStr("foo") );
			lbc_2->insert( newStr("bar") );
			lbc_2->insert( newStr("fuz") );
			
			lbc_3->insert( newStr("Hello") );
			lbc_3->insert( newStr("World") );
			lbc_2->insert( newStr("smell") );
			
			lbc_4->insert( newStr("Hello") );
			lbc_4->insert( newStr("World") );
			
			lbc_5->insert( newStr("Hello") );
			
			lbc_6->insert( newStr("A1") );
			lbc_6->insert( newStr("B-1") );
			lbc_6->insert( newStr("CCC") );
			lbc_6->insert( newStr("dd") );
			lbc_6->insert( newStr("ee") );
			lbc_6->insert( newStr("gg") );
			lbc_6->insert( newStr("hhhho") );
			lbc_6->insert( newStr("mmmmm") );
			lbc_6->insert( newStr("oooo") );
			lbc_6->insert( newStr("232323") );
			lbc_6->insert( newStr("ääääüüüü") );
			lbc_6->insert( newStr("######") );
			lbc_6->insert( newStr("qwerty") );
			
			lb_1 = new TListBox( TRect(x,7,   19, 16), 1, sb_1 ); x += 17;
			lb_2 = new TListBox( TRect(x,7, x+16, 16), 1, sb_2 ); x += 17;
			lb_3 = new TListBox( TRect(x,7, x+16, 16), 1, sb_3 ); x += 17;
			lb_4 = new TListBox( TRect(x,7, x+16, 16), 1, sb_4 ); x += 17;
			lb_5 = new TListBox( TRect(x,7, x+16, 16), 1, sb_5 ); x += 17;
			lb_6 = new TListBox( TRect(x,7, x+16, 16), 1, sb_6 );
			
			lb_1->eventMask = evMouseDown | evKeyDown | evCommand;

			lb_1->newList(lbc_1); lb_2->newList(lbc_2);
			lb_3->newList(lbc_3); lb_4->newList(lbc_4);
			lb_5->newList(lbc_5); lb_6->newList(lbc_6);
			
			insert(lb_1); insert(lb_2);
			insert(lb_3); insert(lb_4);
			insert(lb_5); insert(lb_6);
			
			x = 3;
			
			insert( new TButton ( TRect( x,4, x+15,6 ), "create", cmDBASE_data,   bfNormal )); x += 17;
			insert( new TButton ( TRect( x,4, x+15,6 ), "create", cmDBASE_query,  bfNormal )); x += 17;
			insert( new TButton ( TRect( x,4, x+15,6 ), "create", cmDBASE_form,   bfNormal )); x += 17;
			insert( new TButton ( TRect( x,4, x+15,6 ), "create", cmDBASE_report, bfNormal )); x += 17;
			insert( new TButton ( TRect( x,4, x+15,6 ), "create", cmDBASE_label,  bfNormal )); x += 17;
			insert( new TButton ( TRect( x,4, x+15,6 ), "create", cmDBASE_app,    bfNormal ));
		}
	public:
		PL_dBaseCatalog(::std::string file_name):
			TWindowInit( &PL_dBaseCatalog::initFrame ),
			TDialog( TRect( 0,0, 108,18), "dBASE Catalog:"),
			name("PL_dBaseCatalog") {
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
				helpStrm  = new fpstream("prolog64.hlp", ios::in|ios::binary);
				hFile     = new THelpFile(*helpStrm);
				if (!helpStrm) {
					delete hFile;
					throw PL_Exception_Application(
					"Could not open help file" );
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
					
					if ((lb_1->state & sfFocused) != 0) { lb_1->getText(buffer, lb_1->focused, MAX_LEN); } else
					if ((lb_2->state & sfFocused) != 0) { lb_2->getText(buffer, lb_2->focused, MAX_LEN); } else
					if ((lb_3->state & sfFocused) != 0) { lb_3->getText(buffer, lb_3->focused, MAX_LEN); } else
					if ((lb_4->state & sfFocused) != 0) { lb_4->getText(buffer, lb_4->focused, MAX_LEN); } else
					if ((lb_5->state & sfFocused) != 0) { lb_5->getText(buffer, lb_5->focused, MAX_LEN); } else
					if ((lb_6->state & sfFocused) != 0) { lb_6->getText(buffer, lb_6->focused, MAX_LEN); }
					
					messageBox(buffer,mfInformation|mfOKButton);
					clearEvent(event);
				}
			}
			if (event.message.command == cmHelp)
			{
				clearEvent(event);
				
				if ((lb_1->state & sfFocused) != 0) { handle_helpView( 1 ); } else
				if ((lb_2->state & sfFocused) != 0) { handle_helpView( 2 ); } else
				if ((lb_3->state & sfFocused) != 0) { handle_helpView( 3 ); } else
				if ((lb_4->state & sfFocused) != 0) { handle_helpView( 4 ); } else
				if ((lb_5->state & sfFocused) != 0) { handle_helpView( 5 ); } else
				if ((lb_6->state & sfFocused) != 0) { handle_helpView( 6 ); }
			}
			else if (event.message.command == cmDBASE_data) {
				clearEvent(event);
				createNewFileDialog< PL_dBaseNewFile >("data");
			}
			else if (event.message.command == cmDBASE_query) {
				clearEvent(event);
				messageBox("dbase query",mfInformation|mfOKButton);
				createNewFileDialog< PL_dBaseNewFile >("query");
			}
			else if (event.message.command == cmDBASE_form) {
				clearEvent(event);
				messageBox("dbase form",mfInformation|mfOKButton);
				createNewFileDialog< PL_dBaseNewFile >("form");
			}
			else if (event.message.command == cmDBASE_report) {
				clearEvent(event);
				messageBox("dbase report",mfInformation|mfOKButton);
				createNewFileDialog< PL_dBaseNewFile >("report");
			}
			else if (event.message.command == cmDBASE_label) {
				clearEvent(event);
				messageBox("dbase label",mfInformation|mfOKButton);
				createNewFileDialog< PL_dBaseNewFile >("label");
			}
			else if (event.message.command == cmDBASE_app) {
				clearEvent(event);
				messageBox("dbase app",mfInformation|mfOKButton);
				createNewFileDialog< PL_dBaseNewFile >("application");
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
			return new PL_dBaseCatalog( streamableInit );
		}
	};

	class TNewProjectDialog: public TDialog {
	private:
		// ---------------------------------------------
		// this structure set/get the components values
		// of new project dialog items ...
		// ---------------------------------------------
		struct DialogData {
			char   inputLineData[128];
			ushort radioButtons1Data;
			ushort radioButtons2Data;
			ushort checkButtons1Data;
		} *newData;
		
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
				"Open File",
				"~N~ame",
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
			TWindowInit( &TNewProjectDialog::initFrame ),
			TDialog( TRect( 0,0, 52,13), "New Project"),
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
			insert( new TLabel  ( TRect(  2,1, 15, 2 ), "~P~roject name:", control));
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

			insert( new TButton ( TRect( 38,2, 50, 4 ), "New",    cmNewData,  bfDefault ));
			insert( new TButton ( TRect( 38,4, 50, 6 ), "~L~oad", cmLoadData, bfNormal  ));
			insert( new TButton ( TRect( 38,6, 50, 8 ), "Cancel", cmCancel,   bfNormal  ));
			insert( new TButton ( TRect( 38,9, 50,11 ), "Help",   cmHelp,     bfNormal  ));
			
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
			if (newData != nullptr) {
				delete newData;
			}
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
				helpStrm  = new fpstream("prolog64.hlp", ios::in|ios::binary);
				hFile     = new THelpFile(*helpStrm);
				if (!helpStrm) {
					delete hFile;
					throw PL_Exception_Application(
					"Could not open help file" );
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
			if (event.what != evCommand) {
				clearEvent(event);
				return;
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
					::std::string sz = "Error:\nCould not create view.";
					
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
		TView *w = validView( new TFileWindow( "prolog64.hlp" ));
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
					helpStrm  = new fpstream("prolog64.hlp", ios::in|ios::binary);
					hFile     = new THelpFile(*helpStrm);
					if (!helpStrm) {
						delete hFile;
						throw PL_Exception_Application(
						"Could not open help file" );
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
				if (messageBox(
				"Did you would really like exit the Application ?\n"
				"This can take awhile ...",	mfYesButton | mfNoButton ) == 12)
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
				*new TMenuItem( "ASCII Chart", cmAsciiTableCmd, kbNoKey, hcNoContext ) +

			*new ::TSubMenu( "~F~ile", hcNoContext) +
				*new TMenuItem( "~O~pen...", cmNewProject, kbF3, hcAsciiTable, "F3" ) +
				*new TMenuItem( "~S~ave", 101, kbF2, hcNoContext, "F2" ) +
				newLine() +
				*new TMenuItem( "~C~hange directory...", 102, kbNoKey, hcNoContext ) +
				*new TMenuItem( "E~x~it", cmAppQuit, kbAltX, hcNoContext, "Alt-X" ) +
				
			*new TSubMenu( "~W~indow", hcNoContext ) +
				*new TMenuItem( "~M~ove", cmResize, kbCtrlF5, hcNoContext, "Cntl-F5") +
				*new TMenuItem( "~N~ext", cmNext, kbF6, hcNoContext, "F6") +
				*new TMenuItem( "~P~rev", cmPrev, kbShiftF6, hcNoContext, "Shift-F6") +
				*new TMenuItem( "~C~lose", cmClose, kbAltF3, hcNoContext, "Alt-F3") +
				
			*new TSubMenu( "~H~elp", hcNoContext ) +
				*new TMenuItem( "~I~ndex", cmHelpIndex, kbCtrlF5, hcNoContext, "Cntl-F5") +
				*new TMenuItem( "~O~nline Help", cmHelpOnline, kbF6, hcNoContext, "F6") +
				newLine() +
				*new TMenuItem( "~A~bout...", cmAboutBox, kbAltF1, hcNoContext, "F1" ));
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
			*new ::TStatusItem( "~F1~ Help",  kbF1,  cmHelp       ) +
			*new ::TStatusItem( "~F3~ Open",  kbF3,  cmNewProject ) +
			*new ::TStatusItem( "~F10~ Menu", kbF10, cmMenu       ) +

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
			sz = "Error:\nCould not create view.";
			throw PL_Exception_Application( sz.c_str() );
		}
		TProgram::deskTop->insert(d);
	}
	
	void
	createNewProjectDialog()
	{
		auto  * d = new TNewProjectDialog();
		TView * p = TProgram::application->validView(d);
		if (!p) {
			::std::string sz;
			sz = "Error:\nCould not create view.";
			throw PL_Exception_Application( sz.c_str() );
		}
		TProgram::deskTop->insert(d);
	}
	
	static Boolean isTileable(TView *p, void*)
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
	Application(Console& con):
		::TProgInit(
			&Application::initStatusLine,
			&Application::initMenuBar,
			&Application::initDeskTop),
		TApplication(),
		curMenu(0)
	{
		TRect r = getExtent();
		r.a.x = r.b.x - 9;
		r.b.y = r.a.y + 1;
		
		clock = new TClockView(r);
		clock->growMode = gfGrowLoX | gfGrowHiX;
		insert(clock);
	}
	
	~Application() {
		DEBUGSTR("dtor: ~PL_Application ()")
	}
	
	void exit(int returnCode = 0)
	{
		DEBUGSTR("Application exit")
	}

	int exec()
	{
		DEBUGSTR("Application exec")
		return 0;
	}
	
private:
	TClockView *clock;
	int curMenu;
};

inline ipstream& operator >> ( ipstream& is, Application::TTable&  cl ) { return is >> (TStreamable&) cl; }
inline ipstream& operator >> ( ipstream& is, Application::TTable*& cl ) { return is >> (void *&) cl; }

inline opstream& operator << ( opstream& os, Application::TTable&  cl ) { return os << (TStreamable&) cl; }
inline opstream& operator << ( opstream& os, Application::TTable*  cl ) { return os << (TStreamable*) cl; }

inline ipstream& operator >> ( ipstream& is, Application::TReport&  cl ) { return is >> (TStreamable&) cl; }
inline ipstream& operator >> ( ipstream& is, Application::TReport*& cl ) { return is >> (void *&) cl; }

inline opstream& operator << ( opstream& os, Application::TReport&  cl ) { return os << (TStreamable&) cl; }
inline opstream& operator << ( opstream& os, Application::TReport*  cl ) { return os << (TStreamable*) cl; }

inline ipstream& operator >> ( ipstream& is, Application::TAsciiChart&  cl ) { return is >> (TStreamable&) cl; }
inline ipstream& operator >> ( ipstream& is, Application::TAsciiChart*& cl ) { return is >> (void *&) cl; }

inline opstream& operator << ( opstream& os, Application::TAsciiChart&  cl ) { return os << (TStreamable&) cl; }
inline opstream& operator << ( opstream& os, Application::TAsciiChart*  cl ) { return os << (TStreamable*) cl; }

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
	
		PL_ASTList_Node *parent = pl_head;
		PL_ASTList_Node *me     = pl_head->next;
		PL_ASTList_Node *child  = me     ->next;
		
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
		
		if (pl_head == nullptr) {			// uf an empty list,
			pl_head = newnode;			// set "head" to it
			pl_tail = newnode;
			pl_head->next = nullptr;		// set end of list to null
			return;
		}
		temp = pl_head; 				// start at beginning of list
		while (temp->name < newnode->name) {		// while current name < new name
			temp = temp->next;			// to be inserted then
			if (temp == nullptr)			// goto to the next node in list
			break;					// don't go past end of list
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
			throw PL_Exception("input file read error",PL_line_row);
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
					throw PL_Exception_ParserError("nit yet implemented");
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
			throw PL_Exception("not yet implemented.",PL_line_row);
			
			if (PL_lookaheadChar == '*')
			{	PL_nestedComment += 1;
				
				BEGIN_WHILE
					label_comment2:
					
					if (!(PL_lookaheadChar = PL_getch()))
					throw PL_Exception("unterminated comment",PL_line_row);
				
					if (PL_lookaheadChar == '\n') {
						PL_line_row += 1;
						PL_line_col  = 1;
						continue;
					}

					if (PL_lookaheadChar == '/')
					{
						if (!(PL_lookaheadChar = PL_getch()))
						throw PL_Exception("unterminated comment",PL_line_row);
						
						if (PL_lookaheadChar == '*') {
							PL_nestedComment += 1;
							continue;
						}
					}
					
					if (PL_lookaheadChar == '*')
					{
						if (!(PL_lookaheadChar = PL_getch()))
						throw PL_Exception("unterminated comment",PL_line_row);
					
						if (  PL_lookaheadChar == '/') {
						if (++PL_nestedComment < 1)
						break;
						}
					}
				END_WHILE
			}	else {
				// todo
				throw PL_Exception("not yets implemented.",PL_line_row);
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
					throw PL_Exception_ParserError("parens error");
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
				"comment not terminated.");
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
	//! \param  Application& ptr - Pointer to the Application class.
	//! \return internal used Object with Pointer to itself.
	//! \~endEnglish
	//! \~German
	//! \brief  Dies ist ein C++ Konstruktor für den Prolog Parser.
	//! \param  Application& ptr - Zeiger auf ein zugewiesenes Application Objekt
	//! \return internes Objekt auf diese Klasse.
	//! \~endGerman
	PL_Fortran(Application&) {
		DEBUGSTR("ctor: PL_Fortran Application")
	//	init();
	}
	PL_Fortran(Application*) {
		DEBUGSTR("ctor: PL_Fortran Application")
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
	PL_Assembler(Application&) {
		DEBUGSTR("ctor: PL_Assembler Application")
		init();
	}
	PL_Assembler(Application*) {
		DEBUGSTR("ctor: PL_Assembler Application")
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
	//! \param  Application& ptr - Pointer to the Application class.
	//! \return internal used Object with Pointer to itself.
	//! \~endEnglish
	//! \~German
	//! \brief  Dies ist ein C++ Konstruktor für den Prolog Parser.
	//! \param  Application& ptr - Zeiger auf ein zugewiesenes Application Objekt
	//! \return internes Objekt auf diese Klasse.
	//! \~endGerman
	PL_Prolog(Application&) {
		DEBUGSTR("ctor: PL_Prolog Application")
		init();
	}
	PL_Prolog(Application*) {
		DEBUGSTR("ctor: PL_Prolog Application")
		init();
	}

	//! \since  Version 0.0.1
	//! \author paule32
	//! \see    PL_Prolog::PL_Prolog(Application&)
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
	//! \see    PL_Prolog::PL_Prolog(Application&)
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
	//! \see    PL_Prolog::PL_Prolog(Application&)
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
	//! \see    PL_Prolog::PL_Prolog(Application&)
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
			"comment not terminated.",
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
	//! \see    PL_dBase::PL_dBase(Application&)
	//! \see    PL_dBase::PL_dBase(std::string&)
	//! \see    PL_dBase::PL_dBase(std::string)
	//! \see    PL_dBase::PL_dBase(char&)
	//! \see    PL_dBase::PL_dBase()
	//! \~English
	//! \brief  This is the C++ constructor class for the dBase Parser.
	//! \param  Application& ptr - Pointer to the Application class.
	//! \return internal used Object with Pointer to itself.
	//! \~endEnglish
	//! \~German
	//! \brief  Dies ist der C++ Konstruktor für den dBase Parser.
	//! \param  Application& ptr - Zeiger auf ein zugewiesenes Application Objekt
	//! \return internes Objekt auf diese Klasse.
	//! \~endGerman
	PL_dBase(Application&) {
		DEBUGSTR("ctor: PL_dBase Application")
		init();
	}
	PL_dBase(Application*) {
		DEBUGSTR("ctor: PL_dBase Application")
		init();
	}
	
	//! \since  Version 0.0.1
	//! \author paule32
	//! \see    PL_dBase::PL_dBase(Application&)
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
	//! \see    PL_dBase::PL_dBase(Application&)
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
	//! \see    PL_dBase::PL_dBase(Application&)
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
	//! \see    PL_dBase::PL_dBase(Application&)
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
	//! \param  Application& ptr - Pointer to the Application class.
	//! \return internal used Object with Pointer to itself.
	//! \~endEnglish
	//! \~German
	//! \brief  Dies ist der C++ Konstruktor für den Pascal Parser.
	//! \param  Application& ptr - Zeiger auf ein zugewiesenes Application Objekt
	//! \return internes Objekt auf diese Klasse.
	//! \~endGerman
	PL_Pascal(Application&) {
		DEBUGSTR("ctor: PL_Pascal Application")
		init();
	}
	PL_Pascal(Application*) {
		DEBUGSTR("ctor: PL_Pascal Application")
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
						"identifier as keywords not allowed.");
					}
					cout << "program => " << PL_ident << endl;
					
					PL_lookaheadChar = PL_handle_pas_white_spaces();
					if (
					PL_lookaheadChar != ';')
					throw PL_Exception_ParserError("semicolon expected.");
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
			"unknown keyword found.",
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
			"comment not terminated.",
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
	//! \param  Application& ptr - Pointer to the Application class.
	//! \return internal used Object with Pointer to itself.
	//! \~endEnglish
	//! \~German
	//! \brief  Dies ist der C++ Konstruktor für den C Parser.
	//! \param  Application& ptr - Zeiger auf ein zugewiesenes Application Objekt
	//! \return internes Objekt auf diese Klasse.
	//! \~endGerman
	PL_cLang(Application&) {
		DEBUGSTR("ctor: PL_Pascal Application")
		init();
	}
	PL_cLang(Application*) {
		DEBUGSTR("ctor: PL_Pascal Application")
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
	//! \param  Application& ptr - Pointer to the Application class.
	//! \return internal used Object with Pointer to itself.
	//! \~endEnglish
	//! \~German
	//! \brief  Dies ist der C++ Konstruktor für den Pascal Parser.
	//! \param  Application& ptr - Zeiger auf ein zugewiesenes Application Objekt
	//! \return internes Objekt auf diese Klasse.
	//! \~endGerman
	PL_Executable(Application&) {
		DEBUGSTR("ctor: PL_Executable Application")
		init();
	}
	PL_Executable(Application*) {
		DEBUGSTR("ctor: PL_Executable Application")
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


class Desktop {
public:
	Desktop(Win32API&) { }
	Desktop() {
		DEBUGSTR("ctor: PL_Desktop ()")
	}
	~Desktop() {
		DEBUGSTR("dtor: ~PL_Desktop ()")
	}
	
	void exit(int returnCode = 0)
	{
		DEBUGSTR("Desktop exit")
	}

	int exec()
	{
		DEBUGSTR("Desktop exec")
		return 0;
	}
};

class Win32API {
public:
	Win32API() {
		DEBUGSTR("ctor: PL_Win32API ()")
	}
	~Win32API() {
		DEBUGSTR("dtor: ~PL_Win32API ()")
	}
};

class Console {
public:
	Console(Win32API& w32) {
		xbString s1;
		s1 = "Test String 1";
		fprintf( stdout, "s1 = [%s]\n", s1.Str());
		
		xbSchema MyRecord[] = {
			{ "FIRSTNAME", XB_CHAR_FLD,     15, 0 },
			{ "LASTNAME",  XB_CHAR_FLD,     20, 0 },
			{ "BIRTHDATE", XB_DATE_FLD,      8, 0 },
			{ "AMOUNT",    XB_NUMERIC_FLD,   9, 2 },
			{ "RETIRED" ,  XB_LOGICAL_FLD,   1, 0 },
			{ "ZIPCODE",   XB_NUMERIC_FLD,   5, 0 },
			{ "MEMO1",     XB_MEMO_FLD,     10, 0 },
			{ "",0,0,0 }
		};

		// define the classes
		xbXBase x;                                       /* initialize xbase             */
		x.SetDataDirectory( PROJECT_DATA_DIR );          /* where all the tables live    */

		xbDbf *MyDbfFile;                                /* Pointer to dbf class         */
		MyDbfFile = new xbDbf4(&x);                      /* Create Version 5 instance    */

		//  Create Dbase3  NDX style indices if support compiled in
		xbIxNdx MyIndex1( MyDbfFile );    /* class for index 1 */
		xbIxNdx MyIndex2( MyDbfFile );    /* class for index 2 */
		xbIxNdx MyIndex3( MyDbfFile );    /* class for index 3 */

		xbInt16 rc;

		if (( rc = MyDbfFile->CreateTable(
		"MyV3Table1",
		"MyV3ExampleTableAlias",
		MyRecord,
		XB_OVERLAY,
		XB_MULTI_USER )) != XB_NO_ERROR )
		x.DisplayError( rc );

		MyDbfFile->Close();
	}
	Console() {
		DEBUGSTR("ctor: PL_Console ()")
	}
	~Console() {
		DEBUGSTR("dtor: ~PL_Console ()")
	}
};

class Server {
public:
	Server() {
		DEBUGSTR("ctor: PL_Server ()")
	}
	~Server() {
		DEBUGSTR("ctor: ~PL_Server ()")
	}
};

class Client {
public:
	Client() {
		DEBUGSTR("ctor: PL_Client ()")
	}
	~Client() {
		DEBUGSTR("dtor: ~PL_Client ()")
	}
};

class Html {
public:
	Html() {
		DEBUGSTR("ctor: PL_Html ()")
	}
	~Html() {
		DEBUGSTR("dtor: ~PL_Html ()")
	}
};

class Ftp {
public:
	Ftp() {
		DEBUGSTR("ctor: PL_Ftp ()")
	}
	~Ftp() {
		DEBUGSTR("dtor: ~PL_Ftp ()")
	}
};

}	// namespace: prolog

using namespace prolog;
static uint8_t app_lang = 1;
void
init_con_app( Console& con, ::std::string item, int flag)
{
	Application *app = new Application( con );
	while (true) {
		try {
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
		catch (PL_Exception_Application& e) {
			::std::stringstream txt;
			txt << "Error:" << ::std::endl
				<< e.what() << ::std::endl << ::std::endl
				<< "Would You Exit the Application ?";

			ushort res = app->MessageBoxRect(
			TRect(10,7,60,19),
			txt.str().c_str(),
			mfError | mfYesButton | mfNoButton );
			
			if (res == 12) {
				delete app;
				break;
			}
		}
		catch (...) {
			::std::stringstream txt;
			txt << "Error:" << ::std::endl
				<< "common exception occured."
				<< ::std::endl
				<< "Would You Exit the Application ?";

			ushort res = app->MessageBoxRect(
			TRect(10,7,60,19),
			txt.str().c_str(),
			mfError | mfYesButton | mfNoButton );

			if (res == 12) {
				delete app;
				break;
			}
		}
	}
}

// ---------------------------------------------------------------------
// test case entry point ...
// ---------------------------------------------------------------------
using namespace prolog;
int
main(int argc, char** argv)
{
	::std::vector< ::std::string > iput_file;
	::std::string                  oput_file;
	::std::string                  s0;
	
	int output   = 0;
	int app_lang = 1;

	try {
		setlocale(LC_ALL,"");
		bindtextdomain ("prolog32", getenv("PWD"));
		textdomain     ("prolog32");

		// ----------------------------------------
		// get command arguments from console ...
		// -i<input file> -o<output file>
		// ----------------------------------------
		if (argc < 2) {
			Win32API win ;
			Console  con ( win );
			init_con_app ( con, "", 1 );
			
			return SUCCESS;
		}

		for (int arg = 1; arg < argc; ++arg)
		{
			s0.clear();
			s0.append(argv[arg]);

			switch (s0.at(0)) {
			case '-':
				switch (s0.at(1)) {
				case 'l': {  						// lang
					switch (s0.at(2)) {
					case 'e': app_lang = 1; break;  // english
					case 'd': app_lang = 2; break;  // german
					default :
						throw PL_Exception_CommandLine(
						"can not get app language");
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
					"only one output supported.");
						
					s0.erase(0,2);

					oput_file.append(s0);
					output += 1;
				break;
				default:
					throw PL_Exception_CommandLine(
					"unknown option.");
				break;
			}
			break;
			default:
				throw PL_Exception_CommandLine(
				"unknown option.");
			break;
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
			ifstream ifile(item);
			if (!ifile.is_open()) {
				stringstream ss;
				ss << "can not open input file: ";
				ss << item;
				throw PL_Exception_CommandLine( ss.str().c_str() );
			}

			// -----------------------------------------------------
			// we deal with the extension of the file; here: EXE/COM
			// -----------------------------------------------------
			if (item.substr(item.find_last_of(".") + 1) == "exe")
			{
				Win32API win ;
				Console  con ( win );
				init_con_app ( con, item, 2 );
				
				return 0;
			}
			// -------------------------------------------------------
			// we deal with the extension of the file; here: Assembler
			// -------------------------------------------------------
			if (item.substr(item.find_last_of(".") + 1) == "asm")
			{
				Win32API win ;
				Console  con ( win );
				init_con_app ( con, item, 3 );
				
				return 0;
			}
			// -----------------------------------------------------
			// we deal with the extension of the file; here: Fortran
			// -----------------------------------------------------
			if (item.substr(item.find_last_of(".") + 1) == "for")
			{
				Win32API win ;
				Console  con ( win );
				init_con_app ( con, item, 4 );

				return 0;
			}
			// -----------------------------------------------------
			// we deal with the extension of the file; here: Prolog
			// -----------------------------------------------------
			if (item.substr(item.find_last_of(".") + 1) == "pl")
			{
				Win32API win ;
				Console  con ( win );
				init_con_app ( con, item, 5 );
				
				return 0;
			}
			// -----------------------------------------------------
			// we deal with the extension of the file; here: Pascal
			// -----------------------------------------------------
			if (item.substr(item.find_last_of(".") + 1) == "pas")
			{
				Win32API win ;
				Console  con ( win );
				init_con_app ( con, item, 6 );

				return 0;
			}
			// -----------------------------------------------------
			// // we deal with the extension of the file; here: C
			// -----------------------------------------------------
			if (item.substr(item.find_last_of(".") + 1) == "cc")
			{
				Win32API win ;
				Console  con ( win );
				init_con_app ( con, item, 7 );

				return 0;
			}
			// -------------------------------------------------------
			// // we deal with the extension of the file; here: dBase
			// -------------------------------------------------------
			if (item.substr(item.find_last_of(".") + 1) == "prg")
			{
				Win32API win ;
				Console  con ( win );
				init_con_app ( con, item, 8 );
				
				return 0;
			}

			// -----------------------------------------------------
			// any other file extension => fail.
			// -----------------------------------------------------
			throw PL_Exception_CommandLine(
			"could not determine parser on file extension.");
		}
	}
	
	//-- CENTRALOZED EXCEPTION HANDLING -----------------------
	
	// -------------------------------------------
	// exception, coming from command line error:
	// -------------------------------------------
	catch (PL_Exception_CommandLine& e) {
		STDCOUT
		<< "Command line Error"
		<< std::endl
		<< "reason: " << e.what()
		<< std::endl;
		
		return 1;
	}
	// -------------------------------------------
	// exception coming in context of PL parser:
	// -------------------------------------------
	catch (PL_Exception_ParserError& e)
	{
		STDCOUT
		<< "parser error in line: " << e.line () << std::endl
		<< "compiler: FAIL."        << std::endl
		<< "reason: " << e.what()
		<< std::endl;

		return 1;
	}
	// -------------------------------------------
	// common exception, context is PL:
	// -------------------------------------------
	catch (PL_Exception& e)
	{
		STDCOUT
		<< "line  : " << e.line()
		<< std::endl
		<< "reason: " << e.what()
		<< std::endl;

		return 1;
	}
	// -------------------------------------------
	// all other exception (defualt):
	// -------------------------------------------
	catch (...)
	{
		STDCOUT
		<< "default exception"
		<< std::endl;

		return 1;
	}	return 0;
}
