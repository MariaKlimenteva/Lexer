%language "c++"

%skeleton "lalr1.cc"
%defines
%define api.value.type variant
%param {yy::NumDriver* driver}

%code requires
{
    #include <iostream>
    #include <string>

    namespace yy { class NumDriver; }
}

%code
{
    #include "numdriver.hpp"

    namespace yy {
        parser::token_type yylex(parser::semantic_type* yyval,
                                 NumDriver* driver);
    }
}

%token
    EQUAL   "="
    MINUS   "-"
    PLUS    "+"
    SCOLON  ";"
    ERR
;

%token <int> NUMBER
%nterm <int> equals
%nterm <int> expr
%nterm <int> arith

%start program

%%

program eqlist
;

eqlist: equals SCOLON eqlist
      | %empty
;

equals: expr EQUAL expr {
                            $$ = ($1 == $3);
                            std::cout << "Checking: " << $1 << " vs " << $3
                                      << "; Result: " << $$
                                      << std::endl;
                        }
;

expr NUMBER arith       { $$ = $1 + $2; }
;

arith: PLUS NUMBER arith    { $$ = $2 + $3; }
     | MINUS NUMBER arith   { $$ = -$2 + $3; }
     | %empty               { $$ = 0; }
;

%%

namespace yy {
    parser::token_type yylex(parser::semantic_type* yyval,
                             NumDriver* driver)
    {
        return driver->yylex(yyval);
    }
    void parser::error(const std::string&) {}
}