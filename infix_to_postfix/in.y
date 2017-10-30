%{
#include<stdio.h>
%}
%token NUM
%left '+' '-'
%left '*' '/'
%right NEGATIVE
%%
S:  E {printf("\n");}
    ;
E:  E '+' E {printf("+");}
    |   E '*' E {printf("*");}
    |   E '-' E {printf("-");}
    |   E '/' E {printf("/");}
    |   '(' E ')'
    |   'u' E %prec NEGATIVE {printf("u");}
    |   NUM     {printf("%d", yylval);}
    ;
%%

int main(){
    yyparse();
}

int yyerror (char *msg) {
    return printf ("error YACC: %s\n", msg);
}