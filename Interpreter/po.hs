import Lexer
import Parser
import Evaluator
import System.Environment
import Control.Exception
import System.IO

main :: IO ()
main = catch main' noParse

main' = do (fileName : _ ) <- getArgs 
           sourceCode <- readFile fileName
           putStrLn ("Compiling " ++ (show fileName) ++ "...")
           evaluate $ parse $ alexScanTokens $ sourceCode

noParse :: ErrorCall -> IO ()
noParse e = do let err = show e
               hPutStr stderr err
               return ()
