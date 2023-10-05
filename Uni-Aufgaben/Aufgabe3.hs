-- Aufgabe 3-1
myLength :: [a] -> Integer
myLength [] = 0
myLength l = 1 + myLength (tail l)

mySum :: Num a => [a] -> a
mySum [] = 0
mySum l = (head l) + mySum (tail l)

stringConcat :: [String] -> String
stringConcat [] = ""
stringConcat lStr = head lStr ++ stringConcat( tail lStr)

--Aufgabe 3-2

