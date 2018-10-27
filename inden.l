%{
	#include<stdio.h>
	int count=0;
%}

digits [0-9]
letters [a-zA-Z]
id {letters}*|({letters}+{digits}*)+
notid ({digits}+{letters}*)+
keyword if|else|int|main|return|printf|scanf|while|float

%%
{keyword} {
	printf("%s is a keyword\n",yytext);
}

{id} {
	printf("%s is a identifier\n",yytext);
	count++;
}

{notid} {
	printf("%s is not an identifier\n",yytext);
}
%%
int main()
{
	yyin=fopen("text.txt","r");
	yylex();
	printf("the number of identifiers is %d\n",count);
}