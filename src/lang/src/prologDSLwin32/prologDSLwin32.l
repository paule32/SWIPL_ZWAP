%{
// ----------------------------------------------------------------------------
// File   : prologDSLwin32.l
// Author : Jens Kallup (c) 2023-07.01
// License: all rights reserved.
// ----------------------------------------------------------------------------
# include "../common.h"
# include "prologDSLwin32.tab.h"

int count(void);
void* addTextPtr;

int yy_col = 1;
int yy_row = 1;

int        yy_prolog_win32_count(void)        { return yy_row; }
int EXPORT yy_prolog_win32_lex_get_line(void) { return yy_prolog_win32_count(); }
int EXPORT yy_prolog_win32_lex_getlines(void) { return yy_prolog_win32_count(); }

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

\%.*                      { /* DO NOTHING */ }
\%.*\n                    { /* DO NOTHING */ yy_row++; }

"/*"                      { BEGIN(Comment1); }
<Comment1>\n*             { yy_row += 1;     yy_row++; }
<Comment1>"*"+"/"         { BEGIN(INITIAL);  }

[ \t]*                    { /* empty */ }
[\n|\r\n]                 { yy_col = 1;      yy_row++; }

[0-9]+                    {
    yylval.node_and_value.name = new char[ strlen( yytext ) + 1];
    yylval.node_and_value.name = strcpy  (
    yylval.node_and_value.name,  yytext );

    return TOK_NUMBER;
}
[0-9]+\.[0-9]+            {
    yylval.node_and_value.name = new char[ strlen( yytext ) + 1];
    yylval.node_and_value.name = strcpy  (
    yylval.node_and_value.name,  yytext );

    return TOK_NUMBER;
}

[a-zA-Z_]+|[a-zA-Z0-9_]+  {
    // -----------------------------------
    // pattern for: identifier's ...
    // -----------------------------------
    yylval.node_and_value.name = new char[ strlen( yytext ) + 1];
    yylval.node_and_value.name = strcpy  (
    yylval.node_and_value.name,  yytext );

    return TOK_ID;
}

["']((\\.|[^"'])*)["'] {
    // -----------------------------------
    // pattern for: "Hello World"
    // pattern for: 'Hello World'
    // -----------------------------------
    yylval.node_and_value.name = new char[ strlen( yytext ) + 1];
    yylval.node_and_value.name = strcpy  (
    yylval.node_and_value.name,  yytext );

    return TOK_STRING;
}
["']((\\.|[^"'])*)["'][ \t\n\r] {
    // -----------------------------------
    // pattern for: "Hello World"
    // pattern for: 'Hello World'
    // -----------------------------------
    yylval.node_and_value.name = new char[ strlen( yytext ) + 1];
    yylval.node_and_value.name = strcpy  (
    yylval.node_and_value.name,  yytext );

    return TOK_STRING;
}

":"                     { return ':'; }
";"                     { return ';'; }
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

\?                      { return TOK_PRINT_ONE; }

.                       {
    AnsiString str1 = "unrecognized character: ";
    str1 += yytext;
    yyerror( str1.c_str() );
}

<<EOF>>                 { return TOK_YYEOF; }
%%

int yywrap(void) { return 1; }

void yyerror(const char* m)
{
    AnsiString str1 = "error in line: ";
    str1 += StrToInt(yy_row);
    str1 += ": ";
    str1 += m;
    
    ShowParserErrorText( str1.c_str() );
}

BOOL EXPORT
yy_prolog_win32_lex_main(
    char* filename,
    char* tempDir )
{
    BOOL   result = FALSE;

    // ------------------------------------------
    // try to open file, saved before ...
    // ------------------------------------------
    if (!(yyin = fopen(filename,"r"))) {
        AnsiString buffer = "could not open file: ";
        buffer += filename;
        ShowParserErrorText( buffer.c_str() );
        return false;
    }

    yy_row = 1;
    yy_col = 1;

    // ------------------------
    // call parser ...
    // ------------------------
    result = yyparse();

    fclose( yyin );
    return result;
}

void EXPORT
yy_prolog_win32_lex_close(void) {
    fclose(yyin);
}

