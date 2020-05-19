module WarmahordesSpec
  ( spec
  ) where

import           Test.Hspec

spec = do
  describe "buildDummy" $ do
    it "returns 30 for small bases" $ getDiameter SmallBase `shouldBe` 30
