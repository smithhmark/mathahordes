module Models where

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
type ModelName = String

type Weapon = String  -- !!!
type Power = String   -- !!!

data Model = Model { name :: String
             , stats :: StatLine
             , faction :: Faction
             , loc :: Location
             , battleGroup :: Maybe ModelName
             , effects :: [String]
             , meelee :: [Weapon]
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
