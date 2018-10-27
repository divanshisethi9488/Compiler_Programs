%{
	#include<stdio.h>
%}

oct [o][0-7]+
hex [o][x|X][0-9A-F]+

%%
{hex} {
	printf("This is a hexadecimal number\n");
}

{oct} {
	printf("This is a octal number\n");
}
%%
int main()
{
	yylex();
}