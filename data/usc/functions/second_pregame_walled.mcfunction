# Runs once every second but only before game start and not in self-assigned teams mode
# teleport players to their respective team lobby (or the golden apple minigame if teamless)
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
