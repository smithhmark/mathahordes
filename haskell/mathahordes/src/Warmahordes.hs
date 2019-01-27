module Warmahordes where

type Faction = String

hordesFactions :: [Faction]
hordesFactions = ["Grimkin", "Skorne", "Trollbloods", "Legion", "Circle", "Minions"]

warmachineFactions :: [Faction]
warmachineFactions = ["Cygnar", "Khador", "Menoth", "Cryx", "Retribution", "Mercenaries", "Cryriss", "Crucible Guard"]

data GameFlavor = HordesGame | WarmachineGame deriving ( Show, Eq)
gameFlavor :: Faction -> GameFlavor
gameFlavor fac 
    | fac `elem` hordesFactions = HordesGame
    | otherwise = WarmachineGame

type PlayerName = String

data BaseSize = SmallBase | MediumBase | LargeBase | HugeBase 
        deriving (Show, Eq, Ord)
getDiameter :: BaseSize -> Int
getDiameter SmallBase = 30
getDiameter MediumBase = 40 
getDiameter LargeBase = 50
getDiameter HugeBase = 120

data ModelType = Trooper | Solo | Warbeast | Warmachine | Warlock | Warcaster 
        deriving (Show, Eq, Ord)

data StatLine = StatLine { base :: BaseSize
                , flavor :: ModelType
                , spd :: Int
                , mat :: Int
                , rat :: Int
                , arm :: Int
                , def :: Int
                , cmd :: Int
                , hp :: Int
                , magic :: Maybe Int
                , thrs :: Maybe Int
                , fury :: Maybe Int
                , focus :: Maybe Int
                } deriving (Show, Eq)

type Location = ( Int, Int )
