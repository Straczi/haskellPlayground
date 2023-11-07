module Serie5 where

isMonotonous :: Ord a => [a] -> Bool
isMonotonous [] = True
isMonotonous [a] = True
isMonotonous l = ( (l!!0 <= l!!1)  && isMonotonousDec (tail l) ) || ( (l!!0 >= l!!1)  && isMonotonousInc (tail l) )
                where isMonotonousDec ls = length ls <2 || (ls!!0 <= ls!!1)  && isMonotonousDec (tail ls)
                      isMonotonousInc ls = length ls <2 || (ls!!0 >= ls!!1)  && isMonotonousInc (tail ls)

monotoneFolge :: [Integer]
monotoneFolge = [1,2,3,4,5]


isAlternating :: (Ord a, Num a) => [a] -> Bool
isAlternating [] = True
isAlternating [a] = True
isAlternating l = (l!!0 * l!!1 < 0) && ( length l == 2 || isAlternating (tail l) )

alternierendeFolge :: [Integer]
alternierendeFolge = [-1, 1, -2, 2, -3, 3]

isConstant :: Eq a => [a] -> Bool
isConstant [] = True
isConstant [a] = True
isConstant l = (l!!0 == l!!1) && isConstant(tail l)

konstanteFolge :: [Integer]
konstanteFolge = [1, 1, 1, 1]