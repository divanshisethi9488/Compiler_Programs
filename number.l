%{
	#include<stdio.h>
	FILE *f1,*f2;
	int odd=0,even=0,len;
%}

%%
[0-9]+  {
	len=strlen(yytext);
	if(yytext[len-1]%2==0)
	   fprintf(f2,"%s ", yytext);
	else
	   fprintf(f1,"%s ", yytext);
}
%%

int main()
{
	yyin=fopen("input.txt","r");
	f1=fopen("odd.txt","w+");
	f2=fopen("even.txt","w+");
	yylex();
	
	
	fclose(f1);
	fclose(f2);
}