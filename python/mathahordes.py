
class Unit:
    def __init__(self, name, stats, loadout, starAtts, starActs, type, size, solo):
        self._name = name
        self._solo = solo
        self._stats = stats
        self._loadout = loadout
        self._starAtts = starAtts
        self._starActs = starActs
        self._type = type
        self._size = size
        self._models = []

class Model:
    """What we need to track models"""
    def __init__(self, base, location, heading, mid, player):
        self._inplay = False
        self._onboard = False
        self._ontable = False
        self._base = base
        self._loc = location
        self._heading = heading
        self._mid = mid
        self._player = player

class BattleField:
    """Here is the game board
    """
    def __init__(self, width, bredth):
        self._x = width
        self._y = bredth
        self._models = []

class Game:
    """a container to keep game state tidy
    """
    def __init__(self):
        self._players = []
        self._board = None

class Army:
    """
    """
    def __init__(self):
        pass

def take_turn(active_player, battlefield, players):
    maintenance_phase(active_player)
    control_phase(active_player
