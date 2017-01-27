{-|
Module      : SelectionSort
Description : selectionsort implemented in Haskell language
Copyright   : (c) Julia Sypień, Patrycja Tarasińska, 2017
License     : GPL-3
Maintainer  : sasuke96@tlen.pl
Stability   : experimental
Portability : POSIX
-}

module Selectionsort(
-- *functions
selectionsort,
delete
)where


-- |Function which sorts elements in a table by using selectionsort algorithm. SelectionSort executed on an empty list is an empty list. Otherwise it adds the smallest element from the list to the beginning of the sorted list.
selectionsort :: (Ord a) => [a] -> [a]
selectionsort [] = []
selectionsort xs = minimum xs : (selectionsort tail)
                   where tail = delete (minimum xs) xs


-- | Function which deletes first occurance in list of given value. If a value which we want to delete is head, we simply return tail. Otherwise we search that value in tail.
delete :: (Eq a) => a -> [a] -> [a]
delete value [] 	= []
delete value (x:xs) = if x == value then xs else x : delete value xs