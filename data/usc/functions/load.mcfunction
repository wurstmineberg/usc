# automatically called each time the server is started
#TODO to improve handling of server crashes, make sure these commands are only run once
# disable daylight and weather cycles (reenabled at game start)
gamerule doDaylightCycle false
gamerule doWeatherCycle false
defaultgamemode adventure
setworldspawn 0 200 0
# initialize variables objective (used in tick.mcfunction)
scoreboard objectives add variables dummy
# 0=pregame, 1=starting, 2=game, 3=ended
scoreboard players set started variables 0
# forceload lobby
forceload add -18 -18 17 17
# make sure the lobby is fully loaded before running preparations
schedule function usc:place_lobby 1s
schedule function usc:prep 2s
