--Aufgabe 1-3

add1 a b c = a + b + c
add2 (a, b, c)= a + b + c
add3 = \a b c -> a+b+c

--Aufgabe 1-4)

succesor:: Int -> Int
succesor a  = a+1

{--
Für falsche EIngabe : 
0.2 :No instance for "Fractional Int"

'c' : match expected type 'Int' with actual type 'Char'
--}

-- Aufgabe 1-5)

proofMorgan:: Bool -> Bool -> Bool
proofMorgan a b = (not (a && b)) == ((not a) || (not b))

{--
proofMorgen 0-> False, 1 -> True
a   b   e
0   0   1
0   1   1
1   0   1
1   1   1
--}