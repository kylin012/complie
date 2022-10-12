%{
#include <iostream>
#include <map>
#include <cstring>
using namespace std;

int yylex();
extern int yyparse();
FILE* yyin;
void yyerror(const char* s);
char idstr[50];
map<string, double>table;
%}

%union  {
    double dval;
    char cval[50];
}

%token <cval> ID
%token <dval> NUMBER
%token SET
%token ADD
%token SUB
%token MUL
%token DIV
%token LBRAC
%token RBRAC
%right SET
%left ADD SUB
%left MUL DIV
%right UMINUS

%type <dval> expr
%type <dval> stat 
%%

lines : lines ';'
      | lines stat ';' {cout<<$2<<endl;}
      |
      ;

stat : ID SET expr {$$=$3;table[$1] = $3; }
     | expr
     ;

expr : expr ADD expr {$$=$1+$3;}
	 | expr SUB expr {$$=$1-$3;}
	 | expr MUL expr {$$=$1*$3;}
	 | expr DIV expr {if($3==0.0)
                        yyerror("can't be zero!");
                      else
                        $$=$1/$3;
                    }
	 | LBRAC expr RBRAC {$$=$2;}
	 | SUB expr %prec UMINUS {$$=-$2;}
	 | NUMBER {$$=$1;}
     | ID {$$=table[$1];}
	 ;
%%

int yylex()
{
    int t;
    while(1)
    {
        t = getchar();
        if(t == ' ' || t == '\t' || t == '\n');
        else if(isdigit(t)){
            yylval.dval = 0;
            while(isdigit(t)){
                yylval.dval=yylval.dval*10+t-'0';
                t=getchar();
            }
            ungetc(t,stdin);
            return NUMBER;
        }
        else if((t>='a'&&t<='z')||(t>='A'&&t<='Z')||t=='_'){
            int ti=0;
            while((t>='a'&&t<='z')||(t>='A'&&t<='Z')||(t>='0'&&t<='9')||t=='_'){
                idstr[ti]=t;
                t=getchar();
                ti++;
            }
            idstr[ti]='\0';
            strcpy(yylval.cval,idstr);
            ungetc(t,stdin);
            return ID;
        }
        else if(t=='+')
            return ADD;
        else if(t=='-')
            return SUB;
        else if(t=='*')
            return MUL;
        else if(t=='/')
            return DIV;
        else if(t=='(')
            return LBRAC;
        else if(t==')')
            return RBRAC;
        else if(t=='=')
            return SET;
        else{
            return t;
        }
    }
}
int main(){
    yyin=stdin;
    do{
        yyparse();
    }while(!feof(yyin));
    return 0;
}
void yyerror(const char *s){
    fprintf(stderr,"error: %s\n",s);
    exit(1);
}