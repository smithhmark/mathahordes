module ModelsSpec (spec) where

import Test.Hspec

import Models
import Warmahordes

{-                base :: BaseSize
                , spd :: Int
                , mat :: Int
                , rat :: Int
                , arm :: Int
                , def :: Int
                , cmd :: Int
                , hp :: Int
-}
spec = do 
  let shortStr = "BasicStats S 6 5 4 10 12 7 1"
      exampleObj = BasicStats SmallBase 6 5 4 10 12 7 1
      longStr = "BasicStats {base = SmallBase, spd = 6, mat = 5, rat = 4, arm = 10, def = 12, cmd = 7, hp = 1}"
  describe "BasicStats" $ do
    context "showing and reading" $ do
      it "should be readable from a string" $ 
        (read longStr :: BasicStats) `shouldBe` exampleObj
      it "should be showable as a string" $
        show exampleObj `shouldBe` longStr
      it "read is an inverse of show" $
        read (show exampleObj) `shouldBe` exampleObj
      it "show is an inverse of read" $
        show (read longStr :: BasicStats) `shouldBe` longStr
    context "Abreviated stringfications" $ do
      it "should be readable from a short string" $
        fromString shortStr `shouldBe` exampleObj
      it "should be writeable to a short string" $
        toString exampleObj`shouldBe`  shortStr

