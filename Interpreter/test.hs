import Lexer
import Parser

main :: IO ()
main = do
    file1 <- readFile "../Source Code/pr1.spl"
    file2 <- readFile "../Source Code/pr2.spl"
    file3 <- readFile "../Source Code/pr3.spl"
    file4 <- readFile "../Source Code/pr4.spl"
    file5 <- readFile "../Source Code/pr5.spl"
    putStrLn ("1. " ++ show (parse (alexScanTokens file1)))
    putStrLn ("2. " ++ show (parse (alexScanTokens file2)))
    putStrLn ("3. " ++ show (parse (alexScanTokens file3)))
    putStrLn ("4. " ++ show (parse (alexScanTokens file4)))
    putStrLn ("5. " ++ show (parse (alexScanTokens file5)))