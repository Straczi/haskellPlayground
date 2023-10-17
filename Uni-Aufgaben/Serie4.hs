module Serie4 where

testDoubles :: String -> Bool
testDoubles [] = False
testDoubles str = if(checkNotEnoughWords str ) then False else foldr1 (||) [(splitString!!a) == (splitString!!(a+1)) | a <- [0..(length(splitString) -2)]] 
                    where splitString = (words str)

listDoubles :: String -> [String]
listDoubles str = if(checkNotEnoughWords str ) then [] else [(splitString!!a) | a <- [0..(length(splitString) -2)], (splitString!!a) == (splitString!!(a+1))] 
                    where splitString = (words str)


checkNotEnoughWords :: String -> Bool
checkNotEnoughWords str = (length (words str)) < 2