primes :: [Int]
primes = [n | n<-[2..], not $ elem n [j*k | j<-[2..n-1], k<-[2..n-1]]]

isBalPrime :: Int -> Bool
isBalPrime i = case dropWhile (\(_, v, _) -> v < i) (zip3 primes (tail primes) (drop 2 primes)) of
r@(a, b, c):_ -> a + c == b * 2 && i == b
_ -> False
*Main> isBalPrime 5
True
*Main> isBalPrime 7
False
*Main> isBalPrime 53
True
