-- Pre-amble
{
module Parser where
import Lexer
}

-- Name Directive
%name parse

-- Token Type Directive
%tokentype { Token }

-- Error Directive
%error { parseError }

-- Token Directive
%token
    int_type    { TokenIntType _ }
    stream_type { TokenStreamType _ }
    bool_type   { TokenBoolType _ }
    while       { TokenWhile _ }
    if          { TokenIf _ }
    elif        { TokenElif _ }
    else        { TokenElse _ }
    has_next    { TokenHasNext _ }
    next        { TokenNext _ }
    size        { TokenSize _ }
    int         { TokenInt _ $$ }
    bool        { TokenBool _ $$ }
    var         { TokenVar _ $$ }
    '<='        { TokenLE _ }
    '>='        { TokenGE _ }
    '=='        { TokenEQ _ }
    '!='        { TokenNE _ }
    ':'         { TokenCons _ }
    '++'        { TokenConcat _ }
    '<-'        { TokenTake _ }
    '='         { TokenAssign _ }
    '+'         { TokenPlus _ }
    '-'         { TokenMinus _ }
    '*'         { TokenTimes _ }
    '/'         { TokenDiv _ }
    '('         { TokenLParen _ }
    ')'         { TokenRParen _ }
    '['         { TokenLSquare _ }
    ']'         { TokenRSquare _ }
    '{'         { TokenLCurly _ }
    '}'         { TokenRCurly _ }
    ','         { TokenComma _ }
    '!'         { TokenNot _ }
    '^'         { TokenExponent _ }
    '%'         { TokenModulo _ }
    '<'         { TokenLT _ }
    '>'         { TokenGT _ }

-- Grammar
%nonassoc if 
%nonassoc elif 
%nonassoc else
%left '==' '!='
%left '>' '<' '>=' '<='
%left '+' '-'
%left '*' '/' '%'
%right NEG '!'
%left '++'
%right '<-' ':'
%right '^'
%left has_next next size
%%

-- Post-amble