# Runs once every second but only after game start
scoreboard players add gameTimer variables 1
scoreboard players add gameTimerModTenMin variables 1
execute if score gameTimerModTenMin variables matches 600 run scoreboard players set gameTimerModTenMin variables 0
# every 10 minutes, no-op teleport everyone for logging purposes
execute if score gameTimerModTenMin variables matches 0 as @a at @s run teleport ~ ~ ~
# world border
execute if score gameTimer variables matches 600 run worldborder set 2601 600
execute if score gameTimer variables matches 1200 run tellraw @a {"text":"","extra":[{"text":"[USC] MARK 1 DAY IN — border radius: 1300m","color":"gold"}]}
execute if score gameTimer variables matches 1200 run title @a subtitle {"color": "gold", "text": "border radius: 1300m"}
execute if score gameTimer variables matches 1200 run title @a title {"text": "MARK 1 DAY IN"}
execute if score gameTimer variables matches 1200 run worldborder set 2451 600
execute if score gameTimer variables matches 1800 run worldborder set 2301 600
execute if score gameTimer variables matches 2400 run tellraw @a {"text":"","extra":[{"text":"[USC] MARK 2 DAYS IN — border radius: 1150m","color":"gold"}]}
execute if score gameTimer variables matches 2400 run title @a subtitle {"color": "gold", "text": "border radius: 1150m"}
execute if score gameTimer variables matches 2400 run title @a title {"text": "MARK 2 DAYS IN"}
execute if score gameTimer variables matches 2400 run worldborder set 2151 600
execute if score gameTimer variables matches 3000 run worldborder set 2001 600
execute if score gameTimer variables matches 3600 run tellraw @a {"text":"","extra":[{"text":"[USC] MARK 3 DAYS IN — border radius: 1000m","color":"gold"}]}
execute if score gameTimer variables matches 3600 run title @a subtitle {"color": "gold", "text": "border radius: 1000m"}
execute if score gameTimer variables matches 3600 run title @a title {"text": "MARK 3 DAYS IN"}
execute if score gameTimer variables matches 3600 run worldborder set 1851 600
execute if score gameTimer variables matches 4200 run worldborder set 1701 600
execute if score gameTimer variables matches 4800 run tellraw @a {"text":"","extra":[{"text":"[USC] MARK 4 DAYS IN — border radius: 850m","color":"gold"}]}
execute if score gameTimer variables matches 4800 run title @a subtitle {"color": "gold", "text": "border radius: 850m"}
execute if score gameTimer variables matches 4800 run title @a title {"text": "MARK 4 DAYS IN"}
execute if score gameTimer variables matches 4800 run worldborder set 1551 600
execute if score gameTimer variables matches 5400 run worldborder set 1401 600
execute if score gameTimer variables matches 6000 run tellraw @a {"text":"","extra":[{"text":"[USC] MARK 5 DAYS IN — border radius: 700m","color":"gold"}]}
execute if score gameTimer variables matches 6000 run title @a subtitle {"color": "gold", "text": "border radius: 700m"}
execute if score gameTimer variables matches 6000 run title @a title {"text": "MARK 5 DAYS IN"}
execute if score gameTimer variables matches 6000 run worldborder set 1251 600
execute if score gameTimer variables matches 6600 run worldborder set 1101 600
execute if score gameTimer variables matches 7200 run tellraw @a {"text":"","extra":[{"text":"[USC] MARK 6 DAYS IN — border radius: 550m","color":"gold"}]}
execute if score gameTimer variables matches 7200 run title @a subtitle {"color": "gold", "text": "border radius: 550m"}
execute if score gameTimer variables matches 7200 run title @a title {"text": "MARK 6 DAYS IN"}
execute if score gameTimer variables matches 7200 run worldborder set 951 600
execute if score gameTimer variables matches 7800 run worldborder set 801 600
execute if score gameTimer variables matches 8400 run tellraw @a {"text":"","extra":[{"text":"[USC] MARK 7 DAYS IN — border radius: 400m","color":"gold"}]}
execute if score gameTimer variables matches 8400 run title @a subtitle {"color": "gold", "text": "border radius: 400m"}
execute if score gameTimer variables matches 8400 run title @a title {"text": "MARK 7 DAYS IN"}
execute if score gameTimer variables matches 8400 run worldborder set 651 600
execute if score gameTimer variables matches 9000 run worldborder set 501 600
execute if score gameTimer variables matches 9600 run tellraw @a {"text":"","extra":[{"text":"[USC] MARK 8 DAYS IN — border radius: 250m","color":"gold"}]}
execute if score gameTimer variables matches 9600 run title @a subtitle {"color": "gold", "text": "border radius: 250m"}
execute if score gameTimer variables matches 9600 run title @a title {"text": "MARK 8 DAYS IN"}
execute if score gameTimer variables matches 9600 run worldborder set 401 600
execute if score gameTimer variables matches 10200 run worldborder set 301 600
execute if score gameTimer variables matches 10800 run tellraw @a {"text":"","extra":[{"text":"[USC] MARK 9 DAYS IN — border radius: 150m","color":"gold"}]}
execute if score gameTimer variables matches 10800 run title @a subtitle {"color": "gold", "text": "border radius: 150m"}
execute if score gameTimer variables matches 10800 run title @a title {"text": "MARK 9 DAYS IN"}
execute if score gameTimer variables matches 10800 run worldborder set 251 600
execute if score gameTimer variables matches 11400 run worldborder set 201 600
execute if score gameTimer variables matches 12000 run tellraw @a {"text":"","extra":[{"text":"[USC] MARK 10 DAYS IN — border radius: 100m","color":"gold"}]}
execute if score gameTimer variables matches 12000 run title @a subtitle {"color": "gold", "text": "border radius: 100m"}
execute if score gameTimer variables matches 12000 run title @a title {"text": "MARK 10 DAYS IN"}
execute if score gameTimer variables matches 12000 run tellraw @a {"text":"","extra":[{"text":"[USC] The border has stopped moving.","color":"gold"}]}
# respawn timer
scoreboard players set @a[scores={deathsInternal=1..,health=1..},gamemode=survival] respawnTimer 600
gamemode adventure @a[scores={deathsInternal=1..,health=1..},gamemode=survival]
scoreboard players set @a[gamemode=adventure] deathsInternal 0
scoreboard players remove @a[gamemode=adventure] respawnTimer 1
tellraw @a[scores={respawnTimer=599}] {"text":"","extra":[{"text":"[USC] If you died because of a player or while in the End, you're out of the game. In that case, click ","color":"gold"},{"text":"here","color":"gold","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger spectate set 1"}},{"text":" to spectate.","color":"gold"}]}
tellraw @a[scores={respawnTimer=540}] {"text":"","extra":[{"text":"[USC] Some suggestions while you're waiting:\n• Take a bathroom break\n• Grab some snacks\n• Remember to stay hydrated\n• Strategize\n• Hold ","color":"gold"},{"keybind":"key.playerlist","color":"gold"},{"text":" to watch players' health","color":"gold"}]}
gamemode survival @a[scores={respawnTimer=0}]
execute if entity @p[scores={respawnTimer=0}] run tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"selector":"@a[scores={respawnTimer=0}]","color":"gold"},{"text":"respawned!","color":"gold"}]}
# update respawn radius to stay inside the world border
execute if score gameTimer variables matches 0..1199 run spreadplayers 0 0 400 1300 true @a[scores={respawnTimer=0}]
execute if score gameTimer variables matches 1200..2399 run spreadplayers 0 0 350 1150 true @a[scores={respawnTimer=0}]
execute if score gameTimer variables matches 2400..3599 run spreadplayers 0 0 300 1000 true @a[scores={respawnTimer=0}]
execute if score gameTimer variables matches 3600..4799 run spreadplayers 0 0 250 850 true @a[scores={respawnTimer=0}]
execute if score gameTimer variables matches 4800..5999 run spreadplayers 0 0 200 700 true @a[scores={respawnTimer=0}]
execute if score gameTimer variables matches 6000..7199 run spreadplayers 0 0 150 550 true @a[scores={respawnTimer=0}]
execute if score gameTimer variables matches 7299..8399 run spreadplayers 0 0 100 400 true @a[scores={respawnTimer=0}]
execute if score gameTimer variables matches 8400..9599 run spreadplayers 0 0 50 250 true @a[scores={respawnTimer=0}]
execute if score gameTimer variables matches 9600..10799 run spreadplayers 0 0 25 150 true @a[scores={respawnTimer=0}]
execute if score gameTimer variables matches 10800.. run spreadplayers 0 0 10 100 true @a[scores={respawnTimer=0}]
# remove effects, reset health, and remove respawnTimer score after scattering
effect clear @a[scores={respawnTimer=0}]
effect give @a[scores={respawnTimer=0}] minecraft:instant_damage
effect give @a[scores={respawnTimer=0}] minecraft:regeneration 10 9
scoreboard players reset @a[gamemode=survival] respawnTimer
scoreboard players reset @a[gamemode=spectator] respawnTimer
# teleport players in Adventure mode to lobby
teleport @a[x=-9999,dx=9981,gamemode=adventure] 0.0 2.0 0.0
teleport @a[x=18,dx=9981,gamemode=adventure] 0.0 2.0 0.0
teleport @a[y=7,dy=249,gamemode=adventure] 0.0 2.0 0.0
teleport @a[z=-9999,dz=9981,gamemode=adventure] 0.0 2.0 0.0
teleport @a[z=18,dz=9981,gamemode=adventure] 0.0 2.0 0.0
# teleport players to their respective team lobby (or the golden apple minigame if teamless) #TODO disable in “players choose their own teams” mode
execute as @a[gamemode=adventure,team=] at @s unless block ~ 1 ~ #usc:golden_apple_floor_game run teleport 0.0 2.0 0.0
execute as @a[gamemode=adventure,team=white] at @s unless block ~ 1 ~ minecraft:white_terracotta run teleport 2 2.0 -15
execute as @a[gamemode=adventure,team=gold] at @s unless block ~ 1 ~ minecraft:orange_terracotta run teleport 9 2.0 -14
execute as @a[gamemode=adventure,team=light_purple] at @s unless block ~ 1 ~ minecraft:magenta_terracotta run teleport 13 2.0 -10
execute as @a[gamemode=adventure,team=aqua] at @s unless block ~ 1 ~ minecraft:light_blue_terracotta run teleport 14 2.0 -3
execute as @a[gamemode=adventure,team=yellow] at @s unless block ~ 1 ~ minecraft:yellow_terracotta run teleport 14 2.0 2
execute as @a[gamemode=adventure,team=green] at @s unless block ~ 1 ~ minecraft:lime_terracotta run teleport 13 2.0 9
execute as @a[gamemode=adventure,team=blue] at @s unless block ~ 1 ~ minecraft:lapis_block run teleport 9 2.0 13
execute as @a[gamemode=adventure,team=dark_gray] at @s unless block ~ 1 ~ minecraft:gray_terracotta run teleport 2 2.0 14
execute as @a[gamemode=adventure,team=gray] at @s unless block ~ 1 ~ minecraft:light_gray_terracotta run teleport -3 2.0 14
execute as @a[gamemode=adventure,team=dark_aqua] at @s unless block ~ 1 ~ minecraft:cyan_terracotta run teleport -10 2.0 13
execute as @a[gamemode=adventure,team=dark_purple] at @s unless block ~ 1 ~ minecraft:purple_terracotta run teleport -14 2.0 9
execute as @a[gamemode=adventure,team=dark_blue] at @s unless block ~ 1 ~ minecraft:blue_terracotta run teleport -15 2.0 2
execute as @a[gamemode=adventure,team=dark_red] at @s unless block ~ 1 ~ minecraft:brown_terracotta run teleport -15 2.0 -3
execute as @a[gamemode=adventure,team=dark_green] at @s unless block ~ 1 ~ minecraft:green_terracotta run teleport -14 2.0 -10
execute as @a[gamemode=adventure,team=red] at @s unless block ~ 1 ~ minecraft:red_terracotta run teleport -10 2.0 -14
execute as @a[gamemode=adventure,team=black] at @s unless block ~ 1 ~ minecraft:black_terracotta run teleport -3 2.0 -15
# set collar colors based on team
execute as @e[type=wolf,team=white] run data modify entity @s CollarColor set value 0b
execute as @e[type=wolf,team=gold] run data modify entity @s CollarColor set value 1b
execute as @e[type=wolf,team=light_purple] run data modify entity @s CollarColor set value 2b
execute as @e[type=wolf,team=aqua] run data modify entity @s CollarColor set value 3b
execute as @e[type=wolf,team=yellow] run data modify entity @s CollarColor set value 4b
execute as @e[type=wolf,team=green] run data modify entity @s CollarColor set value 5b
execute as @e[type=wolf,team=blue] run data modify entity @s CollarColor set value 6b
execute as @e[type=wolf,team=dark_gray] run data modify entity @s CollarColor set value 7b
execute as @e[type=wolf,team=gray] run data modify entity @s CollarColor set value 8b
execute as @e[type=wolf,team=dark_aqua] run data modify entity @s CollarColor set value 9b
execute as @e[type=wolf,team=dark_purple] run data modify entity @s CollarColor set value 10b
execute as @e[type=wolf,team=dark_blue] run data modify entity @s CollarColor set value 11b
execute as @e[type=wolf,team=dark_red] run data modify entity @s CollarColor set value 12b
execute as @e[type=wolf,team=dark_green] run data modify entity @s CollarColor set value 13b
execute as @e[type=wolf,team=red] run data modify entity @s CollarColor set value 14b
execute as @e[type=wolf,team=black] run data modify entity @s CollarColor set value 15b
execute as @e[type=cat,team=white] run data modify entity @s CollarColor set value 0b
execute as @e[type=cat,team=gold] run data modify entity @s CollarColor set value 1b
execute as @e[type=cat,team=light_purple] run data modify entity @s CollarColor set value 2b
execute as @e[type=cat,team=aqua] run data modify entity @s CollarColor set value 3b
execute as @e[type=cat,team=yellow] run data modify entity @s CollarColor set value 4b
execute as @e[type=cat,team=green] run data modify entity @s CollarColor set value 5b
execute as @e[type=cat,team=blue] run data modify entity @s CollarColor set value 6b
execute as @e[type=cat,team=dark_gray] run data modify entity @s CollarColor set value 7b
execute as @e[type=cat,team=gray] run data modify entity @s CollarColor set value 8b
execute as @e[type=cat,team=dark_aqua] run data modify entity @s CollarColor set value 9b
execute as @e[type=cat,team=dark_purple] run data modify entity @s CollarColor set value 10b
execute as @e[type=cat,team=dark_blue] run data modify entity @s CollarColor set value 11b
execute as @e[type=cat,team=dark_red] run data modify entity @s CollarColor set value 12b
execute as @e[type=cat,team=dark_green] run data modify entity @s CollarColor set value 13b
execute as @e[type=cat,team=red] run data modify entity @s CollarColor set value 14b
execute as @e[type=cat,team=black] run data modify entity @s CollarColor set value 15b
# team elimination checks
execute if entity @e[type=minecraft:ender_dragon] run scoreboard players set dragonSeen variables 1
execute if score enderDragonParticipates variables matches 1 if score dragonSeen variables matches 1 unless entity @e[type=minecraft:ender_dragon] run function usc:eliminate_team_glydia
execute if score teamParticipatesWhite variables matches 1 unless entity @p[team=white,gamemode=survival,scores={health=1..}] run function usc:eliminate_team_white
execute if score teamParticipatesGold variables matches 1 unless entity @p[team=gold,gamemode=survival,scores={health=1..}] run function usc:eliminate_team_gold
execute if score teamParticipatesLightPurple variables matches 1 unless entity @p[team=light_purple,gamemode=survival,scores={health=1..}] run function usc:eliminate_team_light_purple
execute if score teamParticipatesAqua variables matches 1 unless entity @p[team=aqua,gamemode=survival,scores={health=1..}] run function usc:eliminate_team_aqua
execute if score teamParticipatesYellow variables matches 1 unless entity @p[team=yellow,gamemode=survival,scores={health=1..}] run function usc:eliminate_team_yellow
execute if score teamParticipatesGreen variables matches 1 unless entity @p[team=green,gamemode=survival,scores={health=1..}] run function usc:eliminate_team_green
execute if score teamParticipatesBlue variables matches 1 unless entity @p[team=blue,gamemode=survival,scores={health=1..}] run function usc:eliminate_team_blue
execute if score teamParticipatesDarkGray variables matches 1 unless entity @p[team=dark_gray,gamemode=survival,scores={health=1..}] run function usc:eliminate_team_dark_gray
execute if score teamParticipatesGray variables matches 1 unless entity @p[team=gray,gamemode=survival,scores={health=1..}] run function usc:eliminate_team_gray
execute if score teamParticipatesDarkAqua variables matches 1 unless entity @p[team=dark_aqua,gamemode=survival,scores={health=1..}] run function usc:eliminate_team_dark_aqua
execute if score teamParticipatesDarkPurple variables matches 1 unless entity @p[team=dark_purple,gamemode=survival,scores={health=1..}] run function usc:eliminate_team_dark_purple
execute if score teamParticipatesDarkBlue variables matches 1 unless entity @p[team=dark_blue,gamemode=survival,scores={health=1..}] run function usc:eliminate_team_dark_blue
execute if score teamParticipatesDarkRed variables matches 1 unless entity @p[team=dark_red,gamemode=survival,scores={health=1..}] run function usc:eliminate_team_dark_red
execute if score teamParticipatesDarkGreen variables matches 1 unless entity @p[team=dark_green,gamemode=survival,scores={health=1..}] run function usc:eliminate_team_dark_green
execute if score teamParticipatesRed variables matches 1 unless entity @p[team=red,gamemode=survival,scores={health=1..}] run function usc:eliminate_team_red
execute if score teamParticipatesBlack variables matches 1 unless entity @p[team=black,gamemode=survival,scores={health=1..}] run function usc:eliminate_team_black
