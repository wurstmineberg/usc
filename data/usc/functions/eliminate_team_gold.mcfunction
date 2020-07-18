gamemode spectator @a[team=gold]
tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"text":"gold team","color":"gold"},{"text":" eliminated!","color":"gold"}]}
scoreboard players set teamParticipatesGold variables 0
scoreboard players remove remainingTeams variables 1
execute if score remainingTeams variables matches 1 run function usc:end
