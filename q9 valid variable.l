%{
#include "y.tab.h"
#include <string.h>
#include <stdlib.h>

/* yylval may carry a string for VAR; YYSTYPE comes from the .y union (if used) */
%}

%%

[a-z][0-9]        { yylval.s = strdup(yytext); return VAR; }
[ \t\r\n]+        { /* skip whitespace */ }
"("               { return '('; }
")"               { return ')'; }
"+"|"-"|"*"|"/"   { return yytext[0]; }
.                 { return INVALID; }   /* unknown token forces parse fail */

%%

int yywrap(void) { return 1; }

