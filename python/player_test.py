import pytest

import player

@pytest.fixture
def player1():
    return player.Player("One", "Faction")

def test_Player(player1):
    assert hasattr(player1, "_playerid")
    assert hasattr(player1, "_faction")

    assert player1._playerid == "One"
    assert player1._faction == "Faction"
