
module Main where

import Heapsort
import Quicksort
import Insertionsort
import Mergesort
import Selectionsort
import Bubblesort



main :: IO ()
main = do
  putStr "\nWelcome to our project: time comparision of sorting algorithms in Haskell! Explore different sorting algos!\n\n"
  putStr "\nChoose 'options' to see what algorithms you can use\n"

  
options :: IO ()
options = do
     putStr "\nbubblesort, insertionsort, heapsort, mergesort, selectionsort, quicksort\n"