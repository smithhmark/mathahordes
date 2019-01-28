module WarmahordesSpec
  ( spec
  ) where

import           Test.Hspec

import           Warmahordes

spec = do
  describe "getDiameter" $ do
    it "returns 30 for small bases" $ getDiameter SmallBase `shouldBe` 30
    it "returns 40 for medium bases" $ getDiameter MediumBase `shouldBe` 40
    it "returns 50 for large  bases" $ getDiameter LargeBase `shouldBe` 50
    it "return 120 for huge bases" $ getDiameter HugeBase `shouldBe` 120
