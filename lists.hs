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
rev toBeReversed  = revList toBeReversed []
                    where revList toBeReversed reversedList = if null toBeReversed 
                                                                then 
                                                                    reversedList 
                                                                else 
                                                                    revList (tail toBeReversed) (head toBeReversed:reversedList)


rev2 :: [a] -> [a]
rev2 toBeReversed = if null toBeReversed then [] else (last toBeReversed):(rev2 (init toBeReversed))