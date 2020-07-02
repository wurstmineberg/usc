# called from start.mcfunction with a 5-second delay to allow players to fall to the ground after being scattered
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
effect give @a[gamemode=survival] minecraft:regeneration 6 6
# announce game start
say GAME STARTING NOW
# start the worldborder clock #TODO move worldborder clock to functions
setblock 16 1 -11 minecraft:redstone_block
