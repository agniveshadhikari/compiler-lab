%{
	#include <stdio.h>
	#include <stdlib.h>

	int i;
%}

single_line_comment "//".*\n
multiline_comment \/\*(.*\n)*.*\*\/

%%

{single_line_comment}|{multiline_comment}	{;}
.					{printf("%c", yytext[0]);}


%%

int main(int argc, char const *argv[])
{
	yyin = fopen("../common_code.c", "r");
	yylex();
	return 0;
}