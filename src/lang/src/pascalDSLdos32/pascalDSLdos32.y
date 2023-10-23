%{
// ----------------------------------------------------------------------------
// File   : dBaseDSL.yy
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
%token <node_and_value> TOK_NUMBER TOK_STRING TOK_STRING_BRACE

%token <node_and_value> TOK_IF TOK_ELSE TOK_ENDIF
%token <node_and_value> TOK_EQEQ TOK_EQLT TOK_EQGT TOK_GTEQ TOK_LTEQ TOK_LTGT
%token <node_and_value> TOK_ASSIGN TOK_FALSE TOK_TRUE TOK_AND TOK_NOT TOK_OR
%token <node_and_value> TOK_PARAMETER TOK_LOCAL TOK_PRIVATE

%token <node_and_value> TOK_FUNCTION TOK_PROCEDURE TOK_RETURN TOK_SET TOK_CLEAR
%token <node_and_value> TOK_FOR TOK_TO TOK_ENDFOR
%token <node_and_value> TOK_CLASS TOK_OF TOK_ENDCLASS TOK_NEW
%token <node_and_value> TOK_WITH TOK_ENDWITH TOK_CUSTOM
%token <node_and_value> TOK_DEFINE

%type  <node_and_value> number
%type  <node_and_value> factor
%type  <node_and_value> term

%type  <node_and_value> expr
%type  <node_and_value> ident
%type  <node_and_value> stmt if_else_endif ident_object param_object

%token TOK_YYEOF 0

%start program

%%

program
	: /* empty */ { }
	| program stmt { }
	| program error {
		char * buffer = (char *) malloc(1024);

		strcpy ( buffer,"Error in Grammar");
		yyerror( buffer );
	}
	;

define_macro
	:	'#' TOK_DEFINE ident_object
	|	'#' TOK_DEFINE expr
	;

stmt
	:	/* empty */ { }
	|	ident_object TOK_ASSIGN expr
	{
		// -----------------------------
		// make a ident node to tree
		// -----------------------------
		node_new = (struct node *) malloc( sizeof( struct node )    );
		node_new->token = (char *) malloc( strlen( $1.name     ) + 1);
		
		strcpy(node_new->token, $1.name   );
		node_new->token_id = tt_const_ident;

		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;


		// ------------------------------
		// make a ident expr node to tree
		// ------------------------------
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );
		
		strcpy(node_new->token, "assign");
		node_new->token_id = tt_ident_assign;

		node_new->value = $3.value;
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
	}	stmt
	|	TOK_FOR ident '=' expr TOK_TO expr {
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );
		
		strcpy(node_new->token, "forloop");

		$1.node_for = (struct node *) malloc( sizeof( struct node ) );
		$1.node_for->token_id = tt_for_loop;
		$1.node_for->for_from = $4.value;
		$1.node_for->for_to   = $6.value;

		node_new->prev = $1.node_for;
		node_new->next = NULL;
		node_prev      = node_new;

	}	stmt TOK_ENDFOR {
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );
		
		strcpy(node_new->token, "forend");
		node_new->token_id = $1.node_for->token_id;
		
		node_new->prev = $1.node_for;
		node_new->next = NULL;
		node_prev      = node_new;
	}
	|	define_macro TOK_ASSIGN ident_object { }
	|	define_macro TOK_ASSIGN ident_string { }
	|	define_macro TOK_ASSIGN expr         { }
	|	define_macro            ident_object { }
	|	define_macro            ident_string { }
	|	define_macro            expr         {
	}
	|	TOK_CLASS     ident_object '(' ident_object ')' TOK_OF '(' ident_object                  ')' TOK_CUSTOM stmt TOK_ENDCLASS stmt
	|	TOK_CLASS     ident_object                      TOK_OF '(' ident_object ',' ident_object ')' TOK_CUSTOM stmt TOK_ENDCLASS stmt
	|	TOK_CLASS     ident_object                      TOK_OF     ident_object                      TOK_CUSTOM stmt TOK_ENDCLASS stmt
	|	TOK_CLASS     ident_object                      TOK_OF     ident_object                                 stmt TOK_ENDCLASS stmt {
	}
	|	TOK_LOCAL     local_object       stmt {
	}
	|	TOK_PRIVATE   ident_object       stmt { }
	|	TOK_PARAMETER param_object       stmt {
	}
	|	TOK_PROCEDURE ident args_param   stmt TOK_RETURN                   stmt
	|	TOK_FUNCTION  ident args_param   stmt TOK_RETURN   return_value    stmt {
	}
	|	TOK_WITH '('  ident_object ')'   stmt TOK_ENDWITH  stmt
	|	TOK_WITH      ident_object       stmt TOK_ENDWITH  stmt {
	}
	|	ident_object  TOK_ASSIGN TOK_NEW ident_object '(' ident_object ')' stmt
	|	ident_object  TOK_ASSIGN TOK_NEW ident_object '('              ')' stmt {
	}
	|	ident_object  TOK_ASSIGN ident_object ident_string  stmt
	|	ident_object  TOK_ASSIGN ident_object { }           stmt
	|	ident_object  TOK_ASSIGN              ident_string  stmt
	|	ident_object  TOK_ASSIGN              TOK_FALSE     stmt
	|	ident_object  TOK_ASSIGN              TOK_TRUE { }  stmt
	|	ident_object  '('        ident_object ')'           stmt
	|	ident_object  '('                     ')'      { }  stmt
	|	if_else_endif
	;

ident_object
	: TOK_ID
	| ident_object '.' ident_object
	;

local_object
	: ident_object TOK_ASSIGN TOK_NEW ident_object '(' ident_object ')'
	| ident_object TOK_ASSIGN TOK_NEW ident_object '(' ')'
	| ident_object
	| local_object ',' local_object
	;
	
param_object
	: ident_object
	| param_object ',' param_object
	;

args_param
	:	/* empty */
	|	'(' param_object ')'
	|	'('              ')'
	;

ident_string
	: TOK_STRING
	| TOK_STRING_BRACE
	| ident_string '+' ident_string
	;

return_merge
	:	/* empty */
	|	ident_object '+' ident_object
	|   ident_object '+' ident_string {
	}
	|	ident_string '+' ident_string
	|	ident_string '+' ident_object {
	}
	|	ident_object
	|	ident_string {
	}
	|	TOK_FALSE
	|	TOK_TRUE
	|	expr
	;
ident_merge
	:	return_merge
	|	return_merge '+' return_merge
	;
return_value
	:	'(' ident_merge ')'
	|	    ident_merge
	;

expr
	: expr
	{
		// ----------------------------
		// make a mul term node to tree
		// ----------------------------
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );
		
		strcpy(node_new->token, "expr");
		node_new->token_id = tt_expr_sub;

		node_new->value = $1.value;
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
	}
	'-' term
	{
		// ----------------------------
		// make a sub term node to tree
		// ----------------------------
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );
		
		strcpy(node_new->token, "term");
		node_new->token_id = tt_term_sub;

		node_new->value = $4.value;
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
		$$.value = $1.value - $4.value;
	}
	| expr
	{
		// ----------------------------
		// make a mul term node to tree
		// ----------------------------
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );
		
		strcpy(node_new->token, "expr");
		node_new->token_id = tt_expr_add;

		node_new->value = $1.value;
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
	}
	'+' term
	{
		// ----------------------------
		// make a add term node to tree
		// ----------------------------
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );
		
		strcpy(node_new->token, "term");
		node_new->token_id = tt_term_add;

		node_new->value = $4.value;
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
		$$.value = $1.value + $4.value;
	}
	| term
	{
		// ----------------------------
		// make a term node to tree:
		// ----------------------------
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );
		
		strcpy(node_new->token, "term");
		node_new->token_id = tt_term;

		node_new->value = $1.value;
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
		$$.value = $1.value;
	}
	;
  
term
	: term
	{
		// ----------------------------
		// make a term node to tree:
		// ----------------------------
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );
		
		strcpy(node_new->token, "term");
		node_new->token_id = tt_term_mul;

		node_new->value = $1.value;
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
	}
	'*' factor
	{
		// ----------------------------
		// make a mul term node to tree
		// ----------------------------
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );
		
		strcpy(node_new->token, "factor");
		node_new->token_id = tt_term_mul;

		node_new->value = $4.value;
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
		$$.value = $1.value * $4.value;
	}
	| term
	{
		// ----------------------------
		// make a div node to tree:
		// ----------------------------
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );
		
		strcpy(node_new->token, "term" );
		node_new->token_id = tt_term_div;

		node_new->value = $1.value;
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
	}
	'/' factor
	{
		// ----------------------------
		// make a div term node to tree
		// ----------------------------
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );
		
		strcpy(node_new->token, "factor");
		node_new->token_id = tt_factor_div;

		node_new->value = $4.value;
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
		$$.value = $1.value / $4.value;
	}
	| factor
	{
		// --------------------------
		// make a factor node to tree
		// --------------------------
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );
		
		strcpy(node_new->token, "factor");
		node_new->token_id = tt_factor;

		node_new->value = $1.value;
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
		$$ = $1;
	}
	;
  
factor
	: number
	{
		// --------------------------
		// make a number node to tree
		// --------------------------
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );
		
		strcpy(node_new->token, "factor");
		node_new->token_id = tt_factor_number;

		node_new->value = $1.value;
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
		$$ = $1;
	}
	| '-' number
	{
		// -----------------------------------
		// make a negative number node to tree
		// -----------------------------------
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );
		
		strcpy(node_new->token, "factor" );
		node_new->token_id = tt_factor_neg;

		node_new->value = -$2.value;
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
		$$.value = -$2.value;
	}
	| '(' expr ')'
	{
		// ---------------------------------
		// make a parens number node to tree
		// ---------------------------------
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );

		strcpy(node_new->token, "factor"  );
		node_new->token_id = tt_factor_paren;
		
		node_new->value = $2.value;
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
		$$ = $2;
	}
	;
  
number
	: TOK_NUMBER
	{
		// -------------------------
		// add a number node to tree
		// -------------------------
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );
		
		node_new->token_id = tt_const_number;
		strcpy(node_new->token, "const");
		
		node_new->value = $1.value;
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
		$$.value  = $1.value;
	}
	;

ident
	: TOK_ID
	{
		// -------------------------
		// add a ident node to tree
		// -------------------------
		node_new = (struct node *) malloc( sizeof( struct node )    );

		node_new->token = (char *) malloc( strlen( $1.name     ) + 1);
		$$.name         = (char *) malloc( strlen( $1.name     ) + 1);
		strcpy($$.name, $1.name );

		node_new->token_id = tt_const_ident;
		strcpy(node_new->token, $1.name );
		
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
	}
	;

if_ident_and_eqeq : TOK_AND ident_object TOK_EQEQ relation ;
if_ident_and_lteq : TOK_AND ident_object TOK_LTEQ relation ;
if_ident_and_gteq : TOK_AND ident_object TOK_GTEQ relation ;
if_ident_and_ltgt : TOK_AND ident_object TOK_LTGT relation ;

if_rel
	:	/* empty */
	|	if_ident_and_eqeq
	|	if_ident_and_lteq
	|	if_ident_and_gteq
	|	if_ident_and_ltgt
	;

relation
	:	ident_object if_rel
	|	ident_string if_rel
	|	expr         if_rel
	|	TOK_FALSE    if_rel
	|	TOK_TRUE     if_rel
	;

if_ident_eqeq : TOK_IF ident_object TOK_EQEQ relation stmt TOK_ENDIF ;
if_ident_lteq : TOK_IF ident_object TOK_LTEQ relation stmt TOK_ENDIF ;
if_ident_gteq : TOK_IF ident_object TOK_GTEQ relation stmt TOK_ENDIF ;
if_ident_ltgt : TOK_IF ident_object TOK_LTGT relation stmt TOK_ENDIF ;

if_else_endif
	:	if_ident_eqeq stmt { }
	|	if_ident_lteq stmt { }
	|	if_ident_gteq stmt { }
	|	if_ident_ltgt stmt { }
	;

%%

// ----------------------------------------------------------------------------
// make/add a node to the parse tree ...
// ----------------------------------------------------------------------------
struct node *
mknode(
	char *fmt,
	struct node * prev,
	float         value,
	char        * token)
{
	struct node *
	newnode = (struct node *) malloc( sizeof( struct node )    );
	newnode->token = (char *) malloc( strlen( token       ) + 1);
	newnode->prev  =  prev;
	newnode->next  =  NULL;
	
	strcpy(newnode->token, token);
	return newnode;
}

// ----------------------------------------------------------------------------
// traverse throug the created parse tree from behind the scenes ...
// ----------------------------------------------------------------------------
void
tree_execute(void)
{
	char        * buffer;
	struct node * ptr = node_new;
	
	buffer = (char *) malloc(255);
	node_prev = ptr;
	
	// ---------------------------------------
	// traverse the parse tree from behind ...
	// ---------------------------------------
	while (ptr != NULL) {
		if (node_prev != NULL) {
			switch (node_prev->token_id)
			{
				case tt_const_ident:
					sprintf(buffer,"detected ident: %s",
					ptr->token);
				break;
				
				case tt_const_number:
					sprintf(buffer,"fetch number: %f",
					ptr->value);
				break;
				
				case tt_factor_neg:
					sprintf(buffer,"negate number factor: %f",
					ptr->value);
				break;
				
				case tt_factor_term:
					sprintf(buffer,"term factor:  %f ",
					ptr->value);
				break;
				
				case tt_factor_paren:
					sprintf(buffer,"parens number factor: ( %f )",
					ptr->value);
				break;
				
				case tt_factor_number:
					sprintf(buffer,"simple factor number");
				break;
				
				case tt_term:    break;
				case tt_factor:  break;
				
				case tt_expr_sub: sprintf(buffer, "expr sub" ); break;
				case tt_expr_add: sprintf(buffer, "expr add" ); break;
				case tt_expr_mul: sprintf(buffer, "expr mul" ); break;
				case tt_expr_div: sprintf(buffer, "expr div" ); break;
				
				case tt_term_sub: sprintf(buffer, "term sub" ); break;
				case tt_term_add: sprintf(buffer, "term add" ); break;
				case tt_term_mul: sprintf(buffer, "term mul" ); break;
				case tt_term_div: sprintf(buffer, "term div" ); break;

				case tt_factor_sub: sprintf(buffer, "factor sub" ); break;
				case tt_factor_add: sprintf(buffer, "factor add" ); break;
				case tt_factor_mul: sprintf(buffer, "factor mul" ); break;
				case tt_factor_div: sprintf(buffer, "factor div" ); break;
				
				case tt_ident_assign:
					sprintf(buffer,"assign to: '%s' := %f",
						ptr->token,
						ptr->value
					);
				break;
				
				default:
					sprintf(buffer,"error on fetch type");
				break;
			}	MessageBoxA(0,buffer,"DebugInfo",0);
		}
		node_prev = ptr->prev;
		ptr       = ptr->prev;
	}
	
	free(buffer);
}
