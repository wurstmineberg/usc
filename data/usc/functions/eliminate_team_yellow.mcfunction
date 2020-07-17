gamemode spectator @a[team=yellow]
say yellow team eliminated!
scoreboard players set teamParticipatesYellow variables 0
scoreboard players remove remainingTeams variables 1
execute if score remainingTeams variables matches 1 run function usc:end
