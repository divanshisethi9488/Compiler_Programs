%{
	#include<stdio.h>
	int i,len,l;
%}
%%
[//][^\n]*[\n] {
	len=strlen(yytext);
	for(i=0;i<len;i++)
		{
	       printf("%c",toupper(yytext[i]));
	    }
}

[/][*][\n][^*/]*[*][/] {
	l=strlen(yytext);
	for(i=0;i<l;i++)
		{
	       printf("%c",toupper(yytext[i]));
	    }
}
. {
	printf("%s",yytext);
}
%%
int main()
{
	yyin=fopen("text.c","r");
	yylex();
}
