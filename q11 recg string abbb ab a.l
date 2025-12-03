%{
#include "y.tab.h"
%}

%%

a              { return A; }
b              { return B; }
[ \t\r\n]+     { /* skip whitespace */ }
.              { return INVALID; }

%%

int yywrap(void) { return 1; }

