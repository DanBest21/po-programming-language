import Lexer
import Parser
import Evaluator
import System.IO

main :: IO ()
main = do
    withFile "../Tests/p1_input.txt" ReadMode test -- Replace with just getContents, that is stdin

test :: Handle -> IO ()
test handle = do 
            contents <- hGetContents handle
            putStrLn $ show $ streams_convert $ streams_split contents

streams_split :: String -> [[Int]] -- List of streams
streams_split s = map (\i -> map (read . (!! i)) horizontal) [0..(stream_len-1)]
              where horizontal = filter (not . null) $ map words (lines s)
                    stream_len = length $ head $ horizontal

streams_convert :: [[Int]] -> [Exp]
streams_convert = map (\xs -> Stream (map Int' xs))
