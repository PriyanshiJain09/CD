%{
#include <stdio.h>
int chars = 0;
int words = 0;
int spaces = 0;
%}


%%

[a-zA-Z]+ {
    words++;
    chars+=yyleng;
    }
. {chars++;}

[ \t\n] {spaces++;}

%%

int yywrap(){return 1;}

int main(){
yylex();
printf("Total Words : %d",words);
printf("Total chars: %d",chars);
printf("Total spaces: %d",spaces);
return 0;
}
