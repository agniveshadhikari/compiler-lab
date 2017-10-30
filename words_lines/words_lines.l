%{
	#include <stdio.h>
	#include <stdlib.h>

	int words=0, lines=0, characters=0, special_characters=0;
%}

%%

\n 			{words++; lines++;}
[\t ' '] 	{words++;}
[^(a-zA-Z)]	{special_characters++;}	
. 			{characters++;}

%%

int main(int argc, char const *argv[])
{
	yylex();
	printf("W: %d\nC:%d\nL:%d\nSC:%d\n", words, characters, lines, special_characters);
	return 0;
}