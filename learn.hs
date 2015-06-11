import Data.Function

head'::[a]->a
head'[] = error "Error. List is empty!"
head'(x:_) = x

tell :: (Show a) => [a] -> String  
tell [] = "The list is empty"  
tell (x:[]) = "The list has one element: " ++ show x  
tell (x:y:[]) = "The list has two elements: " ++ show x ++ " and " ++ show y  
tell (x:y:_) = "This list is long. The first two elements are: " ++ show x ++ " and " ++ show y  

max' :: (Ord a) => a -> a -> a  
max' a b | a > b = a | otherwise = b  

myCompare :: (Ord a) => a -> a -> Ordering  
a `myCompare` b  
    | a > b     = GT  
    | a == b    = EQ  
    | otherwise = LT  

capital :: String -> String  
capital "" = "Empty string, whoops!"  
capital all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]  

bmiTell :: (RealFloat a) => a -> a -> String  
bmiTell weight height  
    | bmi <= skinny = "You're underweight, you emo, you!"  
    | bmi <= normal = "You're supposedly normal. Pffft, I bet you're ugly!"  
    | bmi <= fat    = "You're fat! Lose some weight, fatty!"  
    | otherwise     = "You're a whale, congratulations!"  
    where bmi = weight / height ^ 2  
          skinny = 18.5  
          normal = 25.0  
          fat = 30.0  

calcBmis' :: (RealFloat a) => [(a, a)] -> [a]  
calcBmis' xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2] 

calcBmis :: (RealFloat a) => [(a, a)] -> [a]  
calcBmis xs = [bmi w h | (w, h) <- xs]  
    where bmi weight height = weight / height ^ 2  

initials :: String -> String -> String  
initials (f:_) (l:_) = [f] ++ "." ++ [l] ++ "."  

tt x = case x of 1 -> 1
                 2 -> 10
                 3 -> 30

describeList :: [a] -> String  
describeList xs = "The list is " ++ case xs of [] -> "empty."  
                                               [x] -> "a singleton list."   
                                               xs -> "a longer list."  

describeList' :: [a] -> String  
describeList' xs = "The list is " ++ what xs  
    where what [] = "empty."  
          what [x] = "a singleton list."
          what xs = "a longer list."


fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib n = fib(n-2) + fib(n-1)


fib' :: Int -> Int
fib' = (!!) (fix $ (0:) . scanl (+) 1)

maximum' :: (Ord a) => [a] -> a
maximum' [] = error "no param"
maximum' [x] = x
maximum' (x:xs) = max x (maximum' xs)


replicate' n x 
    | n <= 0  = []
    | otherwise = x : replicate' (n-1) x



take' n _ 
    | n <= 0 = []
take' _ [] = [] 
take' n (x:xs)  = x : take' (n-1) (xs)

