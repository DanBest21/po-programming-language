import Lexer (alexScanTokens)
import Parser 
import Evaluator (Output, load, mergeEnvironments)
import TypeChecker (TypeEnvironment, typeOfExps, mergeTypeEnvironments)
import System.Environment
import Control.Exception
import System.IO
import Data.Typeable

main :: IO ()
main = catch main' noParse

main' :: IO ()
main' = do -- (fileName : _ ) <- getArgs 
           contents <- readFile "../Tests/p5_input.txt" -- getContents
           let input = seq (checkInput $ words contents) (streamsSplit contents)
           (_, tenv, output) <- run "../Source Code/pr5.spl" input
           seq tenv (mapM_ (putStrLn . show) output)

run :: String -> [[Int]] -> IO (Environment, TypeEnvironment, Output)
run fileName input = do sourceCode <- readFile fileName
                        let ast = parse $ alexScanTokens $ sourceCode
                        let (imports, ast') = getImports ast
                        envsTenvsOuts <- mapM (\(Import x) -> run ("lib/" ++ x ++ ".spl") []) (if fileName /= "lib/std.spl" then (Import "std") : imports else imports)
                        let envs = map (\(env', _, _) -> env') envsTenvsOuts
                        let importedEnv = foldr mergeEnvironments [] envs
                        let tenvs = map (\(_, tenv', _) -> tenv') envsTenvsOuts
                        let (_, tenv) = typeOfExps (foldr mergeTypeEnvironments [] tenvs) ast'
                        let (env, out) = load ast' (streamsConvert input) importedEnv
                        return (env, tenv, out)
                        
getImports :: [Exp] -> ([Exp], [Exp])
getImports [] = ([], [])
getImports (e@(Import _) : es) = (e : imports, es')
      where (imports, es') = getImports es
getImports es = ([], es)

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

-- Convert a list of list of ints to a list of streams (the input).
streamsConvert :: [[Int]] -> [Exp]
streamsConvert = map (\xs -> Stream (map Int' xs))


checkStreamSize :: Int -> [[String]] -> Int
checkStreamSize n [] = n
checkStreamSize n (ss:sss) | length ss == n = checkStreamSize n sss
                           | otherwise      = error "Streams are different lengths"

