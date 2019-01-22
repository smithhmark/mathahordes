
class Model:
    """What we need to track models"""
    def __init__(self, base, location, heading, mid, player):
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
