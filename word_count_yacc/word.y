%{
	#include <stdio.h>

	int count=0;
%}

%token NL W SP

%%

S	:	WS	{printf("count is %d\n", count);}
	;


WS	:	W SP WS	{count++;}
	|	W NL WS	{count++;}
	|	W		{count++;}
	;

%%

main()
{

	yyparse();

}

int yyerror(char* s)
{
	printf("%s", s);
}