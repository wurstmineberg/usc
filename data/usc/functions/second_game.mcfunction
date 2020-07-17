# Runs once every second but only after game start
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
execute if score gameTimer variables matches 0..23999 run spreadplayers 0 0 400 1300 true @a[gamemode=survival,x=-17,dx=34,y=1,dy=34,z=-17,dz=34]
execute if score gameTimer variables matches 24000..47999 run spreadplayers 0 0 350 1150 true @a[gamemode=survival,x=-17,dx=34,y=1,dy=34,z=-17,dz=34]
execute if score gameTimer variables matches 48000..71999 run spreadplayers 0 0 300 1000 true @a[gamemode=survival,x=-17,dx=34,y=1,dy=34,z=-17,dz=34]
execute if score gameTimer variables matches 72000..95999 run spreadplayers 0 0 250 850 true @a[gamemode=survival,x=-17,dx=34,y=1,dy=34,z=-17,dz=34]
execute if score gameTimer variables matches 96000..119999 run spreadplayers 0 0 200 700 true @a[gamemode=survival,x=-17,dx=34,y=1,dy=34,z=-17,dz=34]
execute if score gameTimer variables matches 120000..143999 run spreadplayers 0 0 150 550 true @a[gamemode=survival,x=-17,dx=34,y=1,dy=34,z=-17,dz=34]
execute if score gameTimer variables matches 144000..167999 run spreadplayers 0 0 100 400 true @a[gamemode=survival,x=-17,dx=34,y=1,dy=34,z=-17,dz=34]
execute if score gameTimer variables matches 168000..191999 run spreadplayers 0 0 50 250 true @a[gamemode=survival,x=-17,dx=34,y=1,dy=34,z=-17,dz=34]
execute if score gameTimer variables matches 192000..215999 run spreadplayers 0 0 25 150 true @a[gamemode=survival,x=-17,dx=34,y=1,dy=34,z=-17,dz=34]
execute if score gameTimer variables matches 216000.. run spreadplayers 0 0 10 100 true @a[gamemode=survival,x=-17,dx=34,y=1,dy=34,z=-17,dz=34]
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
