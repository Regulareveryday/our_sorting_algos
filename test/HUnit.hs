module HUnit(
	quicksortTest,
	bubblesortTest,
	insertionsortTest,
	insertTest,
	mergesortTest,
	mergeTest,
	selectionsortTest,
	heapsortTest,
	childrenTest,
	parentTest
)
where

import Test.HUnit
--import Data.List
import Heapsort
import Quicksort
import Insertionsort
import Mergesort
import Selectionsort
import Bubblesort



quicksortTest :: Test
quicksortTest = TestCase $ assertEqual "quicksortTest" (sort [3,1,2,4,7,0]) (quicksort [3,1,2,4,7,0])

bubblesortTest :: Test
bubblesortTest = TestCase $ assertEqual "bubblesortTest" (sort [3,1,2,4,7,0]) (bubblesort [3,1,2,4,7,0])

insertionsortTest :: Test
insertionsortTest = TestCase $ assertEqual "insertionsorTest" (sort [3,1,2,4,7,0]) (insertionsort [3,1,2,4,7,0])

insertTest :: Test
insertTest = TestCase $ assertEqual "insertTest" (insert 4 [2, 3, 5, 7]) ([2, 3, 4, 5, 7])

mergesortTest :: Test
mergesortTest = TestCase $ assertEqual "mergesortTest" (sort [3,1,2,4,7,0]) (mergesort [3,1,2,4,7,0])

mergeTest :: Test
mergeTest = TestCas $ assertEqual "mergeTest" (merge [1,3,5] [2,4]) ([1,2,3,4,5]) 

selectionsortTest :: Test
selectionsortTest = TestCase $ assertEqual "selectionsortTest" (sort [3,1,2,4,7,0]) (selectionsort [3,1,2,4,7,0])

heapsortTest :: Test
heapsortTest = TestCase $ assertEqual "heapsortTest" (sort [3,1,2,4,7,0]) (heapsort [3,1,2,4,7,0])

childrenTest :: Test
childrenTest = TestCase $ assertTrue "childrenTest" (leftChild 0 == 1 && righChild 0 == 2 )

parentTest :: Test
parentTest = TestCase $ assertTrue "parentTest" (parent 2 == 0)


