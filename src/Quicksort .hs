{-|
Module      : QuickSort
Description : quicksort implemented in Haskell language
Copyright   : (c) Julia Sypień, Patrycja Tarasińska, 2017
License     : GPL-3
Maintainer  : sasuke96@tlen.pl
Stability   : experimental
Portability : POSIX
-}

module Quicksort(
-- *functions
quicksort
)where


-- |Function which sorts elements in a table by using quicksort algorithm. Function separates list into two lists: elements smaller than "head" and elements greater than "head". The algorithm is applied recursively to these lists and then the list with smaller elements, the selected element and the list of greater elements are concatenated together.
quicksort :: (Ord a) => [a] -> [a]
quicksort []     = []
quicksort (x:xs) = (quicksort smaller) ++ [x] ++ (quicksort greater_or_equal)
    where
        smaller 		 = filter (< x) xs
        greater_or_equal = filter (>= x) xs