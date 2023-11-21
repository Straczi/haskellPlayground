-- 7-1
data Wochentag = Montag | Dienstag | Mittwoch | Donnerstag | Freitag | Samstag | Sonntag deriving (Enum, Show, Ord)

successor :: Wochentag -> Wochentag
successor Sonntag = Montag
successor wd = succ wd

predecessor :: Wochentag -> Wochentag
predecessor Montag = Sonntag
predecessor wd = pred wd


determineDay:: Wochentag -> Integer -> Wochentag
determineDay wd 0 = wd
determineDay wd i = determineDay (successor wd) (i-1) 


isSameDayType:: Wochentag -> Wochentag -> Bool
isSameDayType wd1 wd2 = isWeekend wd1 == isWeekend wd2
                            where isWeekend wd = wd >= Samstag

instance Eq Wochentag where 
    (==) :: Wochentag -> Wochentag -> Bool
    (==) = isSameDayType


--7-2

data MultiTree a = Node a [MultiTree a] deriving Show

testTree :: MultiTree Int
testTree = Node 1 [(Node 2 [(Node 4 [])]), (Node 3 []), (Node 8 [(Node 5 [(Node 6 []), (Node 7 [])])])]

--Schreiben Sie eine Funktion, die alle Pfade von der Wurzel zu Blättern als Listen zurückgibt.
--Rückgabe für den Beispielbaum: [[1,2,4], [1,3], [1,8,5,6], [1,8,5,7]]

--readElements :: MultiTree Int -> [Int]
--readElements () = [a] 


