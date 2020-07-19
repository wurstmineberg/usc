# Runs once every second but only before game start and only in self-assigned teams mode
# disable golden apple minigame entirely
clear @a minecraft:netherite_sword
# assign teams based on position
execute as @a[gamemode=adventure] at @s if block ~ 199 ~ #usc:golden_apple_floor_pregame run team leave @s
execute as @a[gamemode=adventure] at @s if block ~ 199 ~ minecraft:white_terracotta run team join white @s
execute as @a[gamemode=adventure] at @s if block ~ 199 ~ minecraft:orange_terracotta run team join gold @s
execute as @a[gamemode=adventure] at @s if block ~ 199 ~ minecraft:magenta_terracotta run team join light_purple @s
execute as @a[gamemode=adventure] at @s if block ~ 199 ~ minecraft:light_blue_terracotta run team join aqua @s
execute as @a[gamemode=adventure] at @s if block ~ 199 ~ minecraft:yellow_terracotta run team join yellow @s
execute as @a[gamemode=adventure] at @s if block ~ 199 ~ minecraft:lime_terracotta run team join green @s
execute as @a[gamemode=adventure] at @s if block ~ 199 ~ minecraft:lapis_block run team join blue @s
execute as @a[gamemode=adventure] at @s if block ~ 199 ~ minecraft:gray_terracotta run team join dark_gray @s
execute as @a[gamemode=adventure] at @s if block ~ 199 ~ minecraft:light_gray_terracotta run team join gray @s
execute as @a[gamemode=adventure] at @s if block ~ 199 ~ minecraft:cyan_terracotta run team join dark_aqua @s
execute as @a[gamemode=adventure] at @s if block ~ 199 ~ minecraft:purple_terracotta run team join dark_purple @s
execute as @a[gamemode=adventure] at @s if block ~ 199 ~ minecraft:blue_terracotta run team join dark_blue @s
execute as @a[gamemode=adventure] at @s if block ~ 199 ~ minecraft:brown_terracotta run team join dark_red @s
execute as @a[gamemode=adventure] at @s if block ~ 199 ~ minecraft:green_terracotta run team join dark_green @s
execute as @a[gamemode=adventure] at @s if block ~ 199 ~ minecraft:red_terracotta run team join red @s
execute as @a[gamemode=adventure] at @s if block ~ 199 ~ minecraft:black_terracotta run team join black @s
