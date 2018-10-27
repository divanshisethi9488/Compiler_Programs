%{
	#include<stdio.h>
	int count=0,i,len;
%}
%%
[a-zA-Z0-9]+ {
	len=strlen(yytext);
	for(i=0;i<len;i++)
	{
		if(yytext[i]!=yytext[len-1-i])
		  break;
	}
	if(i==len)
	  count++;
}
. { }
%%
int main()
{
	yylex();
	printf("The number of palindrome strings are %d\n",count);
}