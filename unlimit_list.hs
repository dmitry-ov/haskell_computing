-- Consider the typical example:
-- "let allPairs = [(x,y) | x <- [0..], y <- [0..]]"
-- enumerates the pairs of natural numbers, starting with 0 always being the first element of the tuple. 
-- As there are unfortunately indefinitely many pairs with 0 as the first component 
-- the expression "takeWhile (fst.first (/=1)) allPairs" won't terminate.

--Сооруди такой бесконечный список чтобы любой конечный элемент в нем можно было найти.

-- allPairs = [(x,y) | x <- [0..], y <- [0..]]

-- takeWhile (fst.first (/=1)) allPairs


--  takeWhile (\x -> fst (x) + snd (x)  < 2 ) allPairs
--
--   takeWhile  (\x -> snd(x) < 1 ) allPairs   ==  [(0,0)]
--
--
--

--  перебор списка натуральных чисел
--      комбинации пар чисел
--          добавление пар в список

-- nats 0 == [0]
-- nats 1 == [1,0]
-- nats 2 == [2,1,0]

nats_list :: Int -> [Int]
nats_list 0 = [0]
nats_list n = n : nats_list (pred n)

combination :: [Int] -> [(Int,Int)]
combination xs = do 
    x <- xs
    y <- xs
    [(x,y)]


make_list n = combination (nats_list n)










