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


--Aufgabe 3-3

-- Gibt für zwei Funktionen f und g und einer Definitionsmenge die
-- Schnittpunkte der Funktionen aus.
-- Bspw: intersect (*2) (\x -> x*x) [-2,-1,0,1,,2] = [(0, 0), (2, 4)]
intersect :: Eq b => (a -> b) -> (a -> b) -> [a] -> [(a, b)]
intersect f1 f2 s = [(a, f1 a) | a <-s, f1 a == f2 a] 

-- Ergibt für die gegebenen Funktionen f1 und f2 und die Eingabe x:
-- f1(x) wenn f1(x) > f2(x), sonst f2(x)
-- z.B. higherFunction (+ 6) (* 2) 3 ergibt 9
higherFunction :: Ord b => (a -> b) -> (a -> b) -> a -> b
higherFunction f1 f2 x = if (f1 x > f2 x) then f1 x else f2 x


-- Entfernt Leerzeichen und zählt, wie viele Zeichen entfernt wurden
-- z.B.: nospace "Programmieren in Haskell" = ("ProgrammiereninHaskell", 2)
nospace :: String -> (String, Integer)
nospace str = let res = [c| c <- str , c /= ' '] in (res ,toInteger((length str)-(length res)) )

-- Aufgabe 3-4 

input = [1,-5,3,0,11,3,25,100,7]
