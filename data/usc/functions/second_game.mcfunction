# Runs once every second but only after game start
scoreboard players add gameTimer variables 1
scoreboard players add gameTimerModTenMin variables 1
execute if score gameTimerModTenMin variables matches 600 run scoreboard players set gameTimerModTenMin variables 0
# every 10 minutes, no-op teleport everyone for logging purposes
execute if score gameTimerModTenMin variables matches 0 as @a at @s run teleport ~ ~ ~
# world border
execute if score gameTimer variables matches 600 run worldborder set 2601 600
execute if score gameTimer variables matches 1200 run say MARK 1 DAY IN — border radius: 1300m
execute if score gameTimer variables matches 1200 run title @a subtitle {"color": "gold", "text": "border radius: 1300m"}
execute if score gameTimer variables matches 1200 run title @a title {"text": "MARK 1 DAY IN"}
execute if score gameTimer variables matches 1200 run worldborder set 2451 600
execute if score gameTimer variables matches 1800 run worldborder set 2301 600
execute if score gameTimer variables matches 2400 run say MARK 2 DAYS IN — border radius: 1150m
execute if score gameTimer variables matches 2400 run title @a subtitle {"color": "gold", "text": "border radius: 1150m"}
execute if score gameTimer variables matches 2400 run title @a title {"text": "MARK 2 DAYS IN"}
execute if score gameTimer variables matches 2400 run worldborder set 2151 600
execute if score gameTimer variables matches 3000 run worldborder set 2001 600
execute if score gameTimer variables matches 3600 run say MARK 3 DAYS IN — border radius: 1000m
execute if score gameTimer variables matches 3600 run title @a subtitle {"color": "gold", "text": "border radius: 1000m"}
execute if score gameTimer variables matches 3600 run title @a title {"text": "MARK 3 DAYS IN"}
execute if score gameTimer variables matches 3600 run worldborder set 1851 600
execute if score gameTimer variables matches 4200 run worldborder set 1701 600
execute if score gameTimer variables matches 4800 run say MARK 4 DAYS IN — border radius: 850m
execute if score gameTimer variables matches 4800 run title @a subtitle {"color": "gold", "text": "border radius: 850m"}
execute if score gameTimer variables matches 4800 run title @a title {"text": "MARK 4 DAYS IN"}
execute if score gameTimer variables matches 4800 run worldborder set 1551 600
execute if score gameTimer variables matches 5400 run worldborder set 1401 600
execute if score gameTimer variables matches 6000 run say MARK 5 DAYS IN — border radius: 700m
execute if score gameTimer variables matches 6000 run title @a subtitle {"color": "gold", "text": "border radius: 700m"}
execute if score gameTimer variables matches 6000 run title @a title {"text": "MARK 5 DAYS IN"}
execute if score gameTimer variables matches 6000 run worldborder set 1251 600
execute if score gameTimer variables matches 6600 run worldborder set 1101 600
execute if score gameTimer variables matches 7200 run say MARK 6 DAYS IN — border radius: 550m
execute if score gameTimer variables matches 7200 run title @a subtitle {"color": "gold", "text": "border radius: 550m"}
execute if score gameTimer variables matches 7200 run title @a title {"text": "MARK 6 DAYS IN"}
execute if score gameTimer variables matches 7200 run worldborder set 951 600
execute if score gameTimer variables matches 7800 run worldborder set 801 600
execute if score gameTimer variables matches 8400 run say MARK 7 DAYS IN — border radius: 400m
execute if score gameTimer variables matches 8400 run title @a subtitle {"color": "gold", "text": "border radius: 400m"}
execute if score gameTimer variables matches 8400 run title @a title {"text": "MARK 7 DAYS IN"}
execute if score gameTimer variables matches 8400 run worldborder set 651 600
execute if score gameTimer variables matches 9000 run worldborder set 501 600
execute if score gameTimer variables matches 9600 run say MARK 8 DAYS IN — border radius: 250m
execute if score gameTimer variables matches 9600 run title @a subtitle {"color": "gold", "text": "border radius: 250m"}
execute if score gameTimer variables matches 9600 run title @a title {"text": "MARK 8 DAYS IN"}
execute if score gameTimer variables matches 9600 run worldborder set 401 600
execute if score gameTimer variables matches 10200 run worldborder set 301 600
execute if score gameTimer variables matches 10800 run say MARK 9 DAYS IN — border radius: 150m
execute if score gameTimer variables matches 10800 run title @a subtitle {"color": "gold", "text": "border radius: 150m"}
execute if score gameTimer variables matches 10800 run title @a title {"text": "MARK 9 DAYS IN"}
execute if score gameTimer variables matches 10800 run worldborder set 251 600
execute if score gameTimer variables matches 11400 run worldborder set 201 600
execute if score gameTimer variables matches 12000 run say MARK 10 DAYS IN — border radius: 100m
execute if score gameTimer variables matches 12000 run title @a subtitle {"color": "gold", "text": "border radius: 100m"}
execute if score gameTimer variables matches 12000 run title @a title {"text": "MARK 10 DAYS IN"}
execute if score gameTimer variables matches 12000 run say The border has stopped moving.
# respawn timer
scoreboard players set @a[scores={deathsInternal=1..,health=1..},gamemode=survival] respawnTimer 600
gamemode adventure @a[scores={deathsInternal=1..,health=1..},gamemode=survival]
scoreboard players set @a[gamemode=adventure] deathsInternal 0
scoreboard players remove @a[gamemode=adventure] respawnTimer 1
tellraw @a[scores={respawnTimer=599}] {"text":"","extra":[{"text":"[USC] If you died because of a player or while in the End, you're out of the game. In that case, click ","color":"gray"},{"text":"here","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger spectate set 1"}},{"text":" to spectate.","color":"gray"}]}
tellraw @a[scores={respawnTimer=540}] {"text":"","extra":[{"text":"[USC] Some suggestions while you're waiting:\n• Take a bathroom break\n• Grab some snacks\n• Remember to stay hydrated\n• Strategize\n• Hold ","color":"gray"},{"keybind":"key.playerlist","color":"gray"},{"text":" to watch players' health","color":"gray"}]}
gamemode survival @a[scores={respawnTimer=0}]
execute if entity @p[scores={respawnTimer=0}] run say @a[scores={respawnTimer=0}] respawned!
scoreboard players reset @a[gamemode=spectator] respawnTimer
scoreboard players reset @a[gamemode=survival] respawnTimer
# update respawn radius to stay inside the world border
execute if score gameTimer variables matches 0..1199 run spreadplayers 0 0 400 1300 true @a[gamemode=survival,x=-17,dx=34,y=1,dy=34,z=-17,dz=34]
execute if score gameTimer variables matches 1200..2399 run spreadplayers 0 0 350 1150 true @a[gamemode=survival,x=-17,dx=34,y=1,dy=34,z=-17,dz=34]
execute if score gameTimer variables matches 2400..3599 run spreadplayers 0 0 300 1000 true @a[gamemode=survival,x=-17,dx=34,y=1,dy=34,z=-17,dz=34]
execute if score gameTimer variables matches 3600..4799 run spreadplayers 0 0 250 850 true @a[gamemode=survival,x=-17,dx=34,y=1,dy=34,z=-17,dz=34]
execute if score gameTimer variables matches 4800..5999 run spreadplayers 0 0 200 700 true @a[gamemode=survival,x=-17,dx=34,y=1,dy=34,z=-17,dz=34]
execute if score gameTimer variables matches 6000..7199 run spreadplayers 0 0 150 550 true @a[gamemode=survival,x=-17,dx=34,y=1,dy=34,z=-17,dz=34]
execute if score gameTimer variables matches 7299..8399 run spreadplayers 0 0 100 400 true @a[gamemode=survival,x=-17,dx=34,y=1,dy=34,z=-17,dz=34]
execute if score gameTimer variables matches 8400..9599 run spreadplayers 0 0 50 250 true @a[gamemode=survival,x=-17,dx=34,y=1,dy=34,z=-17,dz=34]
execute if score gameTimer variables matches 9600..10799 run spreadplayers 0 0 25 150 true @a[gamemode=survival,x=-17,dx=34,y=1,dy=34,z=-17,dz=34]
execute if score gameTimer variables matches 10800.. run spreadplayers 0 0 10 100 true @a[gamemode=survival,x=-17,dx=34,y=1,dy=34,z=-17,dz=34]
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
