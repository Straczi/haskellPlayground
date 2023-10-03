import Data.Char
import Data.List
{--
Aufgabe 2-1:
1.
    (\n -> n > 0, True) :: (Ord a, Num a) => (a -> Bool, Bool)

    ?

2.
    f :: Integer

    x ist durch 'where' als innere Funktioner/ Variable in f definiert

3.
    f2 :: Num a => a -> a

    nimmt eine Zahl y und addiert x hinzu und x ist als innere Funktion / Variable mit 2 definiert

4.
    fun :: [a] -> [a]

    fun hängt das erste Element an den Tail, also eine Liste aller Elemente nach dem ersten Element. Es ändert sich also nichts

5.
    snd (\a b -> a + b, (+)) :: Num a => a -> a -> a

    Adds two numbers

6.
    [x ^ 2 | x <- reverse [1..10]] :: (Num a, Enum a) => [a]

    Rechnet x hoch 2 für alle Elemente der  invertierten Liste von 1 bis 10
--}

--for 2-1

f = x - 1 where x = 2

f2 y = x - y where x = 2

fun ls = head ls : tail ls

-- Aufgabe 2-2 --------------------------------------------------------
--0
example :: Num a => (Bool, a)
example = (True, 5)

--1
str :: [Char]
str = "Haskell"

--2
logic :: Bool -> Bool -> Bool
logic a b = a && b

--3
fun0 :: Eq p => p -> p
fun0 p = p

--4
fun1 :: Num a => a -> a -> a
fun1 a b = a+b

--5
fun2 :: Eq a => [a] -> [a] -> [Bool]
fun2 a b = [null a, null b]


-- Aufgabe 2-3 ----------------------------------------------------------------------------------
--evaluateIBAN :: [Char] -> Bool
--evaluateIBAN iban = 

convertIbanToInt :: [Char] -> Integer
convertIbanToInt str = read str

getCountryCode :: [Char] -> [Char]
getCountryCode str = head str: (head (tail str):[])

getBBAN :: [Char] -> [Char]
getBBAN str = tail( tail (tail ( tail str)))

getCheckNumber :: [Char] -> [Char]
getCheckNumber str = head (tail(tail str)) :(head (tail(tail(tail str))):[]) 

encodeCountryCode :: [Char] -> [Char]
encodeCountryCode [] = []
encodeCountryCode str = show (ord(head str) - (ord 'A') +10) ++ encodeCountryCode (tail str)

evaluateIBAN :: [Char] -> Bool
evaluateIBAN str = (convertIbanToInt( (getBBAN str) ++ (encodeCountryCode (getCountryCode str)) ++ (getCheckNumber str) )) `mod` 97 == 1



--Aufgabe 2-4-----------------------------------------------------------

quader :: Num a => a -> a -> a -> (a, a, a)
quader a b c = (a,b,c)

volume :: Num a => (a, a, a) -> a
volume (a,b,c) = a*b*c 

surfaceArea ::  Num a => (a, a, a) -> a
surfaceArea (a,b,c) = 2 * (a * b + b * c + a * c) 

isCube :: (Ord a, Num a) => (a, a, a) -> Bool
isCube (a,b,c) = a == b && b == c

diagonal ::  Floating a => (a, a, a) -> a
diagonal (a,b,c) = sqrt(a**2 + b**2 + c**2) 

isBigger:: (Ord a, Num a) => (a, a, a) -> (a, a, a) -> Bool
isBigger (a,b,c) (d,e,f) = volume (a,b,c) > volume (d,e,f)