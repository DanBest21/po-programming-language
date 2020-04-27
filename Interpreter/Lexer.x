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
process                         { \p s -> TokenProcess p }
as                              { \p s -> TokenAs p }
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
\_                              { \p s -> TokenUnderscore p }

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
    TokenProcess AlexPosn        |
    TokenAs AlexPosn             |
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
    TokenGT AlexPosn             |
    TokenUnderscore AlexPosn
    deriving (Eq,Show)

tokenPosn :: Token -> (Int, Int)
tokenPosn (TokenIntType (AlexPn _ x y)) = (x, y)
tokenPosn (TokenStreamType (AlexPn _ x y)) = (x, y)
tokenPosn (TokenBooleanType (AlexPn _ x y)) = (x, y)
tokenPosn (TokenInput (AlexPn _ x y)) = (x, y)
tokenPosn (TokenPrint (AlexPn _ x y)) = (x, y)
tokenPosn (TokenFunction (AlexPn _ x y)) = (x, y)
tokenPosn (TokenReturn (AlexPn _ x y)) = (x, y)
tokenPosn (TokenWhile (AlexPn _ x y)) = (x, y)
tokenPosn (TokenProcess (AlexPn _ x y)) = (x, y)
tokenPosn (TokenAs (AlexPn _ x y)) = (x, y)
tokenPosn (TokenIf (AlexPn _ x y)) = (x, y)
tokenPosn (TokenElif (AlexPn _ x y)) = (x, y)
tokenPosn (TokenElse (AlexPn _ x y)) = (x, y)
tokenPosn (TokenHasNext (AlexPn _ x y)) = (x, y)
tokenPosn (TokenNext (AlexPn _ x y)) = (x, y)
tokenPosn (TokenSize (AlexPn _ x y)) = (x, y)
tokenPosn (TokenAnd (AlexPn _ x y)) = (x, y)
tokenPosn (TokenOr (AlexPn _ x y)) = (x, y)
tokenPosn (TokenInt (AlexPn _ x y) _) = (x, y)
tokenPosn (TokenBool (AlexPn _ x y) _) = (x, y)
tokenPosn (TokenStream (AlexPn _ x y) _) = (x, y)
tokenPosn (TokenVar (AlexPn _ x y) _) = (x, y)
tokenPosn (TokenLE (AlexPn _ x y)) = (x, y)
tokenPosn (TokenGE (AlexPn _ x y)) = (x, y)
tokenPosn (TokenEQ (AlexPn _ x y)) = (x, y)
tokenPosn (TokenNE (AlexPn _ x y)) = (x, y)
tokenPosn (TokenCons (AlexPn _ x y)) = (x, y)
tokenPosn (TokenPlusPlus (AlexPn _ x y)) = (x, y)
tokenPosn (TokenMinusMinus (AlexPn _ x y)) = (x, y)
tokenPosn (TokenTake (AlexPn _ x y)) = (x, y)
tokenPosn (TokenReturnArrow (AlexPn _ x y)) = (x, y)
tokenPosn (TokenAssign (AlexPn _ x y)) = (x, y)
tokenPosn (TokenPlusEquals (AlexPn _ x y)) = (x, y)
tokenPosn (TokenMinusEquals (AlexPn _ x y)) = (x, y)
tokenPosn (TokenTimesEquals (AlexPn _ x y)) = (x, y)
tokenPosn (TokenDivEquals (AlexPn _ x y)) = (x, y)
tokenPosn (TokenExponentEquals (AlexPn _ x y)) = (x, y)
tokenPosn (TokenModuloEquals (AlexPn _ x y)) = (x, y)
tokenPosn (TokenPlus (AlexPn _ x y)) = (x, y)
tokenPosn (TokenMinus (AlexPn _ x y)) = (x, y)
tokenPosn (TokenTimes (AlexPn _ x y)) = (x, y)
tokenPosn (TokenDiv (AlexPn _ x y)) = (x, y)
tokenPosn (TokenLParen (AlexPn _ x y)) = (x, y)
tokenPosn (TokenRParen (AlexPn _ x y)) = (x, y)
tokenPosn (TokenLSquare (AlexPn _ x y)) = (x, y)
tokenPosn (TokenRSquare (AlexPn _ x y)) = (x, y)
tokenPosn (TokenLCurly (AlexPn _ x y)) = (x, y)
tokenPosn (TokenRCurly (AlexPn _ x y)) = (x, y)
tokenPosn (TokenComma (AlexPn _ x y)) = (x, y)
tokenPosn (TokenNot (AlexPn _ x y)) = (x, y)
tokenPosn (TokenExponent (AlexPn _ x y)) = (x, y)
tokenPosn (TokenModulo (AlexPn _ x y)) = (x, y)
tokenPosn (TokenLT (AlexPn _ x y)) = (x, y)
tokenPosn (TokenGT (AlexPn _ x y)) = (x, y)
tokenPosn (TokenUnderscore (AlexPn _ x y)) = (x, y)
}
