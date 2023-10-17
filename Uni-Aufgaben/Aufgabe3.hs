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

apply:: (a->b) -> a -> b
apply f a = f a



applyString :: (Char -> Char) -> String -> String
applyString = map

fun4 :: Num a => a-> a-> b ->(a, b)
fun4 a b c = (a+b, c)


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

-- a) Liste, die alle Elemente der Liste input enthält, welche im Intervall [1,7] liegen.
aList = [a| a<- input, a>=1, a<=7] 

-- b) Liste aller Zahlen von 1 bis 100, die durch 6 teilbar sind und mit 2 subtrahiert durch 4 teilbar
-- sind.
bList = [a | a<-[1..100], a `mod` 6 ==0, (a-2)`mod`4 ==0]

-- c) Liste, die die quadrierten Elemente von input enthält, die größer als 100 und ungerade sind.
cList = [a*a | a<- input, a*a >100, (a*a)`mod`2 /= 0]

-- d) Liste, die alle Elemente aus input, die auch in a) sind, mit True und alle, die nicht in a) sind,
-- mit False ersetzt.
dList = [elem x aList | x <- input]

-- e) Anzahl der Zahlen von b), die durch 5 teilbar sind, wenn man 1 von ihnen subtrahiert.
eNum = length [a| a <- bList, (a-1) `mod` 5 == 0]


containsSet :: [Int] -> [Int] -> Bool
containsSet al bl = and [elem x al | x <- bl]

myElem :: Eq a => a -> [a] -> Bool

