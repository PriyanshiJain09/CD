%{
#include <stdio.h> #include <string.h>
%}

%%

[a-zA-Z]+  {
int n = strlen(yytext);
for (int len = n; len >= 1; --len) { for (int i = 0; i < len; i++)
putchar(yytext[i]); putchar('\n');
}
}

[ \t\r\n]+ ;  /* ignore whitespace */
.	;  /* ignore any other character */

%%
int main(int argc, char **argv)
{
printf("Enter a string: "); yylex();
return 0;
}
int yywrap() { return 1;
}
