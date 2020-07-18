gamemode spectator @a[team=aqua]
tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"text":"aqua team","color":"aqua"},{"text":" eliminated!","color":"gold"}]}
scoreboard players set teamParticipatesAqua variables 0
scoreboard players remove remainingTeams variables 1
execute if score remainingTeams variables matches 1 run function usc:end
