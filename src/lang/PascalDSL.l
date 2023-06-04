%{
# include "common.h"

char buffer[200];
%}

DIGIT    [0-9]
ID       [a-z][a-z0-9]*

%%

{DIGIT}+  {
  sprintf(buffer, "An integer: %s (%d)\n", yytext,
  atoi( yytext ) );
  ShowMessage(buffer);
}

{DIGIT}+"."{DIGIT}*  {
  sprintf(buffer, "A float: %s (%g)\n", yytext,
  atof( yytext ) );
  ShowMessage(buffer);
}

if|then|begin|end|procedure|function  {
  sprintf(buffer, "A keyword: %s\n", yytext );
  ShowMessage(buffer);
}

{ID}              {
  sprintf( buffer, "An identifier: %s\n", yytext );
  ShowMessage(buffer);
}

"+"|"-"|"*"|"/"   {
  sprintf( buffer, "An operator: %s\n", yytext );
  ShowMessage(buffer);
}

"{"[^}\n]*"}"     /* eat up one-line comments */
[ \t\n]+          /* eat up whitespace */
.                 {
  sprintf( buffer, "Unrecognized character: %s\n", yytext );
  ShowMessage(buffer);
}

%%

int pascalwrap(void) { return true; }

bool
yy_pascal_lex_main(char *filename)
{
  yyin = fopen(filename,"r");
  if (!yyin) {
    sprintf(buffer, "could not open file: %s", filename);
    ShowMessage(buffer);
    return false;
  }

  yylex();
  fclose(yyin);

  return true;
}

bool __declspec(dllexport) yy_pascal_lex_main(void);

