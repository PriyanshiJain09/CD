%{
#include "y.tab.h"
#include <stdlib.h>
%}

%%

[0-9]+        {
                  /* set integer value into yylval as expected by the parser */
                  yylval.intval = atoi(yytext);
                  return NUMBER;
              }
[ \t\r\n]+    { /* skip whitespace */ }
"("           { return '('; }
")"           { return ')'; }
"+"|"-"|"*"|"/" { return yytext[0]; }
.             { return yytext[0]; } /* pass through other single chars to parser (safe) */

%%

int yywrap(void) { return 1; }

