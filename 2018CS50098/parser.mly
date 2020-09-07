%token <float> FLOAT
%token PLUS MINUS STAR SLASH
%token LPAREN RPAREN LBRACK RBRACK
%token COMMA COLON ASSIGN SEMI
%token <string> UNARY
%token <string> BINARY
%token INVALID
%start main
%type <unit> main
%%
main: T {} ;
T : I ASSIGN E SEMI {} ;
E : UNARY E {print_string($1);print_string(" ");}
  | BINARY E E {print_string($1);print_string(" ");}
  | BINARY N E {print_string($1);print_string(" ");}
  | BINARY E N {print_string($1);print_string(" ");}
  | BINARY I E {print_string($1);print_string(" ");}
  | BINARY E I {print_string($1);print_string(" ");}
  | R {} ;
R : LPAREN I COLON I RPAREN {} ;
I : LBRACK N COMMA N RBRACK {} ;
N : N PLUS N {}
  | N MINUS N {}
  | N STAR N {}
  | N SLASH N {}
  | FLOAT {} ;
