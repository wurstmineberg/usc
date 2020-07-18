tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"text":"Team Glydia","color":"black"},{"text":" eliminated!","color":"gold"}]}
scoreboard players set enderDragonParticipates variables 0
scoreboard players remove remainingTeams variables 1
execute if score remainingTeams variables matches 1 run function usc:end
