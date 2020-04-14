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
bool                            { \p s -> TokenBoolType p }
TokenInput                      { \p s -> TokenInput p }
while                           { \p s -> TokenWhile p }
if                              { \p s -> TokenIf p }
elif                            { \p s -> TokenElif p }
else                            { \p s -> TokenElse p }
has_next                        { \p s -> TokenHasNext p }
next                            { \p s -> TokenNext p }
size                            { \p s -> TokenSize p }
$digit+                         { \p s -> TokenInt p (read s) }
(true)|(false)                  { \p s -> TokenBool p (read s) }
$alpha [$alpha $digit \_]*      { \p s -> TokenVar p s }
\<\=                            { \p s -> TokenLE p }
\>\=                            { \p s -> TokenGE p }
\=\=                            { \p s -> TokenEQ p }
\!\=                            { \p s -> TokenNE p }
\:                              { \p s -> TokenCons p }
\+\+                            { \p s -> TokenConcat p }
\<\-                            { \p s -> TokenTake p }
\=                              { \p s -> TokenAssign p }
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
    TokenIntType AlexPosn       |
    TokenStreamType AlexPosn    |
    TokenBoolType AlexPosn      |
    TokenInput AlexPosn         |
    TokenWhile AlexPosn         |
    TokenIf AlexPosn            |
    TokenElif AlexPosn          |
    TokenElse AlexPosn          |
    TokenHasNext AlexPosn       |
    TokenNext AlexPosn          |
    TokenSize AlexPosn          |
    TokenInt AlexPosn Int       |
    TokenBool AlexPosn Bool     |
    TokenStream AlexPosn String |
    TokenVar AlexPosn String    |
    TokenAssign AlexPosn        |
    TokenPlus AlexPosn          |
    TokenMinus AlexPosn         |
    TokenTimes AlexPosn         |
    TokenDiv AlexPosn           |
    TokenLParen AlexPosn        |
    TokenRParen AlexPosn        |
    TokenLSquare AlexPosn       |
    TokenRSquare AlexPosn       |
    TokenLCurly AlexPosn        |
    TokenRCurly AlexPosn        |
    TokenComma AlexPosn         |
    TokenNot AlexPosn           |
    TokenExponent AlexPosn      |
    TokenModulo AlexPosn        |
    TokenLT AlexPosn            |
    TokenGT AlexPosn            |
    TokenLE AlexPosn            |
    TokenGE AlexPosn            |
    TokenEQ AlexPosn            |
    TokenNE AlexPosn            |
    TokenCons AlexPosn          |
    TokenConcat AlexPosn        |
    TokenTake AlexPosn
    deriving (Eq,Show)
}