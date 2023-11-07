nospace :: String -> (String, Integer)
nospace str = (delSpaces, toInteger (length str - length(delSpaces)))
                where delSpaces = [a | a <- str , a /= ' ']

vowels = ['a', 'e', 'i', 'o', 'u']

deleteVowels :: [Char] -> [Char]
deleteVowels str = [a| a<- str, not (elem a vowels)]

countElems :: Eq a => [a] -> [a] -> Int
countElems l1 l2 = length [a | a <- l1 , elem a l2]


descending :: [Integer] -> Bool
descending [] = True
descending [a] = True
descending (a:b:xs) = (a>=b && descending(b:xs)) 

smallestSum:: [Integer] -> Integer
smallestSum il =  