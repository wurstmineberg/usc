# Runs every tick.
# increment game timers and run second.mcfunction
scoreboard players add loadTimer variables 1
scoreboard players add loadTimerModSec variables 1
execute if score loadTimerModSec variables matches 20 run scoreboard players set loadTimerModSec variables 0
execute if score started variables matches 2 run scoreboard players add gameTimer variables 1
execute if score loadTimerModSec variables matches 0 run function usc:second
# handle spectators
scoreboard players enable @a[gamemode=adventure] spectate
scoreboard players enable @a[gamemode=survival] spectate
tellraw @a[scores={spectate=1..}] {"text":"","extra":[{"text":"[USC] Please mute yourself, or leave your team call, or leave the game.","color":"gray"}]}
gamemode spectator @a[scores={spectate=1..}]
scoreboard players set @a[gamemode=spectator] spectate 0
#TODO remove isSpectating objective and replace with gamemode checks
scoreboard players set @a[gamemode=spectator] isSpectating 1
scoreboard players set @a[gamemode=!spectator] isSpectating 0
# don't show health of respawning/spectating players in player list
scoreboard players reset @a[gamemode=!survival] health
