%{
// ----------------------------------------------------------------------------
// File   : PrologDSLwun32.y
// Author : Jens Kallup (c) 2023-07.01
// License: all rights reserved.
// ----------------------------------------------------------------------------
# include "../common.h"

// ----------------------------------------------------------------------------
// parser variables and constants:
// ----------------------------------------------------------------------------
extern char * yytext;

extern void add_node_fact_string ( char * str );
extern void add_node_fact_number ( char * str );
extern void add_node_fact        ( char * str );

extern void add_node_string( int, char* );
extern void add_node_print ( int, int );

extern void display_list  ( );
extern int  yylex();

// ----------------------------------------------------------------------------
// this variable is important ! - it counts the commands, and is in relation
// to, and with other command's...
// ----------------------------------------------------------------------------
static int command_reference_counter = 1;

// ----------------------------------------------------------------------------
// the following "export" function is used in Delphi, to call the tree run ...
// ----------------------------------------------------------------------------
void EXPORT
yy_prolog_win32_run_code(void) {
    display_list();
}
%}

%union {
    struct {
        float         value;
        char        * name ;
        char        * content_str;
        struct node * sub_nodes;
    }	node_and_value;
};

%token <node_and_value> TOK_ID
%token <node_and_value> TOK_NUMBER TOK_STRING

%token <node_and_value> TOK_PRINT_ONE
%token <node_and_value> TOK_PRINT_TWO

%type  <node_and_value> number
%type  <node_and_value> factor
%type  <node_and_value> term

%type  <node_and_value> expr ident idents stmt facts
%type  <node_and_value> ident_string

%token TOK_YYEOF 0

%start program

%%

program
    :   /* empty */   { }
    |   program stmt  { }
    |   program error { yyerror( "Error in Grammar" ); }
    ;

stmt
    :	/* empty */ { }
    |   ident '(' facts ')' '.' {
        AnsiString str1 = "ident: ";
        str1 += $1.name;
        str1 += "\npl: ";
        str1 += $3.name;
        ShowMessage( str1 );
        add_node_fact( str1.c_str() );
    }
    |   ident '(' number ')' '.'
    ;

facts
    :   idents       { $$.name = strdup( $1.name ); }
    |   ident_string { $$.name = strdup( $1.name ); }
    |   expr
    ;

ident_string
    :   TOK_STRING {
        $$.name = strdup( $1.name );
    }
    |   ident_string '+' ident_string {
        AnsiString str1  = $1.name;
        str1            += $3.name;
        
        $$.name = strdup( str1.c_str() );
    }
    |   ident_string ',' ident_string
    |   ident_string ',' expr
    |   expr         ',' expr
    |   expr         ',' ident_string
    ;

expr
    : expr '-' term {
        AnsiString str1 = $1.name;
        AnsiString str2 = $3.name;
        AnsiString str3 = str1;
        str3 += " - ";
        str3 += str2 ;
        
        $$.name = strdup( str3.c_str() );
    }
    | expr '+' term {
        AnsiString str1 = $1.name;
        AnsiString str2 = $3.name;
        AnsiString str3 = str1;
        str3 += " + ";
        str3 += str2 ;

        $$.name = strdup( str3.c_str() );
    }
    |   term {
        $$.name = strdup( $1.name );  }
    ;

term
    : term '*' factor {
        AnsiString str1 = $1.name;
        AnsiString str2 = $3.name;
        AnsiString str3 = str1;
        str3 += " * ";
        str3 += str2 ;

        $$.name = strdup( str3.c_str() );
    }
    | term '/' factor {
        AnsiString str1 = $1.name;
        AnsiString str2 = $3.name;
        AnsiString str3 = str1;
        str3 += " / ";
        str3 += str2 ;

        $$.name = strdup( str3.c_str() );
    }
    |   factor { $$.name = strdup( $1.name ); }
    ;

factor
    :   number       { $$.name = strdup( $1.name ); }
    |   '-' number   {
        AnsiString str1 = "-";
        AnsiString str2 = $2.name;
        AnsiString str3 = str1 + str2;

        $$.name = strdup( str3.c_str() );
    }
    | '(' expr ')' { $$.name = strdup( $2.name ); }
    ;

number : TOK_NUMBER { $$.name = strdup( $1.name ); } ;
ident  : TOK_ID     { $$.name = strdup( $1.name ); } ;

idents
    : ident             { $$.name = strdup( $1.name ); }
    | expr   ',' expr   { }
    | idents ',' expr   { }
    | expr   ',' idents { }
    | idents ',' idents {
        AnsiString str1;
        str1  = $1.name;
        str1 += ",";
        str1 += $3.name;

        $$.name = strdup( str1.c_str() );
    }
    ;
%%

void
add_node_fact_string( int command, char * str )
{
    Node * nod = new Node( str );
    
    nod->SetTokenType( tt_const_fact_string );
    nod->SetTokenTrace( command );
    nod->SetData( str );

    rootNodes.push_back( nod );
    command_reference_counter++;
}
void
add_node_fact_number( char * str )
{
    Node * nod = new Node( str );

    nod->SetTokenType( tt_const_fact_number );
    nod->SetTokenTrace( command_reference_counter++ );
    nod->SetData( str );

    rootNodes.push_back( nod );
}
void
add_node_fact( char * str )
{
    Node * nod = new Node( str );

    nod->SetTokenType( tt_const_fact );
    nod->SetTokenTrace( command_reference_counter++ );
    nod->SetData( str );

    rootNodes.push_back( nod );
}

void
add_node_print( int flag )
{
    if (flag == 1) {
        Node * nod = new Node( tt_print_one );
        nod->SetTokenTrace( command_reference_counter++ );

        rootNodes.push_back( nod );
    }   else {
        Node * nod = new Node( tt_print_two );
        nod->SetTokenTrace( command_reference_counter++ );

        rootNodes.push_back( nod );
    }
}

void
add_node_string( char *str )
{
    Node * nod = new Node( str );

    nod->SetTokenType ( tt_const_string );
    nod->SetTokenTrace( command_reference_counter++ );
    nod->SetData( str );

    rootNodes.push_back( nod );
}
