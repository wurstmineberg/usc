# Runs once every second but only before game start
# golden apple minigame
replaceitem entity @a[gamemode=adventure,team=] hotbar.0 minecraft:netherite_sword{Enchantments:[{id:"minecraft:knockback",lvl:10},{id:"minecraft:unbreaking",lvl:10}]} 1
execute as @a[gamemode=adventure,team=,scores={minigameScore=1..}] at @s if block ~ 30 ~ minecraft:beacon run scoreboard players remove @s minigameScore 1
execute as @a[gamemode=adventure,team=] at @s if block ~ 30 ~ minecraft:black_wool run scoreboard players add @p minigameScore 1
execute as @a[gamemode=adventure,team=] at @s if block ~ 30 ~ minecraft:brown_wool run scoreboard players add @p minigameScore 2
execute as @a[gamemode=adventure,team=] at @s if block ~ 30 ~ minecraft:orange_wool run scoreboard players add @p minigameScore 3
execute as @a[gamemode=adventure,team=] at @s if block ~ 30 ~ minecraft:gold_block run scoreboard players add @p minigameScore 4
execute as @a[gamemode=adventure,team=] at @s if block ~ 30 ~ minecraft:white_wool run scoreboard players add @p minigameScore 5
scoreboard players reset @a[scores={minigameScore=0}] minigameScore
# delete knockback swords outside the minigame
clear @a[team=!] minecraft:netherite_sword
kill @a[type=item,x=-18,dx=36,z=-18,dz=36,y=0,dy=36]
# check if game should be started #TODO move down with lobby
scoreboard players set allTeamsReady variables 1
execute if entity @p[team=white] if block 3 32 -17 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
execute if entity @p[team=gold] if block 9 32 -17 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
execute if entity @p[team=light_purple] if block 16 32 -10 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
execute if entity @p[team=aqua] if block 16 32 -4 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
execute if entity @p[team=yellow] if block 16 32 3 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
execute if entity @p[team=green] if block 16 32 9 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
execute if entity @p[team=blue] if block 9 32 16 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
execute if entity @p[team=dark_gray] if block 3 32 16 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
execute if entity @p[team=gray] if block -4 32 16 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
execute if entity @p[team=dark_aqua] if block -10 32 16 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
execute if entity @p[team=dark_purple] if block -17 32 9 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
execute if entity @p[team=dark_blue] if block -17 32 3 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
execute if entity @p[team=dark_red] if block -17 32 -4 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
execute if entity @p[team=dark_green] if block -17 32 -10 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
execute if entity @p[team=red] if block -10 32 -17 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
execute if entity @p[team=black] if block -4 32 -17 minecraft:redstone_lamp[lit=false] run scoreboard players set allTeamsReady variables 0
execute if score startUnlocked variables matches 1 if score allTeamsReady variables matches 1 unless entity @p[gamemode=adventure,team=] run function usc:start
