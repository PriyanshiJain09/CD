%{
#include <stdio.h>
int lines = 0;
int chars = 0;
%}


%%

"\n" {lines++;}
. {chars++;}

%%

int yywrap(){return 1;}

int main(){
yylex();
printf("Number of lines : %d",lines);
printf("Number of chars: %d",chars);
return 0;
}
