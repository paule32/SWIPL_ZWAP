// ----------------------------------------------------------------------------
// File   : common.h
// Author : Jens Kallup (c) 2023-07.01
// License: all rights reserved.
// ----------------------------------------------------------------------------
#ifndef COMMON_H   // old fashion
#define COMMON_H   // safety guardian

// ----------------------------------------------------------------------------
// import/export stuff ...
// ----------------------------------------------------------------------------
#if defined(_MSC_VER)
    //  Microsoft
    # define EXPORT __declspec(dllexport)
    # define IMPORT __declspec(dllimport)
    # pragma once
#elif defined(__GNUC__)
    //  GCC
    # define EXPORT __attribute__((visibility("default")))
    # define IMPORT
    # pragma once
#elif defined(__BORLANDC__)
    // C++ Builder
    # define EXPORT __declspec(dllexport)
    # define IMPORT __declspec(dllimport)
    # pragma once
#else
    //  do nothing and hope for the best?
    # define EXPORT
    # define IMPORT
    # pragma warning Unknown dynamic link import/export semantics.
#endif

// ----------------------------------------------------------------------------
// standard i/o header proto type stuff:
// ----------------------------------------------------------------------------
# include <vcl.h>

# include <stdio.h>
# include <stdlib.h>
# include <string.h>
# include <signal.h>
# include <ctype.h>
# include <mbstring.h>
# include <math.h>

// ----------------------------------------------------------------------------
// C++ classes, container, header, structures ...
// ----------------------------------------------------------------------------
# include <iostream>
# include <string>
# include <algorithm>
# include <functional>
# include <io.h>
# include <vector>
# include <map>
# include <string>
# include <cstring>
# include <sstream>

# include <windows.h>

extern std::string StringToUpperCase(const std::string& input);

extern int header_isok = 0;

extern char* date_text;
extern char* data_code;
extern char* data_data;

// ----------------------------------------------------------------------------
// Microsoft Windows XP, and up specified stuff:
// ----------------------------------------------------------------------------
struct parser_dll_plugin {
    int      version;
    char   * name;
    char   * path;
} * ptr_parser_dll_plugin;

# define DBASE__PLUGIN_VERSION 20230717  // version on latest date of compile
# define PASCAL_PLUGIN_VERSION 20230717  // ...

# define YY_NO_UNISTD_H

# undef FALSE
# undef TRUE

# define FALSE 0
# define TRUE  1

# define false 0
# define true  1

# undef BOOL
typedef int BOOL;

// ----------------------------------------------------------------------------
// token types for the vm:
// ----------------------------------------------------------------------------
enum token_type {
    tt_illegal = -1,
    tt_root,

    tt_const_number = 5,	// constant number: 0-9
    tt_const_ident  = 6,    // constant letter array A-Z | a-z
    tt_const_string = 7,	// ident letters in qoute

    tt_const_fact_string,   // for prolog fact's:  human(john).
    tt_const_fact_number,
    tt_const_fact,
    
    tt_term,

    tt_tri_cos_number,      // cosinus
    tt_tri_sin_number,      // sinus
    tt_tri_tan_number,      // tangens
    
    tt_expr_sub,
    tt_expr_add,
    tt_expr_mul,
    tt_expr_div,

    tt_term_sub,
    tt_term_add,
    tt_term_mul,
    tt_term_div,

    tt_factor,

    tt_factor_number,	// number   factor
    tt_factor_term,     // term
    tt_factor_neg,  	// negative factor
    tt_factor_paren, 	// factor in paren

    tt_factor_sub,		// -
    tt_factor_add,		// +
    tt_factor_mul,		// *
    tt_factor_div,		// /

    tt_ident_assign,	// :=

    tt_print_one,       // ?  with new line after string
    tt_print_two,       // ?? no   ...
    
    tt_for_loop,		// for <ident> := 0 to 9

    tt_class_obj,       // e.g.:  CLASS ... ENDCLASS
    tt_class_ref,       // e.g.:  local f = Form1()

    tt_end_of_list
};

extern std::map< int, std::string > globsl_tt_type;

// ----------------------------------------------------------------------------
// ----------------------------------------------------------------------------
class Node {
public:
    Node(const std::string& data) : data(data) {}
    Node(const std::string& data, int ttype)
        : data(data)
        , token_type( ttype ) { }
    Node( int ttype )
        : token_type( ttype ) { }
    Node() {}
   ~Node() {}
    void AddSubNode( Node * subNode ) {
        subNodes.push_back( subNode ) ;
    }
    void SetData(const std::string& newStr, int ttype) {
        data = newStr;
        token_type = ttype;
    }   
    void SetData(const std::string& newData) {
        data = newData;
    }
    void SetTokenTrace( int command ) {
        token_trace = command;
    }
    void SetTokenType( int ttype ) {
        token_type = ttype;
    }
    const int GetTokenType() const {
        return token_type;
    }
    const int GetTokenTrace() const {
        return token_trace;
    }
    const std::string& GetData() const {
        return data;
    }
    const std::vector<Node*>& GetSubNodes() const {
        return subNodes;
    }

private:
    int token_type;
    int token_trace;
    
    std::string data;
    std::vector<Node*> subNodes;
};

extern std::vector< Node *> rootNodes;
extern class        Node *  currentRootNode;

extern AnsiString FormatString(const AnsiString&, const AnsiString& ); 

// ----------------------------------------------------------------------------
// main stream structure of the parser tree ...
// ----------------------------------------------------------------------------
typedef struct node {
    char * token;
    char * token_ident;
    enum   token_type  token_id;

    char * class_name;      // CLASS ... ENDCLASS
    char * class_parent;

    char * content_str;     // ?? "text"  or:  ? "text"
    
    std::vector< Node *> node_str;
    
    char * name;
    int    id;

    float  value;

    float  for_from; 	// for loop: from
    float  for_to  ; 	// : to

    struct node * prev;
    struct node * next;
} node_t;

extern struct node * node_head;
extern struct node * node_prev;
extern struct node * node_new;

# define ID_TYPE_OP_SUB  1
# define ID_TYPE_OP_ADD  2
# define ID_TYPE_OP_MUL  3
# define ID_TYPE_OP_DIV  4

# define ID_TYPE_CONST 10
# define ID_TYPE_EXPR  20

# define ID_TYPE_PRINT   100

extern BOOL initNode(void);
extern void insertNode(struct node* prev_node, int data);

extern void yyerror(const char* msg);

// ----------------------------------------------------------------------------
// @brief C++ "no" mangled pure C signatures ...
// ----------------------------------------------------------------------------
#ifdef __cplusplus
extern "C" {
#endif

// ----------------------------------------------------------------------------
// parser stuff ...
// ----------------------------------------------------------------------------
extern char* yy_number;
extern char* yy_text;

extern int   yy_col;
extern int   yy_row;
extern int   yylineno;

extern int yyparse(void);

// ----------------------------------------------------------------------------
// pascal dos32 stuff:
// ----------------------------------------------------------------------------
extern void  EXPORT pascal_dos32_error(char* m);
extern int   EXPORT pascal_dos32_wrap(void);
extern int   EXPORT pascal_dos32_count(void);

extern void  EXPORT yy_pascal_dos32_lex_parser_error(void (*func)(const char*));
extern void  EXPORT yy_pascal_dos32_lex_close(void);
extern int   EXPORT yy_pascal_dos32_lex_get_line(void);
extern int   EXPORT yy_pascal_dos32_lex_getlines(void);
extern BOOL  EXPORT yy_pascal_dos32_lex_main(char*,char*);

extern void  EXPORT yy_pascal_dos32_fatal_error(char* message);
// ----------------------------------------------------------------------------
// pascal win32 stuff:
// ----------------------------------------------------------------------------
extern void  EXPORT yy_pascal_win32_lex_parser_error(void (*func)(const char*));
extern void  EXPORT yy_pascal_win32_lex_close(void);
extern int   EXPORT yy_pascal_win32_lex_get_line(void);
extern int   EXPORT yy_pascal_win32_lex_getlines(void);
extern BOOL  EXPORT yy_pascal_win32_lex_main(char*,char*);

extern void  EXPORT yy_pascal_win32_fatal_error(char* message);

// ----------------------------------------------------------------------------
// dbase dos32 stuff:
// ----------------------------------------------------------------------------
extern void  EXPORT dbase_dos32_error(char* m);

extern void  EXPORT yy_dbase_dos32_lex_parser_error(void (*func)(const char*));
extern void  EXPORT yy_dbase_dos32_lex_close(void);
extern int   EXPORT yy_dbase_dos32_lex_get_line(void);
extern int   EXPORT yy_dbase_dos32_lex_getlines(void);
extern BOOL  EXPORT yy_dbase_dos32_lex_main(char*,char*);

extern void  EXPORT yy_dbase_dos32_fatal_error(char* message);
// ----------------------------------------------------------------------------
// dbase win32 stuff:
// ----------------------------------------------------------------------------
extern void EXPORT yy_dbase_win32_run_code(void);

extern void  EXPORT yy_dbase_win32_lex_close(void);
extern int   EXPORT yy_dbase_win32_lex_get_line(void);
extern int   EXPORT yy_dbase_win32_lex_getlines(void);
extern BOOL  EXPORT yy_dbase_win32_lex_main(char*,char*);

extern void  EXPORT yy_dbase_win32_fatal_error(char* message);

// ----------------------------------------------------------------------------
// parser call-back's
// ----------------------------------------------------------------------------
typedef void (*func_ShowParserErrorText)(char* message); 
typedef void (*func_WriteTextToConsole )(char* message); 

extern func_ShowParserErrorText ShowParserErrorText ;
extern func_WriteTextToConsole  WriteTextToConsole  ;

extern void  EXPORT import_func_ShowParserErrorText ( void(*)(char*) );
extern void  EXPORT import_func_WriteTextToConsole  ( void(*)(char*) );

// ----------------------------------------------------------------------------
// basic dos32 stuff:
// ----------------------------------------------------------------------------
extern void  EXPORT basic_dos32_error(char* m);
extern int   EXPORT basic_dos32_wrap(void);
extern int   EXPORT basic_dos32_count(void);

extern void  EXPORT yy_basic_dos32_lex_parser_error(void (*func)(const char*));
extern void  EXPORT yy_basic_dos32_lex_close(void);
extern int   EXPORT yy_basic_dos32_lex_get_line(void);
extern int   EXPORT yy_basic_dos32_lex_getlines(void);
extern BOOL  EXPORT yy_basic_dos32_lex_main(char*,char*);

extern void  EXPORT yy_basic_dos32_fatal_error(char* message);
// ----------------------------------------------------------------------------
// basic win32 stuff:
// ----------------------------------------------------------------------------
extern void  EXPORT yy_basic_win32_lex_parser_error(void (*func)(const char*));
extern void  EXPORT yy_basic_win32_lex_close(void);
extern int   EXPORT yy_basic_win32_lex_get_line(void);
extern int   EXPORT yy_basic_win32_lex_getlines(void);
extern BOOL  EXPORT yy_basic_win32_lex_main(char*,char*);

extern void  EXPORT yy_basic_win32_fatal_error(char* message);

// ----------------------------------------------------------------------------
// clisp dos32 stuff:
// ----------------------------------------------------------------------------
extern void  EXPORT clisp_dos32_error(char* m);
extern int   EXPORT clisp_dos32_wrap(void);
extern int   EXPORT clisp_dos32_count(void);

extern void  EXPORT yy_clisp_dos32_lex_parser_error(void (*func)(const char*));
extern void  EXPORT yy_clisp_dos32_lex_close(void);
extern int   EXPORT yy_clisp_dos32_lex_get_line(void);
extern int   EXPORT yy_clisp_dos32_lex_getlines(void);
extern BOOL  EXPORT yy_clisp_dos32_lex_main(char*,char*);

extern void  EXPORT yy_clisp_dos32_fatal_error(char* message);
// ----------------------------------------------------------------------------
// clisp win32 stuff:
// ----------------------------------------------------------------------------
extern void  EXPORT yy_clisp_win32_lex_parser_error(void (*func)(const char*));
extern void  EXPORT yy_clisp_win32_lex_close(void);
extern int   EXPORT yy_clisp_win32_lex_get_line(void);
extern int   EXPORT yy_clisp_win32_lex_getlines(void);
extern BOOL  EXPORT yy_clisp_win32_lex_main(char*,char*);

extern void  EXPORT yy_clisp_win32_fatal_error(char* message);

// ----------------------------------------------------------------------------
// assembler dos32 stuff:
// ----------------------------------------------------------------------------
extern void  EXPORT assembler_dos32_error(char* m);
extern int   EXPORT assembler_dos32_wrap(void);
extern int   EXPORT assembler_dos32_count(void);

extern void  EXPORT yy_assembler_dos32_lex_parser_error(void (*func)(const char*));
extern void  EXPORT yy_assembler_dos32_lex_close(void);
extern int   EXPORT yy_assembler_dos32_lex_get_line(void);
extern int   EXPORT yy_assembler_dos32_lex_getlines(void);
extern BOOL  EXPORT yy_assembler_dos32_lex_main(char*,char*);

extern void  EXPORT yy_assembler_dos32_fatal_error(char* message);
// ----------------------------------------------------------------------------
// clisp win32 stuff:
// ----------------------------------------------------------------------------
extern void  EXPORT yy_assembler_win32_lex_parser_error(void (*func)(const char*));
extern void  EXPORT yy_assembler_win32_lex_close(void);
extern int   EXPORT yy_assembler_win32_lex_get_line(void);
extern int   EXPORT yy_assembler_win32_lex_getlines(void);
extern BOOL  EXPORT yy_assembler_win32_lex_main(char*,char*);

extern void  EXPORT yy_assembler_win32_fatal_error(char* message);

// ----------------------------------------------------------------------------
// Prolog dos32 stuff:
// ----------------------------------------------------------------------------
extern void  EXPORT prolog_dos32_error(char* m);

extern void  EXPORT yy_prolog_dos32_lex_parser_error(void (*func)(const char*));
extern void  EXPORT yy_prolog_dos32_lex_close(void);
extern int   EXPORT yy_prolog_dos32_lex_get_line(void);
extern int   EXPORT yy_prolog_dos32_lex_getlines(void);
extern BOOL  EXPORT yy_prolog_dos32_lex_main(char*,char*);

extern void  EXPORT yy_prolog_dos32_fatal_error(char* message);
// ----------------------------------------------------------------------------
// Prolog win32 stuff:
// ----------------------------------------------------------------------------
extern void EXPORT yy_prolog_win32_run_code(void);

extern void  EXPORT yy_prolog_win32_lex_close(void);
extern int   EXPORT yy_prolog_win32_lex_get_line(void);
extern int   EXPORT yy_prolog_win32_lex_getlines(void);
extern BOOL  EXPORT yy_prolog_win32_lex_main(char*,char*);

extern void  EXPORT yy_prolog_win32_fatal_error(char* message);

#ifdef __cplusplus
}
#endif

#endif  // COMMON_H
