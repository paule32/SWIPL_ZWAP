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
//! DER MARKTG&Auml;NGIGKEIT, DER EIGNUNG F�R EINEN BESTIMMTEN ZWECK UND DER NICHTVERLETZUNG
//! VON RECHTEN. IN KEINEM FALL SIND DIE AUTOREN ODER URHEBERRECHTSINHABER HAFTBAR ZU
//! MACHEN F�R JEGLICHE ANSPR&Uuml;CHE, SCH&Auml;DEN ODER SONSTIGE HAFTUNGEN, SEI ES AUS VERTRAG,
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
//!     und Erweiterungen k�nnen andere Lizenz-Bedingungen haben.<br>
//!     Um mehr &uuml;ber die Lizenz f�r das Projekt zu erfahren, k&ouml;nnen Sie
//!     durch Eingabe von license/0 eingesehen werden.
//!
//! \page Beschreibung
//! Zwapel ist eine ganze Reihe von Programmen, die f�r das Programmieren von
//! Anwendungen f�r logische, und prozedurale Bed�rfnisse verwendet werden kann.
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
// application localization ...
// ---------------------------------------------------------------------
# include <libintl.h>
# include <locale.h>

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
# include <cctype>

// ---------------------------------------------------------------------
// Turbo Vision for C++ ...
// ---------------------------------------------------------------------
# define Uses_TRect
# define Uses_TKeys
# define Uses_TStaticText
# define Uses_TButton
# define Uses_TStatusLine
# define Uses_TStatusItem
# define Uses_TStatusDef
# define Uses_TChDirDialog
# define Uses_TFileDialog
# define Uses_MsgBox
# define Uses_TDisplay
# define Uses_TScreen
# define Uses_TEditor
# define Uses_TMemo
# define Uses_TStreamableClass
# define Uses_TEvent
# define Uses_TDialog
# define Uses_TMenu
# define Uses_TSubMenu
# define Uses_TMenuItem
# define Uses_TMenuBar
# define Uses_TDeskTop
# define Uses_TProgram
# define Uses_TApplication

# include <tvision/tv.h>

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
//! \brief Eine kleine Klasse, mit gro�er Wirkung.
//! \details
//! Sie behandelt Ausnahmen
//! in Anwendungen, und wird benutzt, um den Quellcode kleiner, und
//! sauberer zu halten. Es ist nicht mehr n�tig, sich durch
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
class PL_Exception_CommandLine: public PL_Exception {
using PL_Exception::PL_Exception;
};
class PL_Exception_ParserError: public PL_Exception {
using PL_Exception::PL_Exception;
};

// ---------------------------------------------------------------------
// Application object for Console Projects ...
// ---------------------------------------------------------------------
const unsigned cmMMChangeMenu = 0x1600;

const unsigned cmOne     = 100;
const unsigned cmTwo     = 101;
const unsigned cmThree   = 102;
const unsigned cmCycle   = 110;
const unsigned cmNothing = 111;

class Application: public TApplication {
	int curMenu;
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

		virtual void handleEvent(TEvent& event)
		{
			if (event.what == evBroadcast &&
				event.message.command == cmMMChangeMenu)
			{
				if (event.message.infoInt >= 0 &&
					event.message.infoInt < numMenus)
				{
					if (menu != mList[ event.message.infoInt ]) {
						menu  = mList[ event.message.infoInt ];
						drawView();
					}
				}
				clearEvent( event );
			}	else
			::TMenuBar::handleEvent( event );
		}
	};

	static ::TMenuBar*
	initMenuBar( ::TRect r )
	{
		r.b.y = r.a.y + 1;
		::TMenu *M[] =
		{
			new ::TMenu(
				*new ::TMenuItem( "~F~ile menu", kbAltF, new ::TMenu(
					*new TMenuItem( "~o~ne", 1000, kbAlt0)))),
			0
		};
		return new TMultiMenu( r, M );
	}
	virtual void
	handleEvent( ::TEvent& event ) {
		if (event.what == evCommand &&
			event.message.command >= cmOne &&
			event.message.command <= cmThree)
		{
			curMenu = ( event.message.command - cmOne) % 3;
			clearEvent( event );
		}
		else
        ::TApplication::handleEvent( event );
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
		//DEBUGSTR("ctor: PL_Application Console")
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
};

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
//!         f�r verschiedene Zwecke, die mehrmals verwendet werden.
//! \details
//! Diese Klasse enth�lt verschiedene Hilfs-Funktionen, die mehrmals
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
	//! \brief Dies ist der C++ Klassen Konstrucktor f�r eine Behelfs-Klasse.
	//! \details
	//! Die Klasse enth�lt einfachen Typ-Funktionen, die als Platzhalter
	//! dienen, da sie mehrmals verwendet werden.<br>
	//! Der C++ Compiler handelt den inline-Function's Code w�hrend der
	//! �bersetzung aus.
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
	//! \brief  Dies ist ein C++ de-struktor f�r Hilfs-Klassen Bereinigungen.
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
	//! \brief Diese Funktion gibt TRUE als Wert zur�ck.
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
	//! \brief Diese Funktion gibt FALSE als Wert zur�ck.
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
//! \brief  Die Parser AST-Klasse, f�r alle PL Projekte.
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
//! \brief  Die Parser Klasse, f�r alle PL Projekte.
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
	//! \brief  Dies ist ein C++ Konstruktor f�r Parser Projekte
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
	//! \brief  Dies ist ein C++ Konstruktor f�r Parser Projekte
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
	//! \brief  Dies ist ein C++ Konstruktor f�r Parser Projekte
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
	//! \brief  Dies ist ein C++ Konstruktor f�r Parser Projekte
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
	//! \brief  Dies ist ein C++ de-struktor f�r Parser Bereinigungen.
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
//! \brief  Die Parser Klasse, f�r PL - dBase Projekte.
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
	//! \brief  Dies ist ein C++ Konstruktor f�r den Prolog Parser.
	//! \param  Application& ptr - Zeiger auf ein zugewiesenes Application Objekt
	//! \return internes Objekt auf diese Klasse.
	//! \~endGerman
	PL_Fortran(Application&) {
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
//! \brief  Die Parser Klasse, f�r PL - Assembler Projekte.
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
	//! \brief  Dies ist ein C++ Konstruktor f�r den Prolog Parser.
	//! \param  Application& ptr - Zeiger auf ein zugewiesenes Application Objekt
	//! \return internes Objekt auf diese Klasse.
	//! \~endGerman
	PL_Prolog(Application&) {
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
	//! \brief  Dies ist ein C++ Konstruktor f�r den Prolog Parser.
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
	//! \brief  Dies ist ein C++ Konstruktor f�r den Prolog Parser.
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
	//! \brief  Dies ist ein C++ Konstruktor f�r den Prolog Parser.
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
	//! \brief  Dies ist ein C++ Konstruktor f�r den Prolog Parser.
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
	//! \brief  Dies ist ein C++ Konstruktor f�r die Prolog Parser Klassen-Bereinigung.
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
//! \brief  Die Parser Klasse, f�r PL - dBase Projekte.
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
	//! \brief  Dies ist der C++ Konstruktor f�r den dBase Parser.
	//! \param  Application& ptr - Zeiger auf ein zugewiesenes Application Objekt
	//! \return internes Objekt auf diese Klasse.
	//! \~endGerman
	PL_dBase(Application&) {
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
	//! \brief  Dies ist ein C++ Konstruktor f�r den dBase Parser.
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
	//! \brief  Dies ist ein C++ Konstruktor f�r den dBase Parser.
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
	//! \brief  Dies ist ein C++ Konstruktor f�r den dBase Parser.
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
	//! \brief  Dies ist ein C++ Konstruktor f�r den dBase Parser.
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
	//! \brief  Dies ist ein C++ De-struktor f�r die dBase Parser Klassen-Bereinigung.
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
//! \brief  Die Parser Klasse, f�r PL - Pascal Projekte.
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
	//! \brief  Dies ist der C++ Konstruktor f�r den Pascal Parser.
	//! \param  Application& ptr - Zeiger auf ein zugewiesenes Application Objekt
	//! \return internes Objekt auf diese Klasse.
	//! \~endGerman
	PL_Pascal(Application&) {
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
	//! \brief  Dies ist ein C++ Konstruktor f�r den Pascal Parser.
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
	//! \brief  Dies ist ein C++ Konstruktor f�r den Pascal Parser.
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
	//! \brief  Dies ist ein C++ Konstruktor f�r den Pascal Parser.
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
	//! \brief  Dies ist ein C++ Konstruktor f�r den Pascal Parser.
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
	//! \brief  Dies ist ein C++ De-struktor f�r die Pascal Parser Klassen-Bereinigung.
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
	//! \brief  Dies ist der C++ Konstruktor f�r den C Parser.
	//! \param  Application& ptr - Zeiger auf ein zugewiesenes Application Objekt
	//! \return internes Objekt auf diese Klasse.
	//! \~endGerman
	PL_cLang(Application&) {
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
//! \brief  Die Parser Klasse, f�r PL - Pascal Projekte.
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
	//! \brief  Dies ist der C++ Konstruktor f�r den Pascal Parser.
	//! \param  Application& ptr - Zeiger auf ein zugewiesenes Application Objekt
	//! \return internes Objekt auf diese Klasse.
	//! \~endGerman
	PL_Executable(Application&) {
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
	//! \brief  Dies ist ein C++ Konstruktor f�r den Pascal Parser.
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
	//! \brief  Dies ist ein C++ Konstruktor f�r den Pascal Parser.
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
	//! \brief  Dies ist ein C++ Konstruktor f�r den Pascal Parser.
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
	//! \brief  Dies ist ein C++ Konstruktor f�r den Pascal Parser.
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
	//! \brief  Dies ist ein C++ De-struktor f�r die Pascal Parser Klassen-Bereinigung.
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
		DEBUGSTR("ctor: PL_Console ()")
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
	
	int output= 0;

	try {
		setlocale(LC_ALL,"");
		bindtextdomain ("prolog32", getenv("PWD"));
		textdomain     ("prolog32");

		// ----------------------------------------
		// get command arguments from console ...
		// -i<input file> -o<output file>
		// ----------------------------------------
		if (argc < 2) {
			Win32API      win ;
			Console       con ( win );
			Application   app ( con );
			
			app.run();
			return SUCCESS;
		}

		for (int arg = 1; arg < argc; ++arg)
		{
			s0.clear();
			s0.append(argv[arg]);

			switch (s0.at(0)) {
				case '-':
					switch (s0.at(1)) {
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
				Win32API      win ;
				Console       con ( win );
				Application   app ( con );
				PL_Executable prg ( app );
				
				prg.PL_parseFile  ( item );
				
				return 0;
			}
			// -------------------------------------------------------
			// we deal with the extension of the file; here: Assembler
			// -------------------------------------------------------
			if (item.substr(item.find_last_of(".") + 1) == "asm")
			{
				Win32API     win ;
				Console      con ( win );
				Application  app ( con );
				PL_Assembler prg ( app );
				
				prg.PL_parseFile ( item );
				
				return 0;
			}
			// -----------------------------------------------------
			// we deal with the extension of the file; here: Fortran
			// -----------------------------------------------------
			if (item.substr(item.find_last_of(".") + 1) == "for")
			{
				Win32API    win ;
				Console     con ( win );
				Application app ( con );
				PL_Fortran  prg ( app );
				
				prg.PL_parseFile( item );
				
				return 0;
			}
			// -----------------------------------------------------
			// we deal with the extension of the file; here: Prolog
			// -----------------------------------------------------
			if (item.substr(item.find_last_of(".") + 1) == "pl")
			{
				Win32API    win ;
				Console     con ( win );
				Application app ( con );
				PL_Prolog   prg ( app );
				
				prg.PL_parseFile( item );
				
				return 0;
			}
			// -----------------------------------------------------
			// we deal with the extension of the file; here: Pascal
			// -----------------------------------------------------
			if (item.substr(item.find_last_of(".") + 1) == "pas")
			{
				Win32API    win ;
				Console     con ( win );
				Application app ( con );
				PL_Pascal   prg ( app );
				
				prg.PL_parseFile( item );
				
				return 0;
			}
			// -----------------------------------------------------
			// // we deal with the extension of the file; here: C
			// -----------------------------------------------------
			if (item.substr(item.find_last_of(".") + 1) == "cc")
			{
				Win32API    win ;
				Console     con ( win );
				Application app ( con );
				PL_cLang    prg ( app );
				
				prg.PL_parseFile( item );
				
				return 0;
			}
			// -------------------------------------------------------
			// // we deal with the extension of the file; here: dBase
			// -------------------------------------------------------
			if (item.substr(item.find_last_of(".") + 1) == "prg")
			{
				Win32API    win ;
				Console     con ( win );
				Application app ( con );
				PL_dBase    prg ( app );
				prg.PL_parseFile( item );
				
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
