{-|
Module      : MergeSort
Description : mergesort implemented in Haskell language
Copyright   : (c) Julia Sypień, Patrycja Tarasińska, 2017
License     : GPL-3
Maintainer  : sasuke96@tlen.pl
Stability   : experimental
Portability : POSIX
-}

module Mergesort(
-- *functions
firststhalf,
secondhalf,
merge,
mergesort
)where

-- | Function which returns first half of the list to sort.
firststhalf :: [a] -> [a]
firststhalf xs = take (n) xs
	where n = (length xs) `div` 2 


-- | Function which returns second half of the list to sort.
secondhalf :: [a] -> [a]
secondhalf xs = drop (n) xs
	where n = (length xs) `div` 2


-- | Function which receives two sorted lists (firsthalf and secondhalf) and produces one merged list. Function compares the first elements of this two lists and creates sorted list.
merge :: (Ord a) => [a] -> [a] -> [a]
merge xs [] = xs
merge [] xs = xs
merge (x:xs) (y:ys) = case (x < y) of
	True  -> x:merge xs (y:ys)
	False -> y:merge (x:xs) ys


-- | Function which sorts elements in a list by using mergesort algorithm.
mergesort :: (Ord a) => [a] -> [a]
mergesort xs = case (length xs > 1) of
	True  -> merge (mergesort (firststhalf xs)) (mergesort (secondhalf xs))
	False -> xs