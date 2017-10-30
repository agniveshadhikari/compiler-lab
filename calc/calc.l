%{
#include "y.tab.h"

extern yylval;
%}

%option noyywrap

digit [0-9]+

%%
{digit} {yylval = atoi(yytext); return N;}
\n {return NL;}
. {return yytext[0];}
%%