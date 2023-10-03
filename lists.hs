-- both lists are the same, just differently defined
listThree = [1,2,3]
listThree2 = 1:(2:(3:[]))

{-
Operations:
    null <list>
        -> returns true if list is empty
    [ head | last ] <list>
        -> returns first | last element
        -> throws exception if list is emptyy
-}

s :: [Int]
s = 1:s

lFibs :: [Integer]
lFibs = 0:1:zipWith (+) lFibs (tail lFibs)

--  Strings are just lists of chars
isStringCharArray :: Bool
isStringCharArray = "Haskell" == ['H', 'a', 's', 'k', 'e', 'l', 'l']

rev :: [a] -> [a]
rev [] = []
rev toBeReversed = (last toBeReversed):(rev (init toBeReversed))
 