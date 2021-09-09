import json
from pprint import pprint

from brawlstats import Client, Player

from my_brawlstars.settings import BRAWLSTARS_TOKEN
from my_brawlstars.config import PLAYER_TAG

client = Client(BRAWLSTARS_TOKEN)

player_file = f"player_{PLAYER_TAG}.json"
with open(player_file, "w", encoding="utf-8") as f:
    player = client.get_profile(PLAYER_TAG)
    json.dump(player.raw_data, f)
