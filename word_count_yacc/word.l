%{
#include "y.tab.h"
%}

%option noyywrap

word [a-zA-Z'""]+

%%
{word} {return W;}
[\t' ']	{return SP;}
\n {return NL;}
. {return yytext[0];}
%%