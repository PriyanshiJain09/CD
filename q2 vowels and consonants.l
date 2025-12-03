%{
#include <stdio.h>
int vowels= 0;
int conso= 0;
%}


%%

[aioueAIOUE] {vowels++;}
[a-zA-Z] {conso++;}

%%

int yywrap(){return 1;}

int main(){
yylex();
printf("Number of vowels: %d",vowels);
printf("Number of conso: %d",conso);
return 0;
}
