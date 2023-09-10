fakul n     | n==0 = 1
            | otherwise = n * fakul(n-1)

{- Recursion:
How the compiler computes the recursion:
fakul 3 = 3 * fakul 2
fakul 3 = 3 * (2 * fakul 1)
fakul 3 = 3 * (2 * (1 * fakul 0))
fakul 3 = 3 * (2 * (1 * 1))    -> now the term is computed

in conclusion: the recursion is firstly completely solved and then computed
upside: short code :)
downside : long runtime :(
-}

