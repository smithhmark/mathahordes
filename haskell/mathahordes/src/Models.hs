module Models where

import Warmahordes 

data ModelType = Trooper | Solo | Warbeast | Warmachine | Warlock | Warcaster 
        deriving (Show, Eq, Ord)

data BasicStats = BasicStats {
                base :: BaseSize
                , spd :: Int
                , mat :: Int
                , rat :: Int
                , arm :: Int
                , def :: Int
                , cmd :: Int
                , hp :: Int
                  } deriving (Show, Read, Eq, Ord)

toString :: BasicStats -> String
toString  (BasicStats b s m r a d c h) = "BasicStats" 
  ++ " " ++ [show b !! 0 ]
  ++ " " ++ show s
  ++ " " ++ show m
  ++ " " ++ show r
  ++ " " ++ show a
  ++ " " ++ show d
  ++ " " ++ show c
  ++ " " ++ show h

fromString :: String -> BasicStats
fromString str = 
  let bits = words str
      s = read $ bits !! 2 :: Int
      m = read $ bits !! 3 :: Int
      r = read $ bits !! 4 :: Int
      a = read $ bits !! 5 :: Int
      d = read $ bits !! 6 :: Int
      c = read $ bits !! 7 :: Int
      h = read $ bits !! 8 :: Int
      b = case bits !! 1 of "S" -> SmallBase
                            "M" -> MediumBase
                            "L" -> LargeBase
                            "H" -> HugeBase
  in BasicStats b s m r a d c h
  
  {-
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
type ModelName = String

type Weapon = String  -- !!!
type Power = String   -- !!!

data Model = Model { name :: String
             , stats :: StatLine
             , faction :: Faction
             , loc :: Location
             , battleGroup :: Maybe ModelName
             , effects :: [String]
             , melee :: [Weapon]
             , ranged :: [Weapon]
             , starAttack :: [Power]
             , starAction :: [Power]
             , abilities :: [Power]
             } deriving (Show)

data Unit = Hero Model | Group [Model] deriving (Show)

data ArmyEntry = BattleGroupEntry Unit [Unit] |  StandardEntry Unit | Attachment Unit
                 deriving (Show)

data Army = Army { overallFaction :: Faction
                 , leader :: ModelName
                 , toe :: [ArmyEntry]
                 } deriving (Show)

printArmy :: Army -> String
printArmy a = "Not Yet Implemented"

type BattleField = String -- !!!

data Board = Board { armies :: [Army]
                   , field :: BattleField
                   } deriving ( Show)

data GameState = GameState { player :: [PlayerName]
                           , currentP :: Int
                           , board :: Board
                           }
-}
