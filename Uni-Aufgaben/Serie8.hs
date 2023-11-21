module Serie8 where

groupByResult :: Eq t => (a -> t) -> [a] -> [[a]]
groupByResult f l = let fList = makeUnique[f a | a <- l] in
                    [getAllSameF x| x <- fList]
                    where 
                        getAllSameF x = [a | a<- l, f a == x]

makeUnique :: Eq a => [a] -> [a]
makeUnique (x:xs) = if x `elem` xs then makeUnique xs else x:makeUnique xs 
makeUnique [] = []


unwordsWith :: Char -> [[Char]] -> [Char]
unwordsWith sep (m:n) = foldl (\a b -> a ++ sep:b) m n
unwordsWith sep [] = []
