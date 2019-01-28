module Main where

import           Test.HUnit

import           Warmahordes as WH

testGetDiameter :: Test
testGetDiameter =
  TestCase $ do
    assertEqual "Small Bases are 30mm" 30 (WH.getDiameter SmallBase)
    assertEqual "Medium Bases are 40mm" 40 (WH.getDiameter MediumBase)
    assertEqual "Large Bases are 50mm" 50 (WH.getDiameter LargeBase)
    assertEqual "Huge Bases are 120mm" 120 (WH.getDiameter HugeBase)

testList = TestList [TestLabel "testGetDiameter" testGetDiameter]

main :: IO ()
main = do
  runTestTT testList
  return ()
