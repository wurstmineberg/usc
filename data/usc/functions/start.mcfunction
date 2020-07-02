# called from the command block at -3 11 8 when game start has been unlocked, there are no teamless non-spectating players, and all non-empty teams are ready
say The game will start in a few seconds. Don't move…
# disable pregame features #TODO move pregame clock to functions, adjust lobby coords after it's been moved down
setblock 15 6 12 minecraft:redstone_block
fill -18 32 -18 17 32 17 minecraft:air replace minecraft:lever
# update game settings
defaultgamemode spectator
setidletimeout 20
# update scoreboard
scoreboard objectives setdisplay sidebar respawnTimer
# start fill clock #TODO move fill clock to functions
setblock 16 22 10 minecraft:redstone_block
# set players to Survival to scatter them
gamemode survival @a[gamemode=adventure]
# spawn End portal if playing against Ender dragon #TODO replace with a variable check for setup book compatibility
execute if block -16 28 -3 minecraft:redstone_lamp[lit:true] run setblock 0 36 0 minecraft:structure_block[mode="load"]{mode:"LOAD",name:"usc:end_portal",ignoreEntities:1b}
execute if block -16 28 -3 minecraft:redstone_lamp[lit:true] run setblock 0 37 0 minecraft:redstone_block
execute if block -16 28 -3 minecraft:redstone_lamp[lit:true] run say The End portal is located at 0 38 0
setblock -18 1 -18 minecraft:redstone_block
# clear everyone's inventories
clear @a
# start game clock (will scatter players) #TODO move game clock to functions
setblock 15 6 -1 minecraft:air
# teleport everyone up as a workaround for the scatter bug #TODO make sure tp up happens after scatter
execute as @a[gamemode=survival] at @s run teleport ~ 256 ~
effect give @a[gamemode=survival] minecraft:absorption 222 222
# wait 5 seconds for players to fall before starting game timer and daylight/weather cycles
schedule function usc:start_delayed 5s