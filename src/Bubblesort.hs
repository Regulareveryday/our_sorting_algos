{-|
Module      : BubbleSort
Description : bubblesort implemented in Haskell language
Copyright   : (c) Julia Sypień, Patrycja Tarasińska, 2017
License     : GPL-3
Maintainer  : sasuke96@tlen.pl
Stability   : experimental
Portability : POSIX
-}

module Bubblesort(
-- *functions
bubblesort,
bubblesort_loop,
bubblesort_one_iteration
)
where

-- |Function which sorts elements in a table by using bubblesort algorithm 
bubblesort :: (Ord a) => [a] -> [a]
bubblesort xs = bubblesort_loop xs 0

-- |Function which applies function bubblesort_one_iteration n times, when n is a length of the table.
bubblesort_loop :: (Ord a) => [a] -> Int -> [a]
bubblesort_loop xs i 
    | i == (length xs) = xs
    | otherwise = bubblesort_loop (bubblesort_one_iteration xs) (i + 1) 
    

-- |Function which exchanges pair of elements in table if it is in a wrong order. Simply, one iteration of bubblesort algorithm.
bubblesort_one_iteration :: (Ord a) => [a] -> [a]
bubblesort_one_iteration (x:y:xs)
    | x > y 	= y : bubblesort_one_iteration (x:xs)
    | otherwise = x : bubblesort_one_iteration (y:xs)
bubblesort_one_iteration (x:[]) = (x:[])