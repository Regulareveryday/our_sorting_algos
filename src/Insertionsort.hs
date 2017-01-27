{-|
Module      : InsertionSort
Description : insertionsort implemented in Haskell language
Copyright   : (c) Julia Sypień, Patrycja Tarasińska, 2017
License     : GPL-3
Maintainer  : sasuke96@tlen.pl
Stability   : experimental
Portability : POSIX
-}


module Insertionsort(
-- *functions
insertionsort,
insert
)
where

-- | Function which calls function insert with empty tail (sorted by default) at the beggining and unsorted list. In the end an output list is sorted.
insertionsort :: (Ord a) => [a] -> [a]
insertionsort xs = insert xs []


-- | Function which recursively inserts a head of table to into appropriate place. Function is executed until there’s nothing left unsorted.
insert :: (Ord a) => [a] -> [a]-> [a]
insert [] tail     = tail
insert (x:xs) tail = insert xs sorted_tail
	where
		sorted_tail = (smaller_than_x) ++ [x] ++ (greater_or_equal_than_x)
			where
				smaller_than_x 		   = [a | a <- tail, a<x]
				greater_or_equal_than_x = [a | a <- tail, a>= x]