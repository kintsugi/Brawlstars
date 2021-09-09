import confuse

config_file = "./config.yaml"

config = confuse.Configuration("my-brawlstars", __name__)
config.set_file(config_file)

PLAYER_TAG = config["player_tag"].get(str)
