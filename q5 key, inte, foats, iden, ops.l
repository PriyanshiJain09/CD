%{
#include <stdio.h>
%}


%%

"int"|"float"|"double"|"while"|"if"|"else"|"for" {printf("%s-Keyword\n",yytext);}
[0-9]+ {printf("%s-integers\n",yytext);}
[0-9]+"."[0-9]+ {printf("%s-float\n",yytext);}
[a-zA-Z_][a-zA-Z_]* {printf("%s-identifiers\n",yytext);}

"=="|"!="|"<="|">=" {printf("%s-comperision operator\n",yytext);}
"=" {printf("%s-assignment operator\n",yytext);}
"+"|"-"|"/"|"%" {printf("%s-arithemetic operator\n",yytext);}

"//".* {printf("%s - Comment\n",yytext);}

%%

int yywrap(){return 1;}

int main(){
yylex();
return 0;
}
