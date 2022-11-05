# automatically called each time the server is started
#TODO to improve handling of server crashes, make sure these commands are only run once
# disable world updates (reenabled at game start)
gamerule doDaylightCycle false
gamerule doFireTick false
gamerule doInsomnia false
gamerule doMobSpawning false
gamerule doPatrolSpawning false
gamerule doTraderSpawning false
gamerule doWeatherCycle false
gamerule randomTickSpeed 0
defaultgamemode adventure
setworldspawn -5451 200 117
# initialize variables objective (used in tick.mcfunction)
scoreboard objectives add variables dummy
# 0=pregame, 1=starting, 2=game, 3=ended
scoreboard players set started variables 0
# forceload lobby
forceload add -5469 99 -5434 134
# make sure the lobby is fully loaded before running preparations
schedule function usc:place_lobby 1s
schedule function usc:prep 2s
