gamemode spectator @a[team=dark_gray]
tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"text":"dark_gray team","color":"dark_gray"},{"text":" eliminated!","color":"gold"}]}
scoreboard players set teamParticipatesDarkGray variables 0
scoreboard players remove remainingTeams variables 1
execute if score remainingTeams variables matches 1 run function usc:end
