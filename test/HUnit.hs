module HUnit(
    quicksortTest,
    bubblesortTest,
    insertionsortTest,
    myInsertTest,
    mergesortTest,
    mergeTest,
    selectionsortTest,
    heapsortTest,
    childrenTest1,
	childrenTest2,
    parentTest
)
where

import Test.HUnit
import Heapsort
import Quicksort
import Insertionsort
import Mergesort
import Selectionsort
import Bubblesort


quicksortTest :: Test
quicksortTest = TestCase $ assertEqual "quicksortTest" ([0,1,2,3,4,7]) (quicksort [3,1,2,4,7,0])

bubblesortTest :: Test
bubblesortTest = TestCase $ assertEqual "bubblesortTest" ([0,1,2,3,4,7]) (bubblesort [3,1,2,4,7,0])

insertionsortTest :: Test
insertionsortTest = TestCase $ assertEqual "insertionsorTest" ([0,1,2,3,4,7]) (insertionsort [3,1,2,4,7,0])

myInsertTest :: Test 
myInsertTest = TestCase $ assertEqual "myInsertTest" (myInsert [1,4] [2, 3, 5, 7]) ([1, 2, 3, 4, 5, 7])

mergesortTest :: Test
mergesortTest = TestCase $ assertEqual "mergesortTest" ([0,1,2,3,4,7]) (mergesort [3,1,2,4,7,0])

mergeTest :: Test
mergeTest = TestCase $ assertEqual "mergeTest" (merge [1,3,5] [2,4]) ([1,2,3,4,5])

selectionsortTest :: Test
selectionsortTest = TestCase $ assertEqual "selectionsortTest" ([0,1,2,3,4,7]) (selectionsort [3,1,2,4,7,0])

heapsortTest :: Test
heapsortTest = TestCase $ assertEqual "heapsortTest" ([0,1,2,3,4,7]) (heapsort [3,1,2,4,7,0])

childrenTest1 :: Test
childrenTest1 = TestCase $ assertEqual "childrenTest1" (leftChild 0 )(1)

childrenTest2 :: Test
childrenTest2 = TestCase $ assertEqual "childrenTest2" (rightChild 0 )(2)

parentTest :: Test
parentTest = TestCase $ assertEqual "parentTest" (parent 2) (0)


