%option c++

%{
#include "ParaCL.tab.hh"
%}

WS          [ \t\n\v]+
COMMENT     \/\/[^\n]*
TYPE_ID     [a-zA-Z_][a-zA-Z0-9_]*
TYPE_NUM    [0-9]+

%%

{WS}                /* skip blanks and tabs */
{COMMENT}           /* skip comments        */
";"                 return yy::parser::token_type::SCOLON;
"+"                 return yy::parser::token_type::PLUS;
"-"                 return yy::parser::token_type::MINUS;
"="                 return yy::parser::token_type::ASSIGN;
"<"                 return yy::parser::token_type::LESS;
">"                 return yy::parser::token_type::GREATER;
"{"                 return yy::parser::token_type::LBRACE;
"}"                 return yy::parser::token_type::RBRACE;
"("                 return yy::parser::token_type::LPAREN;
")"                 return yy::parser::token_type::RPAREN;
"?"                 return yy::parser::token_type::INPUT;
"<="                return yy::parser::token_type::LESSEQ;
">="                return yy::parser::token_type::GREATEREQ;

"if"                return yy::parser::token_type::IF;
"while"             return yy::parser::token_type::WHILE;
{TYPE_NUM}          return yy::parser::token_type::TYPE_NUM;
{TYPE_ID}           return yy::parser::token_type::TYPE_ID;
                
.                   return yy::parser::token_type::ERR;

%%