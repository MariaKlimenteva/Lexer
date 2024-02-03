%language "c++"

%skeleton "lalr1.cc"
%defines
%define api.value.type variant
%param { yy::Driver* driver }

%code requires
{
    #include <iostream>
    #include <string>

    namespace yy { class Driver; }
}

%code
{
    #include "ParaCLdriver.hpp"

    namespace yy {
        parser::token_type yylex(parser::semantic_type* yyval,
                                 Driver* driver);
    }
}

%right OR
%right AND
%left GREATER GREATEREQ LESS LESSEQ
%right MINUS

%token
    ASSIGN      "="
    MINUS       "-"
    PLUS        "+"
    SCOLON      ";"
    MULTIPLY    "*" 
    DIVIDE      "/"
    LPAREN      "("
    RPAREN      ")"
    LBRACE      "{"
    RBRACE      "}"
    LESS        "<"
    GREATER     ">"
    GREATEREQ   ">="
    LESSEQ      "<="
    NOTEQUAL    "!="
    EQUAL       "=="
    AND         "&&"
    OR          "||"
    INPUT       "?"

    IF          "if"
    WHILE       "while"
    ELSE        "else"

    ERR
;

%token <int> TYPE_NUM
%token <int> TYPE_ID
%nterm <int> assign
%nterm <int> expression
%nterm <int> arithmetic
%nterm <int> cycle
%nterm <int> conditional
%nterm <int> boolean
%nterm <int> term
%nterm <int> primary
%nterm <int> statement
%nterm <int> statement_list
%nterm <int> else_maybe

%start program

%%

program: statement_list
;

statement_list: statement | statement_list statement
;

statement: assign | conditional | cycle | expression SCOLON
;

assign: TYPE_ID ASSIGN expression SCOLON {  
    if ($3 == -1) {
        std::cout << "Enter a value for " << $1 << ": ";
                    std::cin >> $3;
    }
    std::cout << "Assigned " << $3 << " to " << $1 << std::endl;
}
;

cycle: WHILE LPAREN expression RPAREN LBRACE statement_list RBRACE {std::cout << "Цикл" <<std::endl;}
;

conditional: IF LPAREN expression RPAREN LBRACE statement_list RBRACE else_maybe
;

else_maybe: ELSE LBRACE statement_list RBRACE 
    | %empty { $$ = 0; }
;

expression: expression AND boolean {
    $$ = ($1 && $3);
    std::cout << "Checking: " << $1 << " vs " << $3 << "; Result: " << $$ << std::endl;
}

| expression OR boolean {
    $$ = ($1 || $3);
    std::cout << "Checking: " << $1 << " vs " << $3 << "; Result: " << $$ << std::endl;
}

| boolean

| INPUT { $$ = -1; }
;

boolean: boolean GREATEREQ arithmetic {
    $$ = ($1 >= $3);
    std::cout << "Checking: " << $1 << " vs " << $3 << "; Result: " << $$ << std::endl;
}

| boolean LESSEQ arithmetic {
    $$ = ($1 <= $3);
    std::cout << "Checking: " << $1 << " vs " << $3 << "; Result: " << $$ << std::endl;
}

| boolean LESS arithmetic {
    $$ = ($1 < $3);
    std::cout << "Checking: " << $1 << " vs " << $3 << "; Result: " << $$ << std::endl;
}

| boolean GREATER arithmetic {
    $$ = ($1 > $3);
    std::cout << "Checking: " << $1 << " vs " << $3 << "; Result: " << $$ << std::endl;
}

| arithmetic
;

arithmetic: arithmetic PLUS term { $$ = $1 + $3; }

| arithmetic MINUS term { $$ = $1 - $3; }

| term

| %empty { $$ = 0; }
;

term: term MULTIPLY primary { $$ = $1 * $3; }

| term DIVIDE primary { $$ = $1 / $3; }
    
| primary
;

primary: MINUS primary { $$ = -$2; }
       
| LPAREN expression RPAREN
       
| TYPE_NUM
       
| TYPE_ID
;

%%

namespace yy {
    parser::token_type yylex(parser::semantic_type* yyval,
                             Driver* driver)
    {
        return driver->yylex(yyval);
    }
    void parser::error(const std::string&) {}
}