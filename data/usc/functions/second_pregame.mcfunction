# Runs once every second but only before game start
# teleport players in Adventure mode to lobby
teleport @a[x=-9999,dx=9982,gamemode=adventure] 0.0 200.0 0.0
teleport @a[x=17,dx=9982,gamemode=adventure] 0.0 200.0 0.0
teleport @a[y=0,dy=199,gamemode=adventure] 0.0 200.0 0.0
teleport @a[y=204,dy=52,gamemode=adventure] 0.0 200.0 0.0
teleport @a[z=-9999,dz=9982,gamemode=adventure] 0.0 200.0 0.0
teleport @a[z=17,dz=9982,gamemode=adventure] 0.0 200.0 0.0
# teleport players to their respective team lobby (or the golden apple minigame if teamless) #TODO disable in “players choose their own teams” mode
execute as @a[gamemode=adventure,team=] at @s unless block ~ 199 ~ #usc:golden_apple_floor_pregame run teleport 0.0 200.0 0.0
execute as @a[gamemode=adventure,team=white] at @s unless block ~ 199 ~ minecraft:white_terracotta run teleport 2 200.0 -15
execute as @a[gamemode=adventure,team=gold] at @s unless block ~ 199 ~ minecraft:orange_terracotta run teleport 9 200.0 -14
execute as @a[gamemode=adventure,team=light_purple] at @s unless block ~ 199 ~ minecraft:magenta_terracotta run teleport 13 200.0 -10
execute as @a[gamemode=adventure,team=aqua] at @s unless block ~ 199 ~ minecraft:light_blue_terracotta run teleport 14 200.0 -3
execute as @a[gamemode=adventure,team=yellow] at @s unless block ~ 199 ~ minecraft:yellow_terracotta run teleport 14 200.0 2
execute as @a[gamemode=adventure,team=green] at @s unless block ~ 199 ~ minecraft:lime_terracotta run teleport 13 200.0 9
execute as @a[gamemode=adventure,team=blue] at @s unless block ~ 199 ~ minecraft:lapis_block run teleport 9 200.0 13
execute as @a[gamemode=adventure,team=dark_gray] at @s unless block ~ 199 ~ minecraft:gray_terracotta run teleport 2 200.0 14
execute as @a[gamemode=adventure,team=gray] at @s unless block ~ 199 ~ minecraft:light_gray_terracotta run teleport -3 200.0 14
execute as @a[gamemode=adventure,team=dark_aqua] at @s unless block ~ 199 ~ minecraft:cyan_terracotta run teleport -10 200.0 13
execute as @a[gamemode=adventure,team=dark_purple] at @s unless block ~ 199 ~ minecraft:purple_terracotta run teleport -14 200.0 9
execute as @a[gamemode=adventure,team=dark_blue] at @s unless block ~ 199 ~ minecraft:blue_terracotta run teleport -15 200.0 2
execute as @a[gamemode=adventure,team=dark_red] at @s unless block ~ 199 ~ minecraft:brown_terracotta run teleport -15 200.0 -3
execute as @a[gamemode=adventure,team=dark_green] at @s unless block ~ 199 ~ minecraft:green_terracotta run teleport -14 200.0 -10
execute as @a[gamemode=adventure,team=red] at @s unless block ~ 199 ~ minecraft:red_terracotta run teleport -10 200.0 -14
execute as @a[gamemode=adventure,team=black] at @s unless block ~ 199 ~ minecraft:black_terracotta run teleport -3 200.0 -15
# golden apple minigame
replaceitem entity @a[gamemode=adventure,team=] hotbar.0 minecraft:netherite_sword{Enchantments:[{id:"minecraft:knockback",lvl:10},{id:"minecraft:unbreaking",lvl:10}]} 1
execute as @a[gamemode=adventure,team=,scores={minigameScore=1..}] at @s if block ~ 199 ~ minecraft:glass run scoreboard players remove @s minigameScore 1
execute as @a[gamemode=adventure,team=] at @s if block ~ 199 ~ minecraft:black_stained_glass run scoreboard players add @p minigameScore 1
execute as @a[gamemode=adventure,team=] at @s if block ~ 199 ~ minecraft:brown_stained_glass run scoreboard players add @p minigameScore 2
execute as @a[gamemode=adventure,team=] at @s if block ~ 199 ~ minecraft:orange_stained_glass run scoreboard players add @p minigameScore 3
execute as @a[gamemode=adventure,team=] at @s if block ~ 199 ~ minecraft:yellow_stained_glass run scoreboard players add @p minigameScore 4
execute as @a[gamemode=adventure,team=] at @s if block ~ 199 ~ minecraft:white_stained_glass run scoreboard players add @p minigameScore 5
scoreboard players reset @a[scores={minigameScore=0}] minigameScore
# delete knockback swords outside the minigame
clear @a[team=!] minecraft:netherite_sword
kill @a[type=item,x=-17,dx=34,y=199,dy=5,z=-17,dz=34]
# check if game should be started #TODO move down with lobby
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
execute if score startUnlocked variables matches 1 if score allTeamsReady variables matches 1 unless entity @p[gamemode=adventure,team=] run function usc:start
