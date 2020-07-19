# Runs once every second but only before game start
execute unless score teamsMode variables matches 3 run function usc:second_pregame_selfassign
execute unless score teamsMode variables matches 3 run function usc:second_pregame_walled
# teleport players in Adventure mode to lobby
teleport @a[x=-9999,dx=9982,gamemode=adventure] 0.0 200.0 0.0
teleport @a[x=17,dx=9982,gamemode=adventure] 0.0 200.0 0.0
teleport @a[y=0,dy=199,gamemode=adventure] 0.0 200.0 0.0
teleport @a[y=204,dy=52,gamemode=adventure] 0.0 200.0 0.0
teleport @a[z=-9999,dz=9982,gamemode=adventure] 0.0 200.0 0.0
teleport @a[z=17,dz=9982,gamemode=adventure] 0.0 200.0 0.0
# delete knockback swords outside the minigame
clear @a[team=!] minecraft:netherite_sword
kill @e[type=item,x=-17,dx=34,y=199,dy=5,z=-17,dz=34]
# check if game should be started
scoreboard players set allTeamsReady variables 1
execute if entity @p[team=white] if block 3 201 -17 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
execute if entity @p[team=gold] if block 9 201 -17 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
execute if entity @p[team=light_purple] if block 16 201 -10 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
execute if entity @p[team=aqua] if block 16 201 -4 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
execute if entity @p[team=yellow] if block 16 201 3 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
execute if entity @p[team=green] if block 16 201 9 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
execute if entity @p[team=blue] if block 9 201 16 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
execute if entity @p[team=dark_gray] if block 3 201 16 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
execute if entity @p[team=gray] if block -4 201 16 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
execute if entity @p[team=dark_aqua] if block -10 201 16 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
execute if entity @p[team=dark_purple] if block -17 201 9 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
execute if entity @p[team=dark_blue] if block -17 201 3 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
execute if entity @p[team=dark_red] if block -17 201 -4 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
execute if entity @p[team=dark_green] if block -17 201 -10 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
execute if entity @p[team=red] if block -10 201 -17 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
execute if entity @p[team=black] if block -4 201 -17 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
scoreboard players set allPlayersInTeams variables 1
execute if score teamsMode variables matches 2..3 if entity @p[gamemode=adventure,team=] run scoreboard players set allPlayersInTeams variabels 0
execute if score startUnlocked variables matches 1 if score allTeamsReady variables matches 1 if score allPlayersInTeams variables matches 1 run function usc:start
