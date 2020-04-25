-- Pre-amble
{ 
module Lexer where
}

-- Wrapper
%wrapper "posn"

-- Macro Definitions
$digit = [0-9]
$alpha = [a-zA-Z]

-- Lexemes
tokens :-

$white+                         ;
"//".*                          ;
\;                              ;
int                             { \p s -> TokenIntType p }
stream                          { \p s -> TokenStreamType p }
boolean                         { \p s -> TokenBooleanType p }
input                           { \p s -> TokenInput p }
print                           { \p s -> TokenPrint p }
fn                              { \p s -> TokenFunction p }
return                          { \p s -> TokenReturn p }
while                           { \p s -> TokenWhile p }
if                              { \p s -> TokenIf p }
elif                            { \p s -> TokenElif p }
else                            { \p s -> TokenElse p }
has_next                        { \p s -> TokenHasNext p }
next                            { \p s -> TokenNext p }
size                            { \p s -> TokenSize p }
and                             { \p s -> TokenAnd p }
or                              { \p s -> TokenOr p }
$digit+                         { \p s -> TokenInt p (read s) }
true                            { \p s -> TokenBool p True }
false                           { \p s -> TokenBool p False }
$alpha [$alpha $digit \_]*      { \p s -> TokenVar p s }
\<\=                            { \p s -> TokenLE p }
\>\=                            { \p s -> TokenGE p }
\=\=                            { \p s -> TokenEQ p }
\!\=                            { \p s -> TokenNE p }
\:                              { \p s -> TokenCons p }
\+\+                            { \p s -> TokenPlusPlus p }
\-\-                            { \p s -> TokenMinusMinus p }
\<\-                            { \p s -> TokenTake p }
\-\>                            { \p s -> TokenReturnArrow p }
\=                              { \p s -> TokenAssign p }
\+\=                            { \p s -> TokenPlusEquals p }
\-\=                            { \p s -> TokenMinusEquals p }
\*\=                            { \p s -> TokenTimesEquals p }
\/\=                            { \p s -> TokenDivEquals p }
\^\=                            { \p s -> TokenExponentEquals p }
\%\=                            { \p s -> TokenModuloEquals p }
\+                              { \p s -> TokenPlus p }
\-                              { \p s -> TokenMinus p }
\*                              { \p s -> TokenTimes p }
\/                              { \p s -> TokenDiv p }
\(                              { \p s -> TokenLParen p }
\)                              { \p s -> TokenRParen p }
\[                              { \p s -> TokenLSquare p }
\]                              { \p s -> TokenRSquare p }
\{                              { \p s -> TokenLCurly p }
\}                              { \p s -> TokenRCurly p }
\,                              { \p s -> TokenComma p }
\!                              { \p s -> TokenNot p }
\^                              { \p s -> TokenExponent p }
\%                              { \p s -> TokenModulo p }
\<                              { \p s -> TokenLT p }
\>                              { \p s -> TokenGT p }

-- Post-amble
{
data Token =
    TokenIntType AlexPosn        |
    TokenStreamType AlexPosn     |
    TokenBooleanType AlexPosn    |
    TokenInput AlexPosn          |
    TokenPrint AlexPosn          |
    TokenFunction AlexPosn       |
    TokenReturn AlexPosn         |
    TokenWhile AlexPosn          |
    TokenIf AlexPosn             |
    TokenElif AlexPosn           |
    TokenElse AlexPosn           |
    TokenHasNext AlexPosn        |
    TokenNext AlexPosn           |
    TokenSize AlexPosn           |
    TokenAnd AlexPosn            |
    TokenOr AlexPosn             |
    TokenInt AlexPosn Int        |
    TokenBool AlexPosn Bool      |
    TokenStream AlexPosn String  |
    TokenVar AlexPosn String     |
    TokenLE AlexPosn             |
    TokenGE AlexPosn             |
    TokenEQ AlexPosn             |
    TokenNE AlexPosn             |
    TokenCons AlexPosn           |
    TokenPlusPlus AlexPosn       |
    TokenMinusMinus AlexPosn     |
    TokenTake AlexPosn           |
    TokenReturnArrow AlexPosn    |
    TokenAssign AlexPosn         |
    TokenPlusEquals AlexPosn     |
    TokenMinusEquals AlexPosn    |
    TokenTimesEquals AlexPosn    |
    TokenDivEquals AlexPosn      |
    TokenExponentEquals AlexPosn |
    TokenModuloEquals AlexPosn   |
    TokenPlus AlexPosn           |
    TokenMinus AlexPosn          |
    TokenTimes AlexPosn          |
    TokenDiv AlexPosn            |
    TokenLParen AlexPosn         |
    TokenRParen AlexPosn         |
    TokenLSquare AlexPosn        |
    TokenRSquare AlexPosn        |
    TokenLCurly AlexPosn         |
    TokenRCurly AlexPosn         |
    TokenComma AlexPosn          |
    TokenNot AlexPosn            |
    TokenExponent AlexPosn       |
    TokenModulo AlexPosn         |
    TokenLT AlexPosn             |
    TokenGT AlexPosn
    deriving (Eq,Show)

tokenPosn :: Token -> String
tokenPosn (TokenIntType (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
tokenPosn (TokenStreamType (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
tokenPosn (TokenBooleanType (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
tokenPosn (TokenInput (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
tokenPosn (TokenPrint (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
tokenPosn (TokenFunction (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
tokenPosn (TokenReturn (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
tokenPosn (TokenWhile (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
tokenPosn (TokenIf (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
tokenPosn (TokenElif (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
tokenPosn (TokenElse (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
tokenPosn (TokenHasNext (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
tokenPosn (TokenNext (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
tokenPosn (TokenSize (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
tokenPosn (TokenAnd (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
tokenPosn (TokenOr (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
tokenPosn (TokenInt (AlexPn _ x y) _) = show(x) ++ " " ++ show(y)
tokenPosn (TokenBool (AlexPn _ x y) _) = show(x) ++ " " ++ show(y)
tokenPosn (TokenStream (AlexPn _ x y) _) = show(x) ++ " " ++ show(y)
tokenPosn (TokenVar (AlexPn _ x y) _) = show(x) ++ " " ++ show(y)
tokenPosn (TokenLE (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
tokenPosn (TokenGE (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
tokenPosn (TokenEQ (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
tokenPosn (TokenNE (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
tokenPosn (TokenCons (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
tokenPosn (TokenPlusPlus (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
tokenPosn (TokenMinusMinus (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
tokenPosn (TokenTake (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
tokenPosn (TokenReturnArrow (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
tokenPosn (TokenAssign (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
tokenPosn (TokenPlusEquals (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
tokenPosn (TokenMinusEquals (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
tokenPosn (TokenTimesEquals (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
tokenPosn (TokenDivEquals (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
tokenPosn (TokenExponentEquals (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
tokenPosn (TokenModuloEquals (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
tokenPosn (TokenPlus (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
tokenPosn (TokenMinus (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
tokenPosn (TokenTimes (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
tokenPosn (TokenDiv (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
tokenPosn (TokenLParen (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
tokenPosn (TokenRParen (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
tokenPosn (TokenLSquare (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
tokenPosn (TokenRSquare (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
tokenPosn (TokenLCurly (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
tokenPosn (TokenRCurly (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
tokenPosn (TokenComma (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
tokenPosn (TokenNot (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
tokenPosn (TokenExponent (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
tokenPosn (TokenModulo (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
tokenPosn (TokenLT (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
tokenPosn (TokenGT (AlexPn _ x y)) = show(x) ++ " " ++ show(y)
}
