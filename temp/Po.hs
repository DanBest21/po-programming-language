import Lexer
import Parser
import Evaluator
import TypeChecker
import System.Environment
import Control.Exception hiding (evaluate)
import System.IO

main :: IO ()
main = catch main' noParse

main' = do -- (fileName : _ ) <- getArgs 
           sourceCode <- readFile "../Source Code/pr0.spl" -- fileName
           contents <- readFile "../Tests/p1_input.txt" -- getContents
           let input = streams_convert $ streams_split contents
           let ast = parse $ alexScanTokens $ sourceCode
           let output = evaluate ast input -- seq (typeOfExps [] ast) (evaluate ast input)
           mapM_ (putStrLn . show) output

noParse :: ErrorCall -> IO ()
noParse e = do let err = show e
               hPutStrLn stderr err
               return ()

streams_split :: String -> [[Int]] -- List of streams
streams_split s = map (\i -> map (read . (!! i)) horizontal) [0..(stream_len-1)]
              where horizontal = filter (not . null) $ map words (lines s)
                    stream_len = length $ head $ horizontal

streams_convert :: [[Int]] -> [Exp]
streams_convert = map (\xs -> Stream (map Int' xs))
