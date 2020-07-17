# called from second_pregame.mcfunction when game start has been unlocked, there are no teamless non-spectating players, and all non-empty teams are ready
scoreboard players set started variables 1
say The game will start in a few seconds. Don't move…
# remove ready levers #TODO adjust lobby coords after it's been moved down
fill -18 32 -18 17 32 17 minecraft:air replace minecraft:lever
# update game settings
defaultgamemode spectator
setidletimeout 20
execute unless score showAdvancements variables matches 1 run gamerule announceAdvancements false
# update scoreboard
scoreboard objectives setdisplay sidebar respawnTimer
# set players to Survival and scatter them
gamemode survival @a[gamemode=adventure]
spreadplayers 0 0 400 1300 true @a[gamemode=survival]
# spawn End portal if playing against Ender dragon
execute if score enderDragonParticipates variables matches 1 run setblock 0 36 0 minecraft:structure_block[mode="load"]{mode:"LOAD",name:"usc:end_portal",ignoreEntities:1b}
execute if score enderDragonParticipates variables matches 1 run setblock 0 37 0 minecraft:redstone_block
execute if score enderDragonParticipates variables matches 1 run say The End portal is located at 0 38 0
# clear everyone's inventories
clear @a
# start game clock (will scatter players) #TODO move game clock to functions
setblock 15 6 -1 minecraft:air
# teleport everyone up as a workaround for the scatter bug #TODO make sure tp up happens after scatter
execute as @a[gamemode=survival] at @s run teleport ~ 256 ~
effect give @a[gamemode=survival] minecraft:absorption 222 222
# wait 5 seconds for players to fall before starting game timer and daylight/weather cycles
schedule function usc:start_delayed 5s
