{-|
  This is a library at the core of mtools-haskell
 -}
module Lib
    ( simplifyFraction
      ,getFraction
    ) where

import Data.List.Split

-- |This function takes the numerator and denominator of a fraction as separate integers, then returns a tuple of the fraction but simplified. E.x `algo 10 2` would return `(5,1)`
simplifyFraction :: Integer -> Integer -> (Integer,Integer)
simplifyFraction x y
  | rem == 1 = (x,y)
  | otherwise = simplifyFraction (x `div` rem) (y `div` rem)
  where rem = gcd x y

getPlaces :: String -> Maybe (Integer,Integer)
getPlaces str 
  | length strs == 2 = Just (read (head strs ) :: Integer, read (strs !! 1) :: Integer)
  | otherwise = Nothing
  where strs = splitOn "." str

getDigitsNo :: Integer -> Int
getDigitsNo x = length ourNum 
  where ourNum = show x


-- |This takes a string that contains a decimal and Maybe converts it into a string containing a fraction
getFraction :: String -> Maybe String
getFraction str = do
  (a,b) <- getPlaces str
  let digitsNo = getDigitsNo b
  let asFloat = read str :: Float
  let numerator = asFloat*(10^digitsNo)
  return ((show $ floor $ numerator)  ++ "/" ++ (show $ 10^digitsNo))







