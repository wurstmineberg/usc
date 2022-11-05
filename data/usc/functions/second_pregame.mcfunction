# Runs once every second but only before game start
execute if score teamsMode variables matches 3 run function usc:second_pregame_selfassign
execute unless score teamsMode variables matches 3 run function usc:second_pregame_walled
# teleport players in Adventure mode to lobby
teleport @a[x=-5469,dx=-90000,gamemode=adventure] -5451.0 200.0 117.0
teleport @a[x=-5433,dx=90000,gamemode=adventure] -5451.0 200.0 117.0
teleport @a[y=0,dy=-64,gamemode=adventure] -5451.0 200.0 117.0
teleport @a[y=7,dy=249,gamemode=adventure] -5451.0 200.0 117.0
teleport @a[z=99,dz=-90000,gamemode=adventure] -5451.0 200.0 117.0
teleport @a[z=135,dz=90000,gamemode=adventure] -5451.0 200.0 117.0
# delete knockback swords outside the minigame
clear @a[team=!] minecraft:netherite_sword
kill @e[type=item,x=-5468,dx=34,y=199,dy=5,z=100,dz=34]
# check if game should be started
scoreboard players set allTeamsReady variables 1
execute if entity @p[team=white] if block -5448 201 100 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
execute if entity @p[team=gold] if block -5442 201 100 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
execute if entity @p[team=light_purple] if block -5435 201 107 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
execute if entity @p[team=aqua] if block -5435 201 113 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
execute if entity @p[team=yellow] if block -5435 201 120 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
execute if entity @p[team=green] if block -5435 201 126 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
execute if entity @p[team=blue] if block -5442 201 16 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
execute if entity @p[team=dark_gray] if block -5448 201 133 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
execute if entity @p[team=gray] if block -5455 201 133 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
execute if entity @p[team=dark_aqua] if block -5461 201 133 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
execute if entity @p[team=dark_purple] if block -5468 201 126 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
execute if entity @p[team=dark_blue] if block -5468 201 120 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
execute if entity @p[team=dark_red] if block -5468 201 113 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
execute if entity @p[team=dark_green] if block -5468 201 107 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
execute if entity @p[team=red] if block -5461 201 100 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
execute if entity @p[team=black] if block -5455 201 100 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
scoreboard players set allPlayersInTeams variables 1
execute if score teamsMode variables matches 2..3 if entity @p[gamemode=adventure,team=] run scoreboard players set allPlayersInTeams variabels 0
execute if score startUnlocked variables matches 1 if score allTeamsReady variables matches 1 if score allPlayersInTeams variables matches 1 run function usc:start
