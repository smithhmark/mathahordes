module MeleeSpec
  ( spec
  ) where

import           Test.Hspec

spec = do
  describe "strike" $ do
    it "uses a weapon and a model to attack another model" $
      pendingWith "need to figure a lot out first"
