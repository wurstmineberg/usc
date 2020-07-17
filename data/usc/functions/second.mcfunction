# Runs once every second.
execute if score started variables matches 0 run function usc:second_pregame
execute if score started variables matches 2 run function usc:second_game
# teleport players in Adventure mode to lobby
teleport @a[x=-9999,dx=9981,gamemode=adventure] 0 31.0 -10
teleport @a[x=18,dx=9981,gamemode=adventure] 8 31.0 -5
teleport @a[y=0,dy=29,gamemode=adventure] -5 31.0 -6
teleport @a[y=36,dy=220,gamemode=adventure] -5 31.0 -7
teleport @a[z=-9999,dz=9981,gamemode=adventure] 9 31.0 4
teleport @a[z=18,dz=9981,gamemode=adventure] -1 31.0 7
# teleport players to their respective team lobby (or the golden apple minigame if teamless) #TODO disable in “players choose their own teams” mode #TODO adjust coords when USC box is reduced to lobby
execute as @a[gamemode=adventure,team=] at @s unless block ~ 30 ~ #usc:golden_apple_floor run teleport -9 31.0 4
execute as @a[gamemode=adventure,team=white] at @s unless block ~ 30 ~ minecraft:white_terracotta run teleport 2 31.0 -15
execute as @a[gamemode=adventure,team=gold] at @s unless block ~ 30 ~ minecraft:orange_terracotta run teleport 9 31.0 -14
execute as @a[gamemode=adventure,team=light_purple] at @s unless block ~ 30 ~ minecraft:magenta_terracotta run teleport 13 31.0 -10
execute as @a[gamemode=adventure,team=aqua] at @s unless block ~ 30 ~ minecraft:light_blue_terracotta run teleport 14 31.0 -3
execute as @a[gamemode=adventure,team=yellow] at @s unless block ~ 30 ~ minecraft:yellow_terracotta run teleport 14 31.0 2
execute as @a[gamemode=adventure,team=green] at @s unless block ~ 30 ~ minecraft:lime_terracotta run teleport 13 31.0 9
execute as @a[gamemode=adventure,team=blue] at @s unless block ~ 30 ~ minecraft:lapis_block run teleport 9 31.0 13
execute as @a[gamemode=adventure,team=dark_gray] at @s unless block ~ 30 ~ minecraft:gray_terracotta run teleport 2 31.0 14
execute as @a[gamemode=adventure,team=gray] at @s unless block ~ 30 ~ minecraft:light_gray_terracotta run teleport -3 31.0 14
execute as @a[gamemode=adventure,team=dark_aqua] at @s unless block ~ 30 ~ minecraft:cyan_terracotta run teleport -10 31.0 13
execute as @a[gamemode=adventure,team=dark_purple] at @s unless block ~ 30 ~ minecraft:purple_terracotta run teleport -14 31.0 9
execute as @a[gamemode=adventure,team=dark_blue] at @s unless block ~ 30 ~ minecraft:blue_terracotta run teleport -15 31.0 2
execute as @a[gamemode=adventure,team=dark_red] at @s unless block ~ 30 ~ minecraft:brown_terracotta run teleport -15 31.0 -3
execute as @a[gamemode=adventure,team=dark_green] at @s unless block ~ 30 ~ minecraft:green_terracotta run teleport -14 31.0 -10
execute as @a[gamemode=adventure,team=red] at @s unless block ~ 30 ~ minecraft:red_terracotta run teleport -10 31.0 -14
execute as @a[gamemode=adventure,team=black] at @s unless block ~ 30 ~ minecraft:black_terracotta run teleport -3 31.0 -15
# give players in lobby effects (will remain for 10 seconds after respawn)
effect give @a[gamemode=adventure] minecraft:resistance 10 10 true
effect give @a[gamemode=adventure] minecraft:saturation 10 10 true
effect give @a[gamemode=adventure] minecraft:regeneration 10 10 true
