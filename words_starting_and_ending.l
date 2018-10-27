%{
	#include<stdio.h>
	int flag=0;
%}
%%

[a][a-zA-Z]*[w] {
	printf("This word starts with a and ends with w\n");
	flag=1;
}
. {
	if(flag==0)
	{
	   printf("This word doesn't start with a and ends with w\n");
	   flag=1;
	}
}
%%
int main()
{
	yylex();
}