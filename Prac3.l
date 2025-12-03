%{
#include <stdio.h>

/* Shift by 3, using subtract-from-'a' and subtract-from-'A' logic */
char shift_char(char c) {
    int low = c - 'a';
    int up  = c - 'A';

    if (low >= 0 && low < 26)
        return 'a' + ((low + 3) % 26);

    if (up >= 0 && up < 26)
        return 'A' + ((up + 3) % 26);

    return c;
}
%}

%%
[a-zA-Z] {
    char c = shift_char(yytext[0]);
    printf("%c", c);
}

.|\n {
    printf("%s", yytext);
}
%%

int yywrap() { return 1; }

int main() {
    yylex();
    return 0;
}
