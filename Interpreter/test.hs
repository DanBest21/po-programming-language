import Lexer
import Parser

main :: IO ()
main = do
    file <- readFile "../Source Code/pr1.spl"
    print (parse (alexScanTokens file))