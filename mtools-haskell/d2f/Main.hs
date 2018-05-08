module Main where

import Lib

main :: IO ()
main = do
  str <- getLine
  --if a == Nothing 
   -- then do error "Could not parse decimal point"
    --else pure ()
--  print a
  let fraction = getFraction str
  case fraction of 
    Nothing -> do putStrLn "Could not parse decimal point"
    Just a -> print a


