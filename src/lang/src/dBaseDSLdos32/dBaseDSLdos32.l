%{
// ----------------------------------------------------------------------------
// File   : dbaseDSL.l
// Author : Jens Kallup (c) 2023-07.01
// License: all rights reserved.
// ----------------------------------------------------------------------------
# include "../common.h"
# include "dBaseDSLdos32.tab.h"

// ----------------------------------------------------------------------------
// parser variables and constants:
// ----------------------------------------------------------------------------

typedef void (*addParserErrorText)(char* message);
static addParserErrorText m_addParserErrorText ;

int count(void);
void* addTextPtr;

int yy_col = 1;
int yy_row = 1;

int        yy_dbase_dos32_count(void)        { return yy_row; }
int EXPORT yy_dbase_dos32_lex_get_line(void) { return yy_dbase_dos32_count(); }
int EXPORT yy_dbase_dos32_lex_getlines(void) { return yy_dbase_dos32_count(); }

extern void yyerror(const char* msg);

int header_isok = 0;

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

"//".*                  { /* DO NOTHING */ }
"//".*\n                { /* DO NOTHING */ yy_row++; }

"&&".*                  { /* DO NOTHING */ }
"&&".*\n                { /* DO NOTHING */ yy_row++; }

"**"[ \t]*{E}{N}{D}[ \t]*{O}{F}[ \t]*{H}{E}{A}{D}{E}{R}[ \t]*\n {
    MessageBox(0,"121212,"sdwdewe",0);
    header_isok = 1;
}

"**".*                  { /* DO NOTHING */ }
"**".*\n                { /* DO NOTHING */ yy_row++; }

"/*"                    { BEGIN(Comment1); }
<Comment1>\n*           { yy_row += 1;     yy_row++; }
<Comment1>"*"+"/"       { BEGIN(INITIAL);  }

[ \t]*                  { /* empty */ }
[\n|\r\n]               { yy_col = 1;      yy_row++; }

{C}{L}{A}{S}{S} 				{
    if (header_isok != 1) {
        yyerror("no header available !");
        return 0;
    }   else {
        strcat(data_text,
            "unit A2;\n"
            "interface\n"
            "var Form2: TForm;\n"
            "implementation\n"
            "procedure main;\n"
            "begin\n"
              "Form2 := TForm.Create(Application);\n"
              "Form2.ShowModal;\n"
            "end;\n"
            "end.");
    }
    return TOK_CLASS;
}
{C}{L}{E}{A}{R} 				{ return TOK_CLEAR;     }
{C}{U}{S}{T}{O}{M}				{ return TOK_CUSTOM;    }
{D}{E}{F}{I}{N}{E}				{ return TOK_DEFINE;    }
{E}{L}{S}{E}					{ return TOK_ELSE;      }
{E}{N}{D}{C}{L}{A}{S}{S} 		{ return TOK_ENDCLASS;  }
{E}{N}{D}{F}{O}{R} 				{ return TOK_ENDFOR;    }
{E}{N}{D}{I}{F} 				{ return TOK_ENDIF;     }
{E}{N}{D}{W}{I}{T}{H} 		    { return TOK_ENDWITH;   }
{F}{A}{L}{S}{E} 				{ return TOK_FALSE;     }
{F}{O}{R}               		{ return TOK_FOR;       }
{F}{U}{N}{C}{T}{I}{O}{N} 		{ return TOK_FUNCTION;  }
{I}{F}							{ return TOK_IF;        }
{L}{O}{C}{A}{L} 				{ return TOK_LOCAL;     }
{N}{E}{W}               		{ return TOK_NEW;       }
{O}{F}							{ return TOK_OF;        }
{P}{A}{R}{A}{M}{E}{T}{E}{R}		{ return TOK_PARAMETER; }
{P}{R}{I}{V}{A}{T}{E}			{ return TOK_PRIVATE;   }
{P}{R}{O}{C}{E}{D}{U}{R}{E}		{ return TOK_PROCEDURE; }
{R}{E}{T}{U}{R}{N}		 		{ return TOK_RETURN;    }
{S}{E}{T}               		{ return TOK_SET;       }
{T}{O}							{ return TOK_TO;        }
{T}{R}{U}{E}			 		{ return TOK_TRUE;      }
{W}{I}{T}{H}			 		{ return TOK_WITH;      }

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

["']((\\.|[^"'])*)["'] {
	// -----------------------------------
	// pattern for: "Hello World"
	// pattern for: 'Hello World'
	// -----------------------------------
	yylval.node_and_value.name = (char*) malloc( strlen( yytext ) + 1); strcpy(
	yylval.node_and_value.name, yytext );
	
	return TOK_STRING;
}

\[(\"|\')?((\\.|[^\"\'\]])*)(\"|\')?\]   {
	// -----------------------------------
	// pattern for:  [ "Hallo \" World" ]
	// pattern for:  [ 'Hello \' World' ]
	// -----------------------------------
	char* str = yytext;
	int   len = 0;
	
	if (str[0] == '\'' || str[0] == '\"')
		str++;
		
	len = strlen(str);
	
	if (str[len - 1] == '\'' || str[len - 1] == '\"')
		str[len - 1] =  '\0' ;
	
	yylval.node_and_value.name = (char*) malloc( strlen( str ) + 1); strcpy(
	yylval.node_and_value.name, str );
	
	return TOK_STRING_BRACE;
}

\.{A}{N}{D}\.			{ return TOK_AND;    }
\.{N}{O}{T}\.			{ return TOK_NOT;    }
\.{O}{R}\.			    { return TOK_OR;     }

\.{F}\.                 { return TOK_FALSE;  }
\.{T}\.                 { return TOK_TRUE;   }

"=="                    { return TOK_EQEQ; }
"!="					{ return TOK_LTGT; }
"=>"                    { return TOK_EQGT; }
"=<"                    { return TOK_EQLT; }
"<="                    { return TOK_LTEQ; }
">="                    { return TOK_GTEQ; }

":"                     { return ':'; }
";"                     { return ';'; }
"-"                     { return '-'; }
"+"                     { return '+'; }
"*"                     { return '*'; }
"/"                     { return '/'; }
\%                      { return '%'; }

\#                      { return '#'; }

(\=)|(\:\=)             { return TOK_ASSIGN; }

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
yy_dbase_dos32_lex_parser_error (void (* func)(const char *message)) {
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
yy_dbase_dos32_lex_main(
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
yy_dbase_dos32_lex_close(void) {
    fclose(yyin);
}
