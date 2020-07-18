gamemode spectator @a[team=gray]
tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"text":"gray team","color":"gray"},{"text":" eliminated!","color":"gold"}]}
scoreboard players set teamParticipatesGray variables 0
scoreboard players remove remainingTeams variables 1
execute if score remainingTeams variables matches 1 run function usc:end
