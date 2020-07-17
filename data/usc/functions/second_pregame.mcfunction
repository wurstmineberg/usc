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
