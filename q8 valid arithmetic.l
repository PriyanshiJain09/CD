%{
#include <stdio.h>
int state = 1;
int valid = 1;
%}


%%

[0-9]+ {
    if(state!=1) valid=0;
    state = 2;
}

[a-zA-Z_][a-zA-Z_]* {
    if(state!=1) valid=0;
    state = 2;
}
[\+\-*/%] {
    if(state!=2) valid=0;
    state = 1;
}

. {valid=0;}

%%

int yywrap(){return 1;}

int main(){
yylex();

if(state!=2) valid = 0;

if(valid){
    printf("valid expression");
}else{
    printf("invalid expression");
}

return 0;
}
