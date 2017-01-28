module QuickCheck(
idempotent_quicksort,
idempotent_bubblesort ,
idempotent_insertionsort,
idempotent_mergesort,
idempotent_selectionsort,
idempotent_heapsort,
sorted_list_minimum_quicksort,
sorted_list_minimum_bubblesort,
sorted_list_minimum_insertionsort,
sorted_list_minimum_mergesort,
sorted_list_minimum_selectionsort ,
sorted_list_minimum_heapsort,
sorted_list_maximum_quicksort,
sorted_list_maximum_bubblesort,
sorted_list_maximum_insertionsort,
sorted_list_maximum_mergesort,
sorted_list_maximum_selectionsort,
sorted_list_mmaximum_heapsort,
compare_elements_quicksort,
compare_elements_bubblesort,
compare_elements_insertionsort,
compare_elements_mergesort,
compare_elements_selectionsort,
compare_elements_heapsort,
output_perm_of_input_quicksort,
output_perm_of_input_bubblesort ,
output_perm_of_input_insertionsort ,
output_perm_of_input_mergesort,
output_perm_of_input_selectionsort,
output_perm_of_input_heapsort
)
where

import Test.QuickCheck
import Data.List --important for testing minimum, maximum, compare elements and function \\
import Heapsort
import Quicksort
import Insertionsort
import Mergesort
import Selectionsort
import Bubblesort



--idempotency — applying a function twice has the same result as applying it only once
idempotent_quicksort :: [Integer] -> Bool
idempotent_quicksort xs = quicksort (quicksort xs) == quicksort xs

idempotent_bubblesort :: [Integer] -> Bool
idempotent_bubblesort xs = bubblesort (bubblesort xs) == bubblesort xs

idempotent_insertionsort :: [Integer] -> Bool
idempotent_insertionsort xs = insertionsort (insertionsort xs) 	 == insertionsort xs

idempotent_mergesort :: [Integer] -> Bool
idempotent_mergesort xs = mergesort (mergesort xs) == mergesort xs

idempotent_selectionsort :: [Integer] -> Bool
idempotent_selectionsort xs = selectionsort (selectionsort xs) == selectionsort xs

idempotent_heapsort :: [Integer] -> Bool
idempotent_heapsort xs 	= heapsort (heapsort xs) == heapsort xs



--TEST 2

--the first element in a sorted list should always be the smallest element of the input list
--filtering out empty list (reveal an error because od definition of head and minimum)
sorted_list_minimum_quicksort :: [Integer] -> Property 
sorted_list_minimum_quicksort xs = not (null xs) ==> head (quicksort xs) == minimum xs

sorted_list_minimum_bubblesort :: [Integer] -> Property 
sorted_list_minimum_bubblesort xs = not (null xs) ==> head (bubblesort xs) == minimum xs

sorted_list_minimum_insertionsort :: [Integer] -> Property 
sorted_list_minimum_insertionsort xs = not (null xs) ==> head (insertionsort xs) == minimum xs

sorted_list_minimum_mergesort :: [Integer] -> Property 
sorted_list_minimum_mergesort xs = not (null xs) ==> head (mergesort xs) == minimum xs

sorted_list_minimum_selectionsort :: [Integer] -> Property 
sorted_list_minimum_selectionsort xs = not (null xs) ==> head (selectionsort xs) == minimum xs

sorted_list_minimum_heapsort :: [Integer] -> Property 
sorted_list_minimum_heapsort xs = not (null xs) ==> head (heapsort xs) == minimum xs




--TEST 3
--the lat element in a sorted list should always be the largest element of the input list
--filtering out empty list (reveal an error because od definition of head and minimum)
sorted_list_maximum_quicksort :: [Integer] -> Property 
sorted_list_maximum_quicksort xs = not (null xs) ==> last (quicksort xs) == maximum xs

sorted_list_maximum_bubblesort :: [Integer] -> Property 
sorted_list_maximum_bubblesort xs = not (null xs) ==> last (bubblesort xs) 	== maximum xs

sorted_list_maximum_insertionsort :: [Integer] -> Property 
sorted_list_maximum_insertionsort xs = not (null xs) ==> last (insertionsort xs) == maximum xs

sorted_list_maximum_mergesort :: [Integer] -> Property 
sorted_list_maximum_mergesort xs = not (null xs) ==> last (mergesort xs) == maximum xs

sorted_list_maximum_selectionsort :: [Integer] -> Property 
sorted_list_maximum_selectionsort xs = not (null xs) ==> last (selectionsort xs) == maximum xs

sorted_list_mmaximum_heapsort :: [Integer] -> Property 
sorted_list_mmaximum_heapsort xs = not (null xs) ==> last (heapsort xs) == maximum xs


--TEST 4
--each element should be smaller than, or equal to, its successor

compare_elements_quicksort :: [Integer] -> Bool  
compare_elements_quicksort xs = ordered_elements (quicksort xs)
    where ordered_elements xs = if xs==[] then True
                                else if length xs==1 then True
                                     else head xs <= (head (init xs)) && ordered_elements ((head(init xs)):(tail(init xs)))

compare_elements_bubblesort :: [Integer] -> Bool
compare_elements_bubblesort xs = ordered_elements (bubblesort xs)
    where ordered_elements xs = if xs==[] then True
                                else if length xs==1 then True
                                     else head xs <= (head (init xs)) && ordered_elements ((head(init xs)):(tail(init xs)))


compare_elements_insertionsort :: [Integer] -> Bool
compare_elements_insertionsort xs = ordered_elements (insertionsort xs)
    where ordered_elements xs = if xs==[] then True
                                else if length xs==1 then True
                                     else head xs <= (head (init xs)) && ordered_elements ((head(init xs)):(tail(init xs)))


compare_elements_mergesort :: [Integer] -> Bool
compare_elements_mergesort xs = ordered_elements (mergesort xs)
    where ordered_elements xs = if xs==[] then True
                                else if length xs==1 then True
                                     else head xs <= (head (init xs)) && ordered_elements ((head(init xs)):(tail(init xs)))


compare_elements_selectionsort :: [Integer] -> Bool
compare_elements_selectionsort xs = ordered_elements (selectionsort xs)
    where ordered_elements xs = if xs==[] then True
                                else if length xs==1 then True
                                     else head xs <= (head (init xs)) && ordered_elements ((head(init xs)):(tail(init xs)))


compare_elements_heapsort :: [Integer] -> Bool
compare_elements_heapsort xs = ordered_elements (heapsort xs)
    where ordered_elements xs = if xs==[] then True
                                else if length xs==1 then True
                                     else head xs <= (head (init xs)) && ordered_elements ((head(init xs)):(tail(init xs)))




  --TEST 5
  --output is a permutation of the input
  --operator \\ is difference function on lists, null tests whether the difference list is empty

is_permut::(Eq a)=> [a] -> [a] -> Bool
is_permut xs ys = null (xs \\ ys) && null (ys \\ xs)

output_perm_of_input_quicksort :: [String] -> Bool
output_perm_of_input_quicksort xs = is_permut xs (quicksort xs)

output_perm_of_input_bubblesort :: [Integer] -> Bool
output_perm_of_input_bubblesort xs = is_permut xs (bubblesort xs)

output_perm_of_input_insertionsort :: [Integer] -> Bool
output_perm_of_input_insertionsort xs = is_permut xs (insertionsort xs)

output_perm_of_input_mergesort :: [Integer] -> Bool
output_perm_of_input_mergesort xs = is_permut xs (mergesort xs)

output_perm_of_input_selectionsort:: [Integer] -> Bool
output_perm_of_input_selectionsort xs = is_permut xs (selectionsort xs)

output_perm_of_input_heapsort :: [Integer] -> Bool
output_perm_of_input_heapsort xs = is_permut xs (heapsort xs)