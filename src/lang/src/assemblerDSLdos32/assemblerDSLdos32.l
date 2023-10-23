%{
// ----------------------------------------------------------------------------
// File   : assemblerDSLdos32.l
// Author : Jens Kallup (c) 2023-07.01
// License: all rights reserved.
// ----------------------------------------------------------------------------
# include "../common.h"
# include "assemblerDSLdos32.tab.h"

// ----------------------------------------------------------------------------
// parser variables and constants:
// ----------------------------------------------------------------------------

typedef void (*addParserErrorText)(char* message);
static addParserErrorText m_addParserErrorText ;

int count(void);
void* addTextPtr;

int yy_col = 1;
int yy_row = 1;

int        yy_assembler_dos32_count(void)        { return yy_row; }
int EXPORT yy_assembler_dos32_lex_get_line(void) { return yy_assembler_dos32_count(); }
int EXPORT yy_assembler_dos32_lex_getlines(void) { return yy_assembler_dos32_count(); }

extern void yyerror(const char* msg);

%}

DIGIT       [0-9]
LETTER      [a-zA-Z]+
HEXALETTER  [a-fA-F]+
HEXANUMBER  [0][x](({DIGIT}|{HEXALETTER})+)
NUM         ({DIGIT}+)
ID          ([a-zA-Z]+)|([a-zA-Z0-9_]+)
FILE1       [ a-zA-Z0-9\_\.\\]*
FILENAME    \"(({LETTER}\:\\{FILE1})|({LETTER}\:{FILE1})|({FILE1})*)\"

A           [a|A]
B           [b|B]
C           [c|C]
D           [d|D]
E           [e|E]
F           [f|F]
G           [g|G]
H           [h|H]
I           [i|I]
J           [j|J]
K           [k|K]
L           [l|L]
M           [m|M]
N           [n|N]
O           [o|O]
P           [p|P]
Q           [q|Q]
R           [r|R]
S           [s|S]
T           [t|T]
U           [u|U]
V           [v|V]
W           [w|W]
X           [x|X]
Y           [y|Y]
Z           [z|Z]

%x Comment1

%%

[ \t]*                  { /* empty */ }
[\n|\r\n]               { yy_col = 1;      yy_row++; }

{D}{W}{O}{R}{D}         { return TOK_DWORD;    }
{W}{O}{R}{D}            { return TOK_WORD;     }
{B}{Y}{T}{E}            { return TOK_BYTE;     }

{P}{T}{R}               { return TOK_PTR;      }

{A}{A}{A}               { return TOK_AAA;      }

{A}{D}{D}               { return TOK_ADD;      }
{S}{U}{B}               { return TOK_SUB;      }

{S}{H}{L}               { return TOK_SHL;      }
{S}{H}{R}               { return TOK_SHR;      }

{A}{N}{D}               { return TOK_AND;      }
{N}{O}{T}               { return TOK_NOT;      }
{O}{R}                  { return TOK_OR;       }
{X}{O}{R}               { return TOK_XOR;      }
{N}{E}{G}               { return TOK_NEG;      }

{D}{E}{C}               { return TOK_DEC;      }
{I}{N}{C}               { return TOK_INC;      }

{I}{M}{U}{L}            { return TOK_IMUL;     }
{I}{D}{I}{V}            { return TOK_IDIV;     }

{L}{E}{A}               { return TOK_LEA;      }
{M}{O}{V}               { return TOK_MOV;      }

{P}{O}{P}               { return TOK_POP;      }
{P}{U}{S}{H}            { return TOK_PUSH;     }

{R}{E}{T}               { return TOK_RET;      }

{E}{A}{X}               { return TOK_EAX;      }
{E}{B}{P}               { return TOK_EBP;      }
{E}{B}{X}               { return TOK_EBX;      }
{E}{C}{X}               { return TOK_ECX;      }
{E}{D}{I}               { return TOK_EDI;      }
{E}{D}{X}               { return TOK_EDX;      }
{E}{I}{P}               { return TOK_EIP;      }
{E}{S}{I}               { return TOK_ESI;      }
{E}{S}{P}               { return TOK_ESP;      }

{A}{X}                  { return TOK_AX;       }
{B}{P}                  { return TOK_BP;       }
{B}{X}                  { return TOK_BX;       }
{C}{X}                  { return TOK_CX;       }
{D}{I}                  { return TOK_DI;       }
{D}{X}                  { return TOK_DX;       }

{I}{P}                  { return TOK_IP;       }
{S}{I}                  { return TOK_SI;       }
{S}{P}                  { return TOK_SP;       }

{A}{H}                  { return TOK_AH;       }
{B}{H}                  { return TOK_BH;       }
{C}{H}                  { return TOK_CH;       }
{D}{H}                  { return TOK_DH;       }

{A}{L}                  { return TOK_AL;       }
{B}{L}                  { return TOK_BL;       }
{C}{L}                  { return TOK_CL;       }
{D}{L}                  { return TOK_DL;       }

{C}{M}{P}               { return TOK_CMP;      }

{J}{N}{E}               { return TOK_JNE;      }
{J}{G}{E}               { return TOK_JGE;      }
{J}{L}{E}               { return TOK_JLE;      }

{J}{L}                  { return TOK_JL;       }
{J}{E}                  { return TOK_JE;       }
{J}{G}                  { return TOK_JG;       }
{J}{Z}                  { return TOK_JZ;       }

[0-9]+                  { yylval.node_and_value.value = atof(yytext); return TOK_NUMBER; }
[0-9]+\.[0-9]+          { yylval.node_and_value.value = atof(yytext); return TOK_NUMBER; }

[a-zA-Z_]+|[a-zA-Z0-9_]+  {
	// -----------------------------------
	// pattern for: identifier's ...
	// -----------------------------------
	yylval.node_and_value.name = (char*) malloc( strlen( yytext ) + 1); strcpy(
	yylval.node_and_value.name, yytext);
	
	return TOK_ID;
}

[a-zA-Z_]+|[a-zA-Z0-9_]+[ \t]*\:  {
	// -----------------------------------
	// pattern for: identifier's ...
	// -----------------------------------
	yylval.node_and_value.name = (char*) malloc( strlen( yytext ) + 1); strcpy(
	yylval.node_and_value.name, yytext);
	
	return TOK_LABEL;
}

"=="                    { return TOK_EQEQ; }
"!="					{ return TOK_LTGT; }
"=>"                    { return TOK_EQGT; }
"=<"                    { return TOK_EQLT; }
"<="                    { return TOK_LTEQ; }
">="                    { return TOK_GTEQ; }

\;.*                    { /* DO NOTHING */ }
\;.*\n                  { /* DO NOTHING */ yy_row++; }

":"                     { return ':'; }
"-"                     { return '-'; }
"+"                     { return '+'; }
"*"                     { return '*'; }
"/"                     { return '/'; }
\%                      { return '%'; }

\#                      { return '#'; }

\(                      { return '('; }
\)                      { return ')'; }
\[                      { return '['; }
\]                      { return ']'; }
\{                      { return '{'; }
\}                      { return '}'; }
\,                      { return ','; }
\.                      { return '.'; }

.                       {
    char buffer[200];
    sprintf( buffer, "Unrecognized character: %s\n", yytext );
    yyerror(buffer);
}

<<EOF>>                 { return TOK_YYEOF; }
%%

void EXPORT
yy_assembler_dos32_lex_parser_error (void (* func)(const char *message)) {
	m_addParserErrorText = func;
}

int yywrap(void) { return 1; }

void yyerror(const char* m)
{
	char * buffer = (char *) malloc(1024);
	char * number = (char *) malloc( 255);
	
	itoa(yy_row,number,10);
	
	strcpy( buffer, "error in line: ");
	strcat( buffer, number);
	strcat( buffer, ": ");
	strcat( buffer, m);

	m_addParserErrorText(buffer);
}

BOOL EXPORT
yy_assembler_dos32_lex_main(
    char* filename,
    char* tempDir )
{
    BOOL   result = FALSE;
    char * buffer;

	// ------------------------------------------
	// try to open file, saved before ...
	// ------------------------------------------
    if (!(yyin = fopen(filename,"r"))) {
        buffer = (char*) malloc(100);
    
        sprintf(buffer, "could not open file: %s", filename);
        m_addParserErrorText(buffer);
    
        free(buffer);
        return false;
    }

    yy_row = 1;
    yy_col = 1;

	// ------------------------------------------
	// start the race run ...
	// ------------------------------------------
	node_head        = (struct node *) malloc( sizeof( struct node ) );
	node_new         = (struct node *) malloc( sizeof( struct node ) ); // dummy to point head itself
	node_head->token = (       char *) malloc( 8 );
	strcpy( node_head->token, "root" );
	
	// ------------------------
	// root/first record item
	// ------------------------
	node_new->prev = node_head;
	node_new->next = NULL;
	
	// ------------------------
	// call parser ...
	// ------------------------
	result = yyparse();
	
	fclose(yyin);
	return result;
}

void EXPORT
yy_assembler_dos32_lex_close(void) {
    fclose(yyin);
}
