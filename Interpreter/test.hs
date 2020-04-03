import Lexer

main :: IO ()
main = do
    file <- readFile "pr1.spl"
    print (alexScanTokens file)