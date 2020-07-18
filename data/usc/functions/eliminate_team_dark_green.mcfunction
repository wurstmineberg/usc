gamemode spectator @a[team=dark_green]
tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"text":"dark_green team","color":"dark_green"},{"text":" eliminated!","color":"gold"}]}
scoreboard players set teamParticipatesDarkGreen variables 0
scoreboard players remove remainingTeams variables 1
execute if score remainingTeams variables matches 1 run function usc:end
