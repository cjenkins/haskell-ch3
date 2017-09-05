module Syntax where

parcat = (++) [1, 2, 3] [4, 5, 6]

area d = pi * (r * r)
  where r = d/2

heart = "<3" ++ " Haskell"

heart2 = concat ["<3", " Haskell"]

--Reading Syntax

oneA = concat [[1, 2, 3], [4, 5, 6]] -- OK
oneB = (++) [1, 2, 3] [4, 5, 6] --par around ++
oneC = (++) "hello" " world" -- OK
oneD = ["hello" ++ " world"] -- end "
oneE = "hello" !! 4 -- Args flipped X
oneF = (!!) "hello" 4 -- OK
oneG = take 4 "lovely" -- Remove 4 from "
oneH = take 3 "awesome" -- OK

--2a) d
--2b) c
--2c) e
--2d) a
--2e) b

--Building Functions

addExclamation s = s ++ "!"
indexFour s = s !! 4 
dropNine s = drop 9 s

thirdLetter :: String -> Char
thirdLetter x = x !! 2

letterIndex :: Int -> Char
letterIndex x = "Curry is awesome!" !! x

sliceAndDice x = (drop 9 x) ++ " " ++  (take 2 (drop 6 x)) ++ " " ++ (take 5 x)
