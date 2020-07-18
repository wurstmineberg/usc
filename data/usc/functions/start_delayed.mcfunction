# called from start.mcfunction with a 5-second delay to allow players to fall to the ground after being scattered
scoreboard players set started variables 2
# start daylight and weather cycles
gamerule doDaylightCycle true
gamerule doWeatherCycle true
# clear everyone's inventories again
clear @a
# clear game-start effects
effect clear @a[gamemode=survival]
# adjust everyone's title timings (here instead of earlier to make sure everyone is online to be included in the selector)
title @a times 0 100 80
# damage and heal everyone to enable health display in player list
effect give @a[gamemode=survival] minecraft:instant_damage
effect give @a[gamemode=survival] minecraft:regeneration 10 9
# no-op teleport everyone for logging purposes
execute as @a at @s run teleport ~ ~ ~
# announce game start
tellraw @a {"text":"","extra":[{"text":"[USC] GAME STARTING NOW","color":"gold"}]}
title @a subtitle {"color": "gold", "text": "border radius: 1450m"}
title @a title {"text": "Game Starting Now"}
# start the worldborder
worldborder set 2751 600
