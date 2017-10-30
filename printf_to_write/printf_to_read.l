%{
	#include <stdio.h>
	#include <stdlib.h>

	int i;
%}


%%

"printf"	{printf("write");}

%%

int main(int argc, char const *argv[])
{
	yyin = fopen("../common_code.c", "r");
	yylex();
	return 0;
}