# Runs once every second after game start.
# respawn timer
scoreboard players set @a[scores={deathsInternal=1..,health=1..},gamemode=survival] respawnTimer 600
gamemode adventure @a[scores={deathsInternal=1..,health=1..},gamemode=survival]
scoreboard players set @a[gamemode=adventure] deathsInternal 0
scoreboard players remove @a[gamemode=adventure] respawnTimer 1
tellraw @a[scores={respawnTimer=599}] {"text":"","extra":[{"text":"[USC] If you died because of a player or while in the End, you're out of the game. In that case, click ","color":"gray"},{"text":"here","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger spectate set 1"}},{"text":" to spectate.","color":"gray"}]}
tellraw @a[scores={respawnTimer=540}] {"text":"","extra":[{"text":"[USC] Some suggestions while you're waiting:\n• Take a bathroom break\n• Grab some snacks\n• Remember to stay hydrated\n• Strategize\n• Hold ","color":"gray"},{"keybind":"key.playerlist","color":"gray"},{"text":" to watch players' health","color":"gray"}]}
gamemode survival @a[scores={respawnTimer=0}]
execute if entity @a[scores={respawnTimer=0}] run say @a[scores={respawnTimer=0}] respawned!
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
