%{
#include <stdio.h>
int max = 0;
char longest[100];
%}


%%

[a-zA-Z]+ {
    if(yyleng > max){
        max = yyleng;
        strcpy(longest,yytext);
    }
}

%%

int yywrap(){return 1;}

int main(){
yylex();
printf("longest word : %s",longest);
return 0;
}
