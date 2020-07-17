# automatically called each time the server is started
#TODO to improve handling of server crashes, make sure these commands are only run once
# disable daylight and weather cycles (reenabled at game start)
gamerule doDaylightCycle false
gamerule doWeatherCycle false
defaultgamemode adventure
#TODO move down once box has been reduced to lobby
setworldspawn 0 31 0
# initialize variables objective (used in tick.mcfunction)
scoreboard objectives add variables dummy
scoreboard players set started variables 0
#TODO forceload lobby, automatically run init, replace init in readme instruction with book
