# Runs every tick.
# increment game timers and run second.mcfunction
execute if score started variables matches 1 run scoreboard players add gameTimer variables 1
execute if score started variables matches 1 run scoreboard players add gameTimerModSec variables 1
execute if score gameTimerModSec matches 20 run function usc:second
execute if score gameTimerModSec matches 20 run scoreboard players set gameTimerModSec variables 0
# handle spectators
scoreboard players enable @a[gamemode=adventure] spectate
scoreboard players enable @a[gamemode=survival] spectate
tellraw @a[scores={spectate=1..}] {"text":"","extra":[{"text":"[USC] Please mute yourself, or leave your team call, or leave the game.","color":"gray"}]}
gamemode spectator @a[scores={spectate=1..}]
scoreboard players set @a[gamemode=spectator] spectate 0
#TODO remove isSpectating objective and replace with gamemode checks
scoreboard players set @a[gamemode=spectator] isSpectating 1
scoreboard players set @a[gamemode=!spectator] isSpectating 0
