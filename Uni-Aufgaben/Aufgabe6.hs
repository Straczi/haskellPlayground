module Serie6 where

data Person = Person {
    name :: String,
    adresse :: String
} deriving (Show, Eq)

data Auto = Auto {
    bezeichnung :: String,
    preis :: Int,
    alter :: Int,
    besitzer :: Person
}


printAuto :: Auto -> String
printAuto Auto{bezeichnung=bez, preis=pri, alter=age, besitzer=bes} = 
    "Das Auto " ++ bez ++ " gehoert zu " ++ name bes ++ ", wohnhaft in " ++ adresse bes ++ ", hat urpspruenglich " ++ show pri ++ " gekostet und ist " ++ show age ++" Jahre alt"


collectionWorth :: Person -> [Auto] -> Int
collectionWorth owner carList = foldr1 (+) [preis a | a <- carList, besitzer a == owner]


oldtimers:: [Auto] -> [Auto]
oldtimers carList = [car | car <- carList, alter car >= 30]