
import System.Environment

main :: IO ()
main = getArgs >>= print . head

playerTurn :: GameState -> GameState
playerTurn g = g
maintPhase :: GameState -> GameState
maintPhase g = g
ctrlPhase :: GameState -> GameState
ctrlPhase g = g
actPhase :: GameState -> GameState
actPhase g = g

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
