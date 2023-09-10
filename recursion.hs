fakul n = if n==0 then 1
            else n  * fakul (n-1)


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

-- using akkumulators to make code faster:
-- where: implenting an function that is only visible inside the current function

{-notes : is there any "clearer" way of defining a function that takes multiple parameters ?
           -> especially the call at the end of line 24 is pretty confusing at first 
           -> my fix for now: put the whole call to the function in brackets so you know it belongs together-}

fakul2 n = (fakulAkku n 1)
            where fakulAkku n akku  = if n==0 then akku else ( fakulAkku (n-1) (n * akku) )


{-
fakulAkku 3 1
1. (n=3 akku=1)
2. (n=2 akku=3)
3. (n=1 akku=6)
4. (n=0 akku=6)
5. return akku=6
-}