# preparations to run after op has been teleported into the box
# update preparations progress sign
setblock -16 27 -16 minecraft:birch_wall_sign[facing=north]{Text1:"{\"text\":\"\"}",Text2:"{\"text\":\"setting up…\"}",Text3:"{\"text\":\"ETA: 1 second\"}",Text4:"{\"text\":\"\"}"} replace
# disable daylight cycle (reenabled at game start)
gamerule doDaylightCycle false
time set 0
# disable command block output because there's a lot of command blocks running periodically #TODO remove once everything has been ported to functions
gamerule commandBlockOutput false
# game settings #TODO these should probably be configurable
difficulty hard
gamerule doImmediateRespawn true
gamerule naturalRegeneration false
# set up world border
worldborder center 0 0
worldborder set 2901
worldborder warning time 300
# set up scoreboard
scoreboard objectives add deathsInternal deathCount
#TODO rework to start at 600 and count down once per second
scoreboard objectives add respawnTimer dummy "respawn at 12000"
scoreboard objectives add minigameScore dummy "Golden Apple minigame"
scoreboard objectives setdisplay sidebar minigameScore
scoreboard objectives add health health
scoreboard objectives setdisplay list health
scoreboard objectives setdisplay belowName health
scoreboard objectives add spectate trigger
scoreboard objectives add variables dummy
#TODO check whether this is still required or can be replaced by gamemode=Spectator checks
scoreboard objectives add isSpectating dummy
# set up teams
team add white
team add gold
team add light_purple
team add aqua
team add yellow
team add green
team add blue
team add dark_gray
team add gray
team add dark_aqua
team add dark_purple
team add dark_blue
team add dark_red
team add dark_green
team add red
team add black
team modify white color white
team modify gold color gold
team modify light_purple color light_purple
team modify aqua color aqua
team modify yellow color yellow
team modify green color green
team modify blue color blue
team modify dark_gray color dark_gray
team modify gray color gray
team modify dark_aqua color dark_aqua
team modify dark_purple color dark_purple
team modify dark_blue color dark_blue
team modify dark_red color dark_red
team modify dark_green color dark_green
team modify red color red
team modify black color black
# open door to setup room
fill -14 26 -17 -14 27 -17 minecraft:air
# update preparations progress sign
setblock -16 27 -16 minecraft:warped_wall_sign[facing=north]{Text1:"{\"text\":\"\"}",Text2:"{\"text\":\"Done.\"}",Text3:"{\"text\":\"\"}",Text4:"{\"text\":\"\"}"} replace
