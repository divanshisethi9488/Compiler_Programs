%{
	#include<stdio.h>
%}
%%
[0-9]+[.][0-9]+ {
	printf("%s is a float number",yytext);
}
[0-9]+ {
	printf("%s is a integer number",yytext);
}
%%
int main()
{
	yylex();
}