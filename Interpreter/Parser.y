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
    ';'          { TokenSemicolon _ }
    int_type     { TokenIntType _ }
    stream_type  { TokenStreamType _ }
    boolean_type { TokenBooleanType _ }
    input        { TokenInput _ }
    print        { TokenPrint _ }
    fn           { TokenFunction _ }
    return       { TokenReturn _ }
    while        { TokenWhile _ }
    process      { TokenProcess _ }
    as           { TokenAs _ }
    if           { TokenIf _ }
    elif         { TokenElif _ }
    else         { TokenElse _ }
    has_next     { TokenHasNext _ }
    next         { TokenNext _ }
    size         { TokenSize _ }
    and          { TokenAnd _ }
    or           { TokenOr _ }
    int          { TokenInt _ $$ }
    bool         { TokenBool _ $$ }
    var          { TokenVar _ $$ }
    '<='         { TokenLE _ }
    '>='         { TokenGE _ }
    '=='         { TokenEQ _ }
    '!='         { TokenNE _ }
    ':'          { TokenCons _ }
    '++'         { TokenPlusPlus _ }
    '--'         { TokenMinusMinus _ }
    '<-'         { TokenTake _ }
    '->'         { TokenReturnArrow _ }
    '='          { TokenAssign _ }
    '+='         { TokenPlusEquals _ }
    '-='         { TokenMinusEquals _ }
    '*='         { TokenTimesEquals _ }
    '/='         { TokenDivEquals _ }
    '^='         { TokenExponentEquals _ }
    '%='         { TokenModuloEquals _ }
    '+'          { TokenPlus _ }
    '-'          { TokenMinus _ }
    '*'          { TokenTimes _ }
    '/'          { TokenDiv _ }
    '('          { TokenLParen _ }
    ')'          { TokenRParen _ }
    '['          { TokenLSquare _ }
    ']'          { TokenRSquare _ }
    '{'          { TokenLCurly _ }
    '}'          { TokenRCurly _ }
    ','          { TokenComma _ }
    '!'          { TokenNot _ }
    '^'          { TokenExponent _ }
    '%'          { TokenModulo _ }
    '<'          { TokenLT _ }
    '>'          { TokenGT _ }
    '_'          { TokenUnderscore _ }

-- Grammar
%nonassoc var ','
%nonassoc VARREF
%right '=' '+=' '-=' '*=' '/=' '^=' '%=' print return
%left CONCAT
%left or
%left and
%left '==' '!='
%left '>' '<' '>=' '<='
%left '+' '-'
%left '*' '/' '%'
%right NEG '!' '++' '--'
%right '<-' ':'
%right '^'
%left has_next next size SINGLE_LITERAL
%left input '[' ']' '(' ')'
%%
Expr : {- empty -}                       { [] }
     | Exps                              { $1 }

Exps : Exp                               { [$1] }
     | Exp ';'                           { [$1] }
     | Exp Exps                          { $1 : $2 }
     | Exp ';' Exps                      { $1 : $3 }

Exp : while Exp '{' Expr '}'             { While $2 $4 }
    | process ProcessList '{' Expr '}'   { convertProcessToWhile $2 $4 }
    | If                                 { $1 }
    | has_next Exp                       { HasNext $2 }
    | next Exp                           { Next $2 }
    | size Exp                           { Size $2 }
    | Exp and Exp                        { And $1 $3 }
    | Exp or Exp                         { Or $1 $3 }
    | int                                { Int' $1 }
    | bool                               { Boolean' $1 }
    | '[' StreamLiteral ']'              { Stream $2 }
    | Exp '<=' Exp                       { LE $1 $3 }
    | Exp '>=' Exp                       { GE $1 $3 }
    | Exp '==' Exp                       { EQ' $1 $3 }
    | Exp '!=' Exp                       { NE $1 $3 }
    | Exp ':' Exp                        { Cons $1 $3 }
    | Exp '++' Exp %prec CONCAT          { Concat $1 $3 }
    | Exp '<-' Exp                       { Take $1 $3 }
    | Type var '=' Exp                   { VarDec $1 $2 $4 }
    | var '=' Exp                        { VarAssign $1 $3 }
    | var '+=' Exp                       { VarAssign $1 (Plus (VarRef $1) $3) }
    | var '-=' Exp                       { VarAssign $1 (Minus (VarRef $1) $3) }
    | var '*=' Exp                       { VarAssign $1 (Times (VarRef $1) $3) }
    | var '/=' Exp                       { VarAssign $1 (Div (VarRef $1) $3) }
    | var '^=' Exp                       { VarAssign $1 (Exponent (VarRef $1) $3) }
    | var '%=' Exp                       { VarAssign $1 (Modulo (VarRef $1) $3) }
    | '++' var                           { VarAssign $2 (Plus (VarRef $2) (Int' 1)) }
    | '--' var                           { VarAssign $2 (Minus (VarRef $2) (Int' 1)) }
    | var %prec VARREF                   { VarRef $1 }
    | Exp '+' Exp                        { Plus $1 $3 }
    | Exp '-' Exp                        { Minus $1 $3 }
    | Exp '*' Exp                        { Times $1 $3 }
    | Exp '/' Exp                        { Div $1 $3 }
    | Exp '[' Exp ']'                    { StreamGet $1 $3 }
    | input '{' Exp '}'                  { InputGet $3 }
    | print Exp                          { Print $2 }
    | FnDec                              { $1 }
    | var '(' ArgList ')'                { FnCall $1 $3 }
    | return Exp                         { FnReturn $2 }
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
     | boolean_type                      { TypeBoolean }
     | stream_type                       { TypeStream }

ParamType : Type                         { $1 }
          | fn                           { TypeFn }

FnDec : fn var '(' ParamList ')' '{' Expr '}'           { FnDec $2 $4 TypeNone ($7) }
      | fn var '(' ParamList ')' '->' Type '{' Expr '}' { FnDec $2 $4 $7 ($9) }

ParamList : {- empty -}                  { [] }
          | ParamType var                { [($1, $2)] }
          | ParamType var ',' ParamList  { ($1, $2) : $4 }

ArgList : {- empty -}                    { [] }
        | Exp                            { [$1] }
        | Exp ',' ArgList                { $1 : $3 }

ProcessList : Exp as '[' VarList ']' %prec SINGLE_LITERAL { [($1, $4)] }
            | Exp as '[' VarList ']' ',' ProcessList      { ($1, $4) : $7 }

VarList : var                            { [$1] }
        | '_' ',' VarList                { "_" : $3 }
        | var ',' VarList                { $1 : $3 }

-- Post-amble
{
parseError :: [Token] -> a
parseError [] = error "Unknown error in parsing"
parseError (t : ts) = error errorMessage
    where (line, col) = tokenPosn t
          errorMessage = "Parse error at line " ++ (show line) ++ ", column " ++ (show col)

data Type = TypeNone
          | TypeInt 
          | TypeBoolean 
          | TypeStream
          | TypeFn
          | TypeFunction Type [Type]
          deriving (Eq)

instance Show Type where
     show (TypeNone) = "<no_type>" 
     show (TypeInt) = "int"
     show (TypeBoolean) = "boolean"
     show (TypeStream) = "stream"
     show (TypeFn) = "fn"
     show (TypeFunction _ _) = "function" 

data Exp = While Exp [Exp]
         | If [(Exp, [Exp])]
         | Block [Exp]
         | Print Exp
         | FnDec String [(Type, String)] Type [Exp]
         | FnCall String [Exp]
         | FnReturn Exp
         | HasNext Exp
         | Next Exp
         | Size Exp
         | And Exp Exp
         | Or Exp Exp
         | Int' Int
         | Boolean' Bool
         | Stream [Exp]
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
         | VarDec Type String Exp
         | VarAssign String Exp
         | VarRef String
         deriving (Eq, Show)

checkIfReference :: Exp -> Bool
checkIfReference (VarRef e) = True
checkIfReference (InputGet e) = True
checkIfReference _ = False

convertProcessToWhile :: [(Exp, [String])] -> [Exp] -> Exp
convertProcessToWhile plist es = Block (streamDecs ++ [While cond (varDecs ++ es)]) 
     where ((s, size) : plistsize) = [ (if (not $ checkIfReference e) then (VarRef ("_processStream" ++ (show i))) else e, length vars) | ((e, vars), i) <- zip plist [1..] ]
           cond                    = foldr (\(e, n) (And x y) -> And x (And y (GE (Size e) (Int' n)))) (And (GE (Size s) (Int' size)) (Boolean' True)) (plistsize)
           streamDecs              = [ VarDec TypeStream ("_processStream" ++ show(i)) s | ((s, _), i) <- zip plist [1..], not (checkIfReference s) ]
           varDecs                 = [ VarDec TypeInt x (Next (if (not $ checkIfReference s) then (VarRef ("_processStream" ++ (show i))) else s)) | ((s, xs), i) <- zip plist [1..], x <- xs ]
}
