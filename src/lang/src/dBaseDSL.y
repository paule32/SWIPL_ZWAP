%{
// ----------------------------------------------------------------------------
// File   : dBaseDSL.yy
// Author : Jens Kallup (c) 2023-07.01
// License: all rights reserved.
// ----------------------------------------------------------------------------
# include "common.h"

// ----------------------------------------------------------------------------
// parser variables and constants:
// ----------------------------------------------------------------------------
extern char* data_code;
extern char* data_text;
extern char* data_data;

#define YYSTYPE int
%}

%token <char*> ID
%token <int>         TOK_DBASE_NUMBER
%token <float>       TOK_DBASE_FLOAT

%type <float> number
%type <float> factor
%type <float> term
%type <float> expr

%token TOK_DBASE_SYM_1
%token TOK_DBASE_SYM_2
%token TOK_DBASE_SYM_3
%token TOK_DBASE_SYM_4
%token TOK_DBASE_SYM_5
%token TOK_DBASE_SYM_6

%token YYEOF 0

%start program_dbase
%%

program_dbase
  : /* empty */
  | program_dbase expr {
	char buffer[200];
    sprintf(buffer,"--> %f",$2);
    MessageBoxA(0,buffer,"3333",0);
  }
  ;

expr
  : expr '+' term     { $$ = $1 + $3; }
  | expr '-' term     { $$ = $1 - $3; }
  | term              { $$ = $1;      }
  ;
  
term
  : term '*' factor   { $$ = $1 * $3; }
  | term '/' factor   { $$ = $1 / $3; }
  | factor            { $$ = $1;      }
  ;
  
factor
  : number            { $$ =  $1; }
  | '-' number        { $$ = -$2; }
  | '(' expr ')'      { $$ =  $2; }
  ;
  
number
  : TOK_DBASE_NUMBER  { $$ = $1;  }
  ;
  
%%
