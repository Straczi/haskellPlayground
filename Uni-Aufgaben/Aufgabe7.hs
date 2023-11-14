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