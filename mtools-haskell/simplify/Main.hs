module Main where

import Lib
import System.Environment
import Data.List.Split

main :: IO ()
main = do
  args <- getArgs
  let (x,y) = getArgInts args
  
  putStrLn $ toFractionString $ simplifyFraction x y



toFractionString (x,y) = show x ++ "/" ++ show y

getArgInts :: [String] -> (Integer,Integer)
getArgInts xs 
  | arrLen /= 1 = error ("You gave "  ++ show arrLen ++ " argument(s) when we wanted one")
  | otherwise = fromFractionString $ head xs
  where
    arrLen = length xs

fromFractionString :: String -> (Integer,Integer)
fromFractionString str = (read (head strs ) :: Integer, read (strs !! 1) :: Integer)
  where strs = splitOn "/" str

