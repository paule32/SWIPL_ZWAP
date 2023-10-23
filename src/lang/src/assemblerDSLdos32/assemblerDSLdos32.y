%{
// ----------------------------------------------------------------------------
// File   : assemblerDSLdos32.y
// Author : Jens Kallup (c) 2023-07.01
// License: all rights reserved.
// ----------------------------------------------------------------------------
# include "../common.h"

// ----------------------------------------------------------------------------
// parser variables and constants:
// ----------------------------------------------------------------------------
extern char* data_code;
extern char* data_text;
extern char* data_data;

extern char * yytext;

// ----------------------------------------------------------------------------
// temporary used node symbols/struct:
// ----------------------------------------------------------------------------
struct node * node_head = NULL;
struct node * node_new  = NULL;
struct node * node_prev = NULL;

struct node *
mknode(
	char * fmt,
	struct node * prev ,
	float         value,
	char        * token
);

extern void tree_execute(void);
%}

%union {
	struct {
		float         value;
		char        * name ;
		struct node * node_for;
		struct node * stmt ;
		struct node * next ;
		struct node * prev ;
	}	node_and_value;
}

%token <node_and_value> TOK_ID
%token <node_and_value> TOK_NUMBER TOK_STRING TOK_LABEL

%token <node_and_value> TOK_EQEQ TOK_EQLT TOK_EQGT TOK_GTEQ TOK_LTEQ TOK_LTGT
%token <node_and_value> TOK_ASSIGN TOK_FALSE TOK_TRUE

%token <node_and_value> TOK_AND TOK_NOT TOK_OR TOK_XOR TOK_NEG
%token <node_and_value> TOK_SHL TOK_SHR

%token <node_and_value> TOK_JE TOK_JNE TOK_JZ TOK_JG TOK_JGE TOK_JL TOK_JLE TOK_CMP

%token <node_and_value> TOK_AAA
%token <node_and_value> TOK_ADD

%token <node_and_value> TOK_DEC
%token <node_and_value> TOK_INC

%token <node_and_value> TOK_IMUL TOK_IDIV

%token <node_and_value> TOK_LEA
%token <node_and_value> TOK_MOV
%token <node_and_value> TOK_POP
%token <node_and_value> TOK_PUSH
%token <node_and_value> TOK_RET
%token <node_and_value> TOK_SUB

%token <node_and_value> TOK_EAX
%token <node_and_value> TOK_EBP
%token <node_and_value> TOK_EBX
%token <node_and_value> TOK_ECX
%token <node_and_value> TOK_EDI
%token <node_and_value> TOK_EDX
%token <node_and_value> TOK_EIP
%token <node_and_value> TOK_ESI
%token <node_and_value> TOK_ESP

%token <node_and_value> TOK_AX
%token <node_and_value> TOK_BP
%token <node_and_value> TOK_BX
%token <node_and_value> TOK_CX
%token <node_and_value> TOK_DX

%token <node_and_value> TOK_AH
%token <node_and_value> TOK_BH
%token <node_and_value> TOK_CH
%token <node_and_value> TOK_DH

%token <node_and_value> TOK_AL
%token <node_and_value> TOK_BL
%token <node_and_value> TOK_CL
%token <node_and_value> TOK_DL

%token <node_and_value> TOK_IP
%token <node_and_value> TOK_SP

%token <node_and_value> TOK_DI
%token <node_and_value> TOK_SI

%token <node_and_value> TOK_DWORD
%token <node_and_value> TOK_WORD
%token <node_and_value> TOK_BYTE
%token <node_and_value> TOK_PTR

%type  <node_and_value> number
%type  <node_and_value> factor
%type  <node_and_value> term

%type  <node_and_value> expr
%type  <node_and_value> ident
%type  <node_and_value> stmt

%type  <node_and_value> reg8 reg8L reg8H reg16 reg32

%token TOK_YYEOF 0

%start program

%%

program
	:	/* empty */ { }
	|	program stmt  { }
	|	program error {
		char * buffer = (char *) malloc(1024);

		strcpy ( buffer,"Error in Grammar");
		yyerror( buffer );
	}
	;

stmt
	:	/* empty */ { }
	|	TOK_AAA reg32 ',' reg32 stmt
	|	TOK_AAA reg32 ',' reg16 stmt
	|	TOK_AAA reg32 ',' reg8H stmt
	|	TOK_AAA reg32 ',' reg8L stmt
	|	TOK_AAA reg16 ',' reg16 stmt
	|	TOK_AAA reg16 ',' reg8H stmt
	|	TOK_AAA reg16 ',' reg8L stmt
	|	TOK_AAA reg8H ',' reg8H stmt
	|	TOK_AAA reg8L ',' reg8L stmt {
	}
	|	TOK_AAA reg8L ',' expr  stmt
	|	TOK_AAA reg8L ',' ident stmt {
	}
	|	TOK_AAA reg8H ',' expr  stmt
	|	TOK_AAA reg8H ',' ident stmt {
	}
	|	TOK_AAA reg16 ',' expr  stmt
	|	TOK_AAA reg16 ',' ident stmt {
	}
	|	TOK_AAA reg32 ',' expr  stmt
	|	TOK_AAA reg32 ',' ident stmt {
	
	}
	|	TOK_ADD reg ',' reg stmt
	|	TOK_ADD reg ',' mem stmt
	|	TOK_ADD mem ',' reg stmt
	|	TOK_ADD reg ',' con stmt
	|	TOK_ADD mem ',' con stmt {
	}
	|	TOK_SHL reg ',' con
	|	TOK_SHL mem ',' con
	|	TOK_SHL reg ',' TOK_CL
	|	TOK_SHL mem ',' TOK_CL {
	}
	|	TOK_SHR reg ',' con
	|	TOK_SHR mem ',' con
	|	TOK_SHR reg ',' TOK_CL
	|	TOK_SHR mem ',' TOK_CL {
	}
	|	TOK_AND reg ',' reg
	|	TOK_AND reg ',' mem
	|	TOK_AND mem ',' reg
	|	TOK_AND reg ',' con
	|	TOK_AND mem ',' con {
	}
	|	TOK_NOT reg ',' reg
	|	TOK_NOT reg ',' mem
	|	TOK_NOT mem ',' reg
	|	TOK_NOT reg ',' con
	|	TOK_NOT mem ',' con {
	}
	|	TOK_XOR reg ',' reg
	|	TOK_XOR reg ',' mem
	|	TOK_XOR mem ',' reg
	|	TOK_XOR reg ',' con
	|	TOK_XOR mem ',' con {
	}
	|	TOK_OR reg ',' reg
	|	TOK_OR reg ',' mem
	|	TOK_OR mem ',' reg
	|	TOK_OR reg ',' con
	|	TOK_OR mem ',' con {
	}
	|	TOK_DEC reg stmt
	|	TOK_DEC mem stmt {
	}
	|	TOK_IMUL reg32 ',' reg32         stmt
	|	TOK_IMUL reg32 ',' mem           stmt
	|	TOK_IMUL reg32 ',' reg32 ',' con stmt
	|	TOK_IMUL reg32 ',' mem   ',' con stmt {
	}
	|	TOK_IDIV reg32 stmt
	|	TOK_IDIV mem   stmt {
	}
	|	TOK_INC reg stmt
	|	TOK_INC mem stmt {
	}
	|	TOK_LEA reg16 ',' mem16 stmt
	|	TOK_LEA reg32 ',' mem32 stmt {
	}
	|	TOK_MOV reg ',' reg stmt
	|	TOK_MOV reg ',' mem stmt
	|	TOK_MOV mem ',' reg stmt
	|	TOK_MOV reg ',' con stmt
	|	TOK_MOV mem ',' con stmt {
	}
	|	TOK_NEG reg stmt
	|	TOK_NEG mem stmt {
	}
	|	TOK_POP reg  stmt 
	|	TOK_POP mem  stmt {
	}
	|	TOK_PUSH reg stmt
	|	TOK_PUSH mem stmt
	|	TOK_PUSH con stmt {
	}
	|	TOK_CALL ident stmt
	|	TOK_RET        stmt {
	}
	|	TOK_SUB reg ',' reg stmt
	|	TOK_SUB reg ',' mem stmt
	|	TOK_SUB mem ',' reg stmt
	|	TOK_SUB reg ',' con stmt
	|	TOK_SUB mem ',' con stmt {
	}
	|	TOK_CMP reg ',' reg stmt
	|	TOK_CMP reg ',' mem stmt
	|	TOK_CMP reg ',' con stmt {
	}
	|	jump_label ident    stmt {
	}
	|	TOK_LABEL  stmt
	;

jump_label
	: TOK_JE
	| TOK_JNE
	| TOK_JZ
	| TOK_JG
	| TOK_JGE
	| TOK_JL
	| TOK_JLE
	;

con
	:	expr
	|	ident
	;
	
reg
	:	reg8L
	|	reg8H
	|	reg16
	|	reg32
	;

mem
	:	mem16
	|	mem32
	;
	
mem16
	:	'[' reg16  ']'
	|	'[' expr   ']' {
	}
	|	TOK_WORD  TOK_PTR '[' regSeq16 ']'
	|	TOK_WORD          '[' regSeq16 ']' {
	}
	|	TOK_BYTE  TOK_PTR '[' regSeq8 ']'
	|	TOK_BYTE          '[' regSeq8 ']' {
	}
	;

mem32
	:	'[' reg  ']'
	|	'[' expr ']' {
	}
	|	TOK_DWORD TOK_PTR '[' regSeq32 ']'
	|	TOK_DWORD         '[' regSeq32 ']' {
	}
	|	TOK_WORD  TOK_PTR '[' regSeq16 ']'
	|	TOK_WORD          '[' regSeq16 ']' {
	}
	|	TOK_BYTE  TOK_PTR '[' regSeq8 ']'
	|	TOK_BYTE          '[' regSeq8 ']' {
	}
	;

regSeq32
	:	reg
	|	expr
	|	regSeq32 '+' regSeq32
	;

regSeq16
	:	reg16
	|	reg8H
	|	reg8L
	|	expr
	|	regSeq16 '+' regSeq16
	;

regSeq8
	:	reg8L
	|	reg8H
	;
	
reg8
	:	reg8L
	|	reg8H
	;
	
reg8L
	:	TOK_AL
	|	TOK_BL
	|	TOK_CL
	|	TOK_DL
	;
	
reg8H
	:	TOK_AH
	|	TOK_BH
	|	TOK_CH
	|	TOK_DH
	;

reg16
	:	TOK_AX
	|	TOK_BX
	|	TOK_CX
	|	TOK_DX
	|	TOK_DI
	|	TOK_SI {
	}
	|	reg8
	;

reg32
	:	TOK_EAX
	|	TOK_EBX
	|	TOK_ECX
	|	TOK_EDX
	|	TOK_EDI
	;

expr
	:	expr '-' term
	|	expr '+' term
	|	term
	;

term
	:	term '*' factor
	|	term '/' factor
	|	factor
	;

factor
	:	number
	|	'-' number   { }
	|	'(' expr ')' { }
	;

number
	:	TOK_NUMBER
	|	ident
	;

ident
	:	TOK_ID
	;

%%
