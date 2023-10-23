%{
# include <windows.h>

void pascalerror(char* message);
%}

%token TOK_PAS_AND
%token TOK_PAS_ARRAY
%token TOK_PAS_BEGIN
%token TOK_PAS_CASE
%token TOK_PAS_CLASS
%token TOK_PAS_CONST
%token TOK_PAS_DIV
%token TOK_PAS_DO
%token TOK_PAS_DOWNTO
%token TOK_PAS_ELSE
%token TOK_PAS_END
%token TOK_PAS_FILE
%token TOK_PAS_FOR
%token TOK_PAS_FORWARD
%token TOK_PAS_FUNCTION
%token TOK_PAS_GOTO
%token TOK_PAS_IF
%token TOK_PAS_IMPLEMENTATION
%token TOK_PAS_IN
%token TOK_PAS_INTERFACE
%token TOK_PAS_LABEL
%token TOK_PAS_LIBRARY
%token TOK_PAS_MOD
%token TOK_PAS_NIL
%token TOK_PAS_NOT
%token TOK_PAS_OF
%token TOK_PAS_OR
%token TOK_PAS_PACKED
%token TOK_PAS_PRIVATE
%token TOK_PAS_PROCEDURE
%token TOK_PAS_PROGRAM
%token TOK_PAS_PROTECTED
%token TOK_PAS_PUBLIC
%token TOK_PAS_PUBLISHED
%token TOK_PAS_RECORD
%token TOK_PAS_REPEAT
%token TOK_PAS_SET
%token TOK_PAS_THEN
%token TOK_PAS_TO
%token TOK_PAS_TYPE
%token TOK_PAS_UNIT
%token TOK_PAS_UNTIL
%token TOK_PAS_USES
%token TOK_PAS_VAR
%token TOK_PAS_WHILE
%token TOK_PAS_WITH

%token TOK_PAS_ID
%token TOK_PAS_RANGE
%token TOK_PAS_NUMBER
%token TOK_PAS_FLOAT

%start translate_unit
%%

translate_unit
  : program ';' begin end '.'
  | unit        begin end '.'
  | unit              end '.'
  | library ';' begin end '.'
  ;

begin
  : TOK_PAS_BEGIN
  ;
end
  : TOK_PAS_END
  ;

program
  : TOK_PAS_PROGRAM TOK_PAS_ID
  ;

unit_uses
  : TOK_PAS_ID
  | unit_uses ',' unit_uses
  ;
unit_var
  : TOK_PAS_ID ':' TOK_PAS_ID
  | TOK_PAS_ID ',' unit_var
  | unit_var   ',' unit_var
  ;
unit_type_class_more
  : TOK_PAS_ID
  | unit_type_class_more ',' unit_type_class_more
  ;
unit_type_of
  : TOK_PAS_OF TOK_PAS_ID
  ;
unit_type_type
  : TOK_PAS_ARRAY '[' TOK_PAS_RANGE  ']' unit_type_of
  | TOK_PAS_ARRAY '[' TOK_PAS_NUMBER ']' unit_type_of
  | TOK_PAS_ID
  ;
unit_type_decl
  : /* empty */
  | TOK_PAS_ID     ':' unit_type_type ';' unit_type_decl
  | TOK_PAS_ID     ',' unit_type_decl
  | unit_type_decl ',' unit_type_decl
  ;
unit_type_class_decl
  : /* empty */
  | unit_type_decl TOK_PAS_PRIVATE    unit_type_decl unit_type_class_decl
  | unit_type_decl TOK_PAS_PROTECTED  unit_type_decl unit_type_class_decl
  | unit_type_decl TOK_PAS_PUBLIC     unit_type_decl unit_type_class_decl
  | unit_type_decl TOK_PAS_PUBLISHED  unit_type_decl unit_type_class_decl
  ;
unit_type_class
  : TOK_PAS_CLASS
  | TOK_PAS_CLASS '(' unit_type_class_more ')' unit_type_class_decl TOK_PAS_END
  ;
unit_type
  : TOK_PAS_ID '=' unit_type_class
  ;
unit_declid
  : TOK_PAS_ID ':' TOK_PAS_ID
  | TOK_PAS_ID ',' unit_declid
  ;
unit_expr
  : /* empty */
  | TOK_PAS_USES unit_uses            ';'                       unit_expr
  | TOK_PAS_TYPE unit_type            ';'                       unit_expr
  | TOK_PAS_VAR  unit_var             ';'                       unit_expr
  | proc_and_func_nested                                        unit_expr
  |                       unit_declid ';'                       unit_expr
  ;
unit
  : TOK_PAS_UNIT
    TOK_PAS_ID              ';'
    TOK_PAS_INTERFACE       unit_expr
    TOK_PAS_IMPLEMENTATION  unit_expr
  ;
library
  : TOK_PAS_LIBRARY TOK_PAS_ID
  ;

profun_args
  : /* empty */
  | TOK_PAS_ID                   ':' TOK_PAS_ID
  | TOK_PAS_ID  ',' profun_args
  | profun_args ',' profun_args  ':' TOK_PAS_ID
  | profun_args ';' profun_args
  ;
proc_and_func
  : /* empty */
  | TOK_PAS_PROCEDURE TOK_PAS_ID ';'                     proc_and_func
  | TOK_PAS_PROCEDURE TOK_PAS_ID ';'                     proc_and_func                TOK_PAS_BEGIN TOK_PAS_END ';' proc_and_func
  | TOK_PAS_PROCEDURE TOK_PAS_ID '(' profun_args ')' ';' proc_and_func
  | TOK_PAS_PROCEDURE TOK_PAS_ID '(' profun_args ')' ';' proc_and_func                TOK_PAS_BEGIN TOK_PAS_END ';' proc_and_func
  | TOK_PAS_FUNCTION  TOK_PAS_ID ':'                     TOK_PAS_ID ';' proc_and_func
  | TOK_PAS_FUNCTION  TOK_PAS_ID ':'                     TOK_PAS_ID ';' proc_and_func TOK_PAS_BEGIN TOK_PAS_END ';' proc_and_func
  | TOK_PAS_FUNCTION  TOK_PAS_ID '(' profun_args ')' ':' TOK_PAS_ID ';' proc_and_func
  | TOK_PAS_FUNCTION  TOK_PAS_ID '(' profun_args ')' ':' TOK_PAS_ID ';' proc_and_func TOK_PAS_BEGIN TOK_PAS_END ';' proc_and_func
  ;
proc_and_func_nested
  : proc_and_func
  ;
%%

