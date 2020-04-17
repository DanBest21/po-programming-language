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
    input       { TokenInput _ }
    print       { TokenPrint _ }
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
%right '=' print
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
%left has_next next size SINGLE_LITERAL
%left input '[' ']'
%%
Expr : {- empty -}                       { [] }
     | Exps                              { $1 }

Exps : Exp                               { [$1] }
     | Exp Exps                          { $1 : $2 }

Exp : while Exp '{' Expr '}'             { While $2 $4 }
    | If                                 { $1 }
    | has_next Exp                       { HasNext $2 }
    | next Exp                           { Next $2 }
    | size Exp                           { Size $2 }
    | int                                { Int' $1 }
    | bool                               { Boolean' $1 }
    | '[' StreamLiteral ']'              { Stream $2 }
    | Exp '<=' Exp                       { LE $1 $3 }
    | Exp '>=' Exp                       { GE $1 $3 }
    | Exp '==' Exp                       { EQ' $1 $3 }
    | Exp '!=' Exp                       { NE $1 $3 }
    | Exp ':' Exp                        { Cons $1 $3 }
    | Exp '++' Exp                       { Concat $1 $3 }
    | Exp '<-' Exp                       { Take $1 $3 }
    | Type var '=' Exp                   { VarDec $1 $2 $4 }
    | var '=' Exp                        { VarAssign $1 $3 }
    | var                                { VarRef $1 }
    | Exp '+' Exp                        { Plus $1 $3 }
    | Exp '-' Exp                        { Minus $1 $3 }
    | Exp '*' Exp                        { Times $1 $3 }
    | Exp '/' Exp                        { Div $1 $3 }
    | Exp '[' Exp ']'                    { StreamGet $1 $3 }
    | input '{' Exp '}'                  { InputGet $3 }
    | print Exp                          { Print $2 }
    | '!' Exp                            { Not $2 }
    | Exp '^' Exp                        { Exponent $1 $3 }
    | Exp '%' Exp                        { Modulo $1 $3 }
    | Exp '<' Exp                        { LT' $1 $3 }
    | Exp '>' Exp                        { GT' $1 $3 }
    | '-' Exp %prec NEG                  { Negate $2 }
    | '(' Exp ')'                        { $2 }

If : if Exp '{' Expr '}' Elif Else       { If (($2, $4) : ($6 ++ $7)) }

Elif : {- empty -}                       { [] }
     | elif Exp '{' Expr '}' Elif        { ($2, $4) : $6 }

Else : {- empty -}                       { [] }
     | else '{' Expr '}'                 { [(Boolean' True, $3)] }

StreamLiteral : {- empty -}              { [] }
              | Exp %prec SINGLE_LITERAL { [$1] }
              | Exp ',' StreamLiteral    { $1 : $3 }

Type : int_type                          { TypeInt }
     | bool_type                         { TypeBoolean }
     | stream_type                       { TypeStream }

-- Post-amble
{
parseError :: [Token] -> a
parseError ts = error errorMessage
    where lineCol = words (tokenPosn (last ts))
          errorMessage = "Parse error at line " ++ (lineCol !! 0) ++ ", column " ++ (lineCol !! 1)

data Type = TypeInt 
          | TypeBoolean 
          | TypeStream 
          deriving (Eq, Show)

data Exp = While Exp [Exp]
         | If [(Exp, [Exp])]
         | Print Exp
         | HasNext Exp
         | Next Exp
         | Size Exp
         | Int' Int
         | Boolean' Bool
         | Stream [Exp]
         | VarDec Type String Exp
         | VarAssign String Exp
         | VarRef String
         | LE Exp Exp
         | GE Exp Exp
         | LT' Exp Exp
         | GT' Exp Exp
         | EQ' Exp Exp
         | NE Exp Exp
         | Cons Exp Exp
         | Concat Exp Exp
         | Take Exp Exp
         | Plus Exp Exp
         | Minus Exp Exp
         | Times Exp Exp
         | Div Exp Exp
         | StreamGet Exp Exp
         | InputGet Exp
         | Not Exp
         | Exponent Exp Exp
         | Modulo Exp Exp
         | Negate Exp
         deriving (Eq, Show)
}
