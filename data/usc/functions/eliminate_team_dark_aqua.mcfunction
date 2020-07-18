gamemode spectator @a[team=dark_aqua]
tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"text":"dark_aqua team","color":"dark_aqua"},{"text":" eliminated!","color":"gold"}]}
scoreboard players set teamParticipatesDarkAqua variables 0
scoreboard players remove remainingTeams variables 1
execute if score remainingTeams variables matches 1 run function usc:end
