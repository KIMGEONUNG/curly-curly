%{
#include <stdio.h>

// #For debugging variable
//int startcnt=0;
//int endcnt=0;
int depth=0;
%}

%%
^.*[a-zA-Z].*"{" {

    for(int i = 0; i < yyleng-1; i++)
    {
        printf("%c", yytext[i]); 
    }
    printf("\n");
    for(int _ = 0; _ < depth; _++)
    {
        printf("    ");
    }
    depth++;
    printf("{"); 

    //startcnt++; 
} 

^[ ]*"}" {
    depth--;

    if(depth < 0) {
    }
    else {
        for(int _ = 0; _ < depth; _++)
        {
            printf("    ");
        }

        printf("}"); 
        //endcnt++; 
    }
}

. {
    printf("%c", *yytext); 
}
%%

int main(int argc, char **argv)
{  
    yylex();  
    //printf("start count : %d\n", startcnt);
    //printf("end count : %d\n", endcnt);
    //printf("depth : %d\n", depth);
}
