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
%right '='
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
%left STREAMGET INPUTGET
%%
Exp : while Exp '{' Exp '}'     { While $2 $4 }
    | if Exp '{' Exp '}'        { If $2 $4 }
    | elif Exp '{' Exp '}'      { Elif $2 $4 }
    | else '{' Exp '}'          { Else $3 }
    | has_next Exp              { HasNext $2 }
    | next Exp                  { Next $2 }
    | size Exp                  { Size $2 }
    | int                       { Int $1 }
    | bool                      { Boolean $1 }
    | '[' Stream ']'            { Stream $2 }

Stream : {- empty -}            { [] }
       | Exp                    { [$1] }
       | Exp ',' Exp            { $3 : $1 }

-- Post-amble
{
parseError :: [Token] -> a
parseError ts = error errorMessage
    where lineCol = words (tokenPosn (last ts))
          errorMessage = "Parse error at line " ++ (lineCol !! 0) ++ ", column " ++ (lineCol !! 1)

type Stream = [Int]

data Type = Int' 
          | Boolean' 
          | Stream' 

data Exp = While Exp Exp
         | If Exp Exp
         | Elif Exp Exp
         | Else Exp
         | HasNext Exp
         | Next Exp
         | Size Exp
         | Int Int
         | Boolean Bool
         | Stream Stream
         | Var Type String
         | LE Exp Exp
         | GE Exp Exp
         | EQ Exp Exp
         | NE Exp Exp
         | Cons Exp Exp
         | Concat Exp Exp
         | Take Exp Exp
         | Assign Var Exp
         | Plus Exp Exp
         | Minus Exp Exp
         | Times Exp Exp
         | Div Exp Exp
         | StreamGet Exp
         | InputGet Exp
         | Exponent Exp Exp
         | Modulo Exp Exp
         | LT Exp Exp
         | GT Exp Exp
}