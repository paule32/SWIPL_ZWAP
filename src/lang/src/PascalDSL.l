%{
# include "common.h"
# include "PascalDSL.tab.h"

char buffer[200];
typedef void (*addParserErrorText)(char* message);
static addParserErrorText m_addParserErrorText;

int count(void);
void* addTextPtr;

int yy_pascal_count(void) { return yylineno; }
int yy_pascal_lex_get_line(void) { return yy_pascal_count(); }
int yy_pascal_lex_getlines(void) { return yy_pascal_count(); }
%}

DIGIT    [0-9]
ID       [a-zA-Z][a-zA-Z0-9]*

A [a|A]
B [b|B]
C [c|C]
D [d|D]
E [e|E]
F [f|F]
G [g|G]
H [h|H]
I [i|I]
J [j|J]
K [k|K]
L [l|L]
M [m|M]
N [n|N]
O [o|O]
P [p|P]
Q [q|Q]
R [r|R]
S [s|S]
T [t|T]
U [u|U]
V [v|V]
W [w|W]
X [x|X]
Y [y|Y]
Z [z|Z]

%x Comment1 Comment2 Comment3
%%

"//".*                  { yy_pascal_count(); /* DO NOTHING */ }
"//".*\n                { yy_pascal_count(); /* DO NOTHING */ ++yylineno; }

"&&".*                  { yy_pascal_count(); /* DO NOTHING */ }
"&&".*\n                { yy_pascal_count(); /* DO NOTHING */ ++yylineno; }

"**".*                  { yy_pascal_count(); /* DO NOTHING */ }
"**".*\n                { yy_pascal_count(); /* DO NOTHING */ ++yylineno; }

"/*"                    { yy_pascal_count(); BEGIN(Comment1); }
<Comment1>\n*           { yy_pascal_count(); ++yylineno;      }
<Comment1>"*"+"/"       { yy_pascal_count(); BEGIN(INITIAL);  }

"(*"                    { yy_pascal_count(); BEGIN(Comment2); }
<Comment2>\n            { yy_pascal_count(); ++yylineno;      }
<Comment2>"*)"          { yy_pascal_count(); BEGIN(INITIAL);  }

\{                      { yy_pascal_count(); BEGIN(Comment3); }
<Comment3>\n            { yy_pascal_count(); ++yylineno;      }
<Comment3>\}            { yy_pascal_count(); BEGIN(INITIAL);  }

[ \t]*                  { /* empty */ }
[\n|\r\n]               { yy_pascal_count(); ++yylineno; }

{DIGIT}+".."+{DIGIT}+ { return TOK_PAS_RANGE; }

{A}{N}{D}                     { yy_pascal_count(); return TOK_PAS_AND; }
{A}{R}{R}{A}{Y}               { yy_pascal_count(); return TOK_PAS_ARRAY; }
{B}{E}{G}{I}{N}               { yy_pascal_count(); return TOK_PAS_BEGIN; }
{C}{A}{S}{E}                  { yy_pascal_count(); return TOK_PAS_CASE; }
{C}{L}{A}{S}{S}               { yy_pascal_count(); return TOK_PAS_CLASS; }
{C}{O}{N}{S}{T}               { yy_pascal_count(); return TOK_PAS_CONST; }
{D}{I}{V}                     { yy_pascal_count(); return TOK_PAS_DIV; }
{D}{O}                        { yy_pascal_count(); return TOK_PAS_DO; }
{D}{O}{W}{N}{T}{O}            { yy_pascal_count(); return TOK_PAS_DOWNTO; }
{E}{L}{S}{E}                  { yy_pascal_count(); return TOK_PAS_ELSE; }
{E}{N}{D}                     { yy_pascal_count(); return TOK_PAS_END; }
{F}{I}{L}{E}                  { yy_pascal_count(); return TOK_PAS_FILE; }
{F}{O}{R}                     { yy_pascal_count(); return TOK_PAS_FOR; }
{F}{O}{R}{W}{A}{R}{D}         { yy_pascal_count(); return TOK_PAS_FORWARD; }
{F}{U}{N}{C}{T}{I}{O}{N}      { yy_pascal_count(); return TOK_PAS_FUNCTION; }
{G}{O}{T}{O}                  { yy_pascal_count(); return TOK_PAS_GOTO; }
{I}{F}                        { yy_pascal_count(); return TOK_PAS_IF; }
{I}{M}{P}{L}{E}{M}{E}{N}{T}{A}{T}{I}{O}{N}   {
                                yy_pascal_count(); return TOK_PAS_IMPLEMENTATION; }
{I}{N}                        { yy_pascal_count(); return TOK_PAS_IN; }
{I}{N}{T}{E}{R}{F}{A}{C}{E}   { yy_pascal_count(); return TOK_PAS_INTERFACE; }
{L}{A}{B}{E}{L}               { yy_pascal_count(); return TOK_PAS_LABEL; }
{L}{I}{B}{R}{A}{R}{Y}         { yy_pascal_count(); return TOK_PAS_LIBRARY; }
{M}{O}{D}                     { yy_pascal_count(); return TOK_PAS_MOD; }
{N}{I}{L}                     { yy_pascal_count(); return TOK_PAS_NIL; }
{N}{O}{T}                     { yy_pascal_count(); return TOK_PAS_NOT; }
{O}{F}                        { yy_pascal_count(); return TOK_PAS_OF; }
{O}{R}                        { yy_pascal_count(); return TOK_PAS_OR; }
{P}{A}{C}{K}{E}{D}            { yy_pascal_count(); return TOK_PAS_PACKED; }
{P}{R}{I}{V}{A}{T}{E}         { yy_pascal_count(); return TOK_PAS_PRIVATE; }
{P}{R}{O}{C}{E}{D}{U}{R}{E}   { yy_pascal_count(); return TOK_PAS_PROCEDURE; }
{P}{R}{O}{G}{R}{A}{M}         { yy_pascal_count(); return TOK_PAS_PROGRAM; }
{P}{R}{O}{T}{E}{C}{T}{E}{D}   { yy_pascal_count(); return TOK_PAS_PROTECTED; }
{P}{U}{B}{L}{I}{C}            { yy_pascal_count(); return TOK_PAS_PUBLIC; }
{P}{U}{B}{L}{I}{S}{H}{E}{D}   { yy_pascal_count(); return TOK_PAS_PUBLISHED; }
{R}{E}{C}{O}{R}{D}            { yy_pascal_count(); return TOK_PAS_RECORD; }
{R}{E}{P}{E}{A}{T}            { yy_pascal_count(); return TOK_PAS_REPEAT; }
{S}{E}{T}                     { yy_pascal_count(); return TOK_PAS_SET; }
{T}{H}{E}{N}                  { yy_pascal_count(); return TOK_PAS_THEN; }
{T}{O}                        { yy_pascal_count(); return TOK_PAS_TO; }
{T}{Y}{P}{E}                  { yy_pascal_count(); return TOK_PAS_TYPE; }
{U}{N}{I}{T}                  { yy_pascal_count(); return TOK_PAS_UNIT; }
{U}{N}{T}{I}{L}               { yy_pascal_count(); return TOK_PAS_UNTIL; }
{U}{S}{E}{S}                  { yy_pascal_count(); return TOK_PAS_USES; }
{V}{A}{R}                     { yy_pascal_count(); return TOK_PAS_VAR; }
{W}{H}{I}{L}{E}               { yy_pascal_count(); return TOK_PAS_WHILE; }
{W}{I}{T}{H}                  { yy_pascal_count(); return TOK_PAS_WITH; }

{ID}                          { return TOK_PAS_ID;  }

{DIGIT}+           { return TOK_PAS_NUMBER; }
{DIGIT}+\.{DIGIT}+ { return TOK_PAS_FLOAT;  }

";"  { return ';'; }
\:   { return ':'; }
\.   { return '.'; }
\,   { return ','; }
\=   { return '='; }
\(   { return '('; }
\)   { return ')'; }
\[   { return '['; }
\]   { return ']'; }

\+   { return '+'; }
\-   { return '-'; }
\*   { return '*'; }
\/   { return '/'; }

.                 {
  sprintf( buffer, "Unrecognized character: %s\n", yytext );
  pascalerror(buffer);
}

%%

void yy_pascal_lex_parser_error(void (*func)(char*)) {
  m_addParserErrorText = func;
}

int pascalwrap(void) { return 1; }

void pascalerror(char* m)
{
  char bu[320];
  sprintf(bu,"error: %d: %s",
  yylineno, m);
  m_addParserErrorText(bu);
}

BOOL yy_pascal_lex_main(char* filename)
{
  BOOL result;
  yyin = fopen(filename,"r");
  if (!yyin) {
    sprintf(buffer, "could not open file: %s", filename);
    m_addParserErrorText(buffer);
    return false;
  }

  //yylex();
  result = pascalparse();
  fclose(yyin);

  return result;
}

void yy_pascal_lex_close(void) {
  fclose(yyin);
}

void __declspec(dllexport) yy_pascal_lex_parser_error(void (*func)(char*));
void __declspec(dllexport) yy_pascal_lex_close(void);

int  __declspec(dllexport) yy_pascal_lex_get_line(void);
int  __declspec(dllexport) yy_pascal_lex_getlines(void);

BOOL __declspec(dllexport) yy_pascal_lex_main(char* filename);
