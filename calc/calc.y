%{
#include<stdio.h>
#include<stdlib.h>
%}

%token N NL

%%
S       :	E NL 			{printf("Value is %d", $1);
							exit(0);}
		|	NL
		;

E 		:	E '+' E 		{$$ = $1 + $3;}
		|	E '-' E 		{$$ = $1 - $3;}
		|	N
		;


%%

int yyerror(char *msg)
{
printf("invalid string\n");
exit(0);
}

main()
{
printf("enter the string\n");
yyparse();
}