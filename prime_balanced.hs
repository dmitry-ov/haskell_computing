balancedPrimes :: [Int]
balancedPrimes  = [5, 53, 157, 173, 211, 257, 263, 373, 563, 593, 607, 653, 733, 947, 977, 1103, 1123, 1187, 1223, 1367, 1511, 1747, 1753, 1907, 2287, 2417, 2677, 2903, 2963, 3307, 3313, 3637, 3733, 4013, 4409, 4457, 4597, 4657, 4691, 4993, 5107, 5113, 5303, 5387, 5393]

primeCheck :: Int -> Bool
primeCheck n = length[x | x <- [2..n-1], n `mod` x == 0] == 0


predPrime :: Int -> Int
predPrime n = 
        if n < 2 then 1
        else 
            if primeCheck(pred n) && (pred n) /= 1 
            then (pred n) 
            else predPrime (pred n)


nextPrime :: Int -> Int
nextPrime n = 
              if primeCheck(succ n) 
              then succ n
              else nextPrime(succ n)


primeBalancedCheck :: Int -> Bool 
primeBalancedCheck n =  (predPrime(n) + nextPrime(n)) `div` 2 == n 


-- test
-- [primeBalancedCheck x | x <- balancedPrimes] 


