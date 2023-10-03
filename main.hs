import Data.List
import System.IO


{-
Running a file:
    ghci
    :l <name>   (load)
    :r          (reload)

OR:
    ghc <name>.hs    (compiles the file)
    ./<name>
-}

--Int : signed 32bit Integer ranging -2^29 to 2^29
-- Integer : Integer that takes as much memory as it needs
-- Float
-- Double 
-- Bool
-- Char '' 
-- Tuple

-- negative Numbers must be put in brackets
maxInt = maxBound :: Int
minInt = minBound :: Int

num9 = 9 :: Int
sqrtOf9 = sqrt (fromIntegral num9)

--Lists:

--defining a List:
primeNumbers = [3,5,7,11]

--concat Lists:
morePrimes = primeNumbers ++ [13,17,19,23,29]

-- concating multiple numbers into a list

favNums = 2: 7 : 21 : 66: []

--list of lists:

multList = [[3,5,7],[11,13,17]]


--functions: f(x)=x² brackets can be ignored
f x = x**2

-- using a function inside a function

g x = (f x )/x

-- using if statements and recursion:

h x =   if( x== 0)
            then (-1)
        else
            h(x-1)

--doing the same, but different:

h2 x    | x==0 = (-1)
        | otherwise = h2(x-1) 