%{
#include <stdio.h>

int startcnt=0;
int endcnt=0;
%}

%%
\n[\ ]*+"{" { printf("{"); startcnt++; } 
"}" { printf("}"); endcnt++; }
. { printf("%c", *yytext); }
%%

int main(int argc, char **argv)
{  
    yylex();  
    printf("start count : %d\n", startcnt);
    printf("end count : %d\n", endcnt);
}
