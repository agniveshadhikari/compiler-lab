%{
   #include "y.tab.h"
%}

%option noyywrap

%%

"if"  {return IF;}
[sS][0-9]* {return S;}
"<"|">"|"<="|">="|"==" {return RELOP;}
[0-9]+  {return NUMBER;}
[a-z][a-zA-Z0-9]* {return ID;}
\n  {return NL;}
.   {return yytext[0];}


%%