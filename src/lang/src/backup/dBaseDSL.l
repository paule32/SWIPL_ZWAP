%{
// ----------------------------------------------------------------------------
// File   : dbaseDSL.l
// Author : Jens Kallup (c) 2023-07.01
// License: all rights reserved.
// ----------------------------------------------------------------------------
# include "common.h"
# include "dbasedslparser.h"

// ----------------------------------------------------------------------------
// parser variables and constants:
// ----------------------------------------------------------------------------
char* data_code;
char* data_text;
char* data_data;

typedef void (*addParserErrorText)(char* message);
static addParserErrorText m_addParserErrorText;

int count(void);
void* addTextPtr;

int yy_col = 1;
int yy_row = 1;

int yy_dbase_count(void)        { return yy_row; }
int yy_dbase_lex_get_line(void) { return yy_dbase_count(); }
int yy_dbase_lex_getlines(void) { return yy_dbase_count(); }

#define int YYSTYPE
%}

DIGIT       [0-9]
LETTER      [a-zA-Z]
HEXALETTER  [a-fA-F]
HEXANUMBER  [0][x](({DIGIT}|{HEXALETTER})+)
NUM         ({DIGIT}+)
ID          [a-z_]+[a-zA-Z0-9_]*
FILE1       [ a-zA-Z0-9\_\.\\]*
FILENAME    \"(({LETTER}\:\\{FILE1})|({LETTER}\:{FILE1})|({FILE1})*)\"
STRING      ("([^"]|"")*")

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

%x Comment1

%%

"//".*                  { /* DO NOTHING */ }
"//".*\n                { /* DO NOTHING */ }

"&&".*                  { /* DO NOTHING */ }
"&&".*\n                { /* DO NOTHING */ }

"**".*                  { /* DO NOTHING */ }
"**".*\n                { /* DO NOTHING */ }

"/*"                    { BEGIN(Comment1); }
<Comment1>\n*           { yy_row += 1;     }
<Comment1>"*"+"/"       { BEGIN(INITIAL);  }

[ \t]*                  { /* empty */ }
[\n|\r\n]               { yy_col = 1; yylineno++;   }

{ID}                        { return TOK_DBASE_ID    ; }

[0-9]+           { MessageBoxA(0,yytext,"infooo111",0); return TOK_DBASE_NUMBER; }
[0-9]+\.[0-9]+   { MessageBoxA(0,yytext,"infooo222",0); return TOK_DBASE_NUMBER; }

":"                     { return TOK_DBASE_SYM_1; }
";"                     { return TOK_DBASE_SYM_2; }
"+"                     { return TOK_DBASE_SYM_3; }
"-"                     { return TOK_DBASE_SYM_4; }
"*"                     { return TOK_DBASE_SYM_5; }
"/"                     { return TOK_DBASE_SYM_6; }
<<EOF>>                 { return TOK_DBASE_YYEOF; }
.                       {
    char buffer[200];
    sprintf( buffer, "Unrecognized character: %s\n", yytext );
    dbaseerror(buffer);
  }

%%

void yy_dbase_lex_parser_error(void (*func)(char*)) {
  m_addParserErrorText = func;
}

int yywrap(void) { return 1; }

void dbaseerror(char* m)
{
  char bu[320];
  sprintf(bu,"error: %d: %s",
  yy_row, m);
  m_addParserErrorText(bu);
}

BOOL EXPORT yy_dbase_lex_main(
    char* filename,
    char* tempDir )
{
    BOOL  result;
    char* buffer;
    FILE* yy_out;
  
    int   length;
    int   bytesWritten;
  
MessageBoxA(0,filename,"tempdir",0);

    if (strlen(tempDir) < 1) {
        buffer = (char*) malloc(100);

        sprintf(buffer,"no temp directory given.");
        m_addParserErrorText(buffer);
    
        free(buffer);
        return false;
    }
MessageBoxA(0,"11111,"0000",0);

    yyin = fopen(filename,"r");
    if (!yyin) {
        buffer = (char*) malloc(100);
    
        sprintf(buffer, "could not open file: %s", filename);
        m_addParserErrorText(buffer);
    
        free(buffer);
        return false;
    }

    yy_row = 1;
    yy_col = 1;

    data_code = (char*) malloc(2048);
    data_text = (char*) malloc(2048);
    data_data = (char*) malloc(2048);

    strcpy(data_code,"section .code\n");
    strcpy(data_text,"section .text\n");
    strcpy(data_data,"section .data\n");

    strcat(data_code,"global _start\n");
    strcat(data_code,"_start:\n");
    strcat(data_code,"  finit  ; init FPU stack\n");

    // ------------------------------------------
    // start the race run ...
    // ------------------------------------------
    result = yyparse();
    fclose(yyin);

    // re-alloc memory
    data_code = (char*) realloc(
    data_code,strlen(
    data_code)+10);

    strcat(data_code,"  ret\n");

    // ------------------------------------------
    // output assembler:
    // ------------------------------------------
    if (strlen(tempDir) > 1)
        buffer = (char*) malloc( strlen(
        tempDir) + 32);
    else
        buffer = (char*) malloc( strlen(
        dBaseDLLdirectory) + 32);

    if (strlen(tempDir) > 1)
        strcpy(buffer,tempDir); else
        strcpy(buffer,tempDir);
        strcat(buffer,"\\temp.$asm");
    
    yy_out = fopen(buffer,"w");
    if (!yy_out)
    {
        free(data_code);
        free(data_text);
        free(data_data);

        m_addParserErrorText("temp.$asm could not be created.");
        return false;
    }

    free(buffer);
       buffer = (char*) malloc(
    + strlen(data_code)+1
    + strlen(data_data)+1
    + strlen(data_text)+2048);

    sprintf(buffer,"%s",
    "; ---------------------------------------\n"
    "; (c) 2023 by Jens Kallup - paule32      \n"
    "; all rights reserved.                   \n"
    "; ---------------------------------------\n"
    "; yasm.exe -f bin input.asm -o output.exe\n"
    "; ---------------------------------------\n");
    strcat(buffer ,data_code);
    strcat(buffer ,data_text);
    strcat(buffer ,data_data);
 
    length       = strlen( buffer );
    bytesWritten = fwrite(
        buffer,
        sizeof(char),
        length,
        yy_out);

    if (bytesWritten != length)
    dbaseerror("can not write data.");

    fclose( yy_out );
    free  ( buffer );

    free(data_code);
    free(data_text);
    free(data_data);
    return result;
}

void yy_dbase_lex_close(void) {
    fclose(yyin);
}

void EXPORT yy_dbase_lex_parser_error(void (*func)(char*));
void EXPORT yy_dbase_lex_close(void);

int  EXPORT yy_dbase_lex_get_line(void);
int  EXPORT yy_dbase_lex_getlines(void);

BOOL EXPORT yy_dbase_lex_main(char*, char*);
