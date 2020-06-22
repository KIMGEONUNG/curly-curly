%{
#include <stdio.h>

int depth=0;
%}

%%
\n[\ ]*+"{" { // This is allman style, so style conversion occurs
    depth++;
    printf("{"); 
} 

^.*[a-zA-Z].*"{" { // This is knr style, so style must be reserved 

    for(int i = 0; i < yyleng; i++)
    {
        printf("%c", yytext[i]); 
    }
    depth++;
} 

^[ ]*"}" {
    depth--;

    for(int _ = 0; _ < depth; _++)
    {
        printf("    ");
    }

    printf("}"); 
}

. { 
    printf("%c", *yytext); 
}
%%

int main(int argc, char **argv)
{  
    yylex();  
}
