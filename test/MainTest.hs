
import QuickCheck
import Test.QuickCheck

main :: IO Counts
main = do

--TEST 1

--idempotency — applying a function twice has the same result as applying it only once
quickCheck idempotent_quicksort
quickCheck idempotent_bubblesort 
quickCheck idempotent_insertionsort 
quickCheck idempotent_mergesort 	
quickCheck idempotent_selectionsort 
quickCheck idempotent_heapsort 




--TEST 2

--the first element in a sorted list should always be the smallest element of the input list
--filtering out empty list (reveal an error because od definition of head and minimum)
quickCheck sorted_list_minimum_quicksort 		
quickCheck sorted_list_minimum_bubblesort  		
quickCheck sorted_list_minimum_insertionsort 	
quickCheck sorted_list_minimum_mergesort 	
quickCheck sorted_list_minimum_selectionsort  	
quickCheck sorted_list_minimum_heapsort  		




--TEST 3

--the lat element in a sorted list should always be the largest element of the input list
--filtering out empty list (reveal an error because od definition of head and minimum)
quickCheck sorted_list_maximum_quicksort 		
quickCheck sorted_list_maximum_bubblesort  	
quickCheck sorted_list_maximum_insertionsort 	
quickCheck sorted_list_maximum_mergesort 		
quickCheck sorted_list_maximum_selectionsort  	
quickCheck sorted_list_mmaximum_heapsort  		 




--TEST 4

--each element should be smaller than, or equal to, its successor
quickCheck compare_elements_quicksort 
quickCheck compare_elements_bubblesort  
quickCheck compare_elements_insertionsort 
quickCheck compare_elements_mergesort  
quickCheck compare_elements_selectionsort 
quickCheck compare_elements_heapsort  
 

--TEST 5
--output is a permutation of the input 
--operator \\ is difference function on lists, null tests whether the difference list is empty
--is_permut xs ys = null (xs \\ ys) && null (ys \\ xs)

quickCheck output_perm_of_input_quicksort
quickCheck output_perm_of_input_bubblesort 
quickCheck output_perm_of_input_insertionsort 
quickCheck output_perm_of_input_mergesort
quickCheck output_perm_of_input_selectionsort 
quickCheck output_perm_of_input_heapsort  
