import Lexer (alexScanTokens)
import Parser (parse)
import Evaluator (evaluate)
import TypeChecker (typeOfExps)
import System.Environment
import Control.Exception hiding (evaluate)
import System.IO
import Data.Typeable

main :: IO ()
main = catch main' noParse

main' = do -- (fileName : _ ) <- getArgs 
           sourceCode <- readFile "../Source Code/pr2.spl" -- fileName
           contents <- readFile "../Tests/p2_input.txt" -- getContents
           let input = seq (checkInput $ words contents) (streamsSplit contents)
           let ast = parse $ alexScanTokens $ sourceCode
           let output = seq (typeOfExps [] ast) (evaluate ast input)
           mapM_ (putStrLn . show) output

noParse :: ErrorCall -> IO ()
noParse e = do let err = show e
               hPutStrLn stderr err
               return ()

checkInput :: [String] -> Bool
checkInput [] = True
checkInput (('-' : []) : _) = error $ "Invalid character '-' found on input stream."
checkInput (x : xs) = (checkInput' x) && (checkInput xs)

checkInput' :: String -> Bool
checkInput' [] = True
checkInput' (x : xs) | [x] `elem` acceptableChars = checkInput' xs
                     | otherwise                  = error $ "Invalid character '" ++ [x] ++ "' found on input stream."
      where acceptableChars = [" "] ++ ["\n"] ++ ["-"] ++ (map (show) [0..9])    

streamsSplit :: String -> [[Int]] -- List of streams
streamsSplit s = map (\i -> map (read . (!! i)) horizontal) [0..(streamLen-1)]
              where horizontal = filter (not . null) $ map words (lines s)
                    streamLen = checkStreamSize (length $ head $ horizontal) (tail horizontal)

checkStreamSize :: Int -> [[String]] -> Int
checkStreamSize n [] = n
checkStreamSize n (ss:sss) | length ss == n = checkStreamSize n sss
                           | otherwise      = error "Streams are different lengths"

