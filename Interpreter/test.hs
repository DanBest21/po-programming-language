import Lexer

main :: IO ()
main = do
    file <- readFile "../Source Code/pr1.spl"
    print (alexScanTokens file)