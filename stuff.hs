w1 = 2

f:: Double -> Double
f x = x*2

isPrime 2 = False
isPrime p = null [1 | a <-[2..(p-1)], p `mod` a == 0] 

primes = 2:[a| a<-[3..], isPrime a]