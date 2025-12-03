%{
#include <stdio.h>

%}


%%

[a-z] {
    char c = yytext[0];
    c = ((c-'a'+3)%26) + 'a';
    printf("%c",c);
}
[A-Z] {
    char c = yytext[0];
    c = ((c-'A'+3)%26) + 'A';
    printf("%c",c);
}

%%

int yywrap(){return 1;}

int main(){
yylex();
return 0;
}
