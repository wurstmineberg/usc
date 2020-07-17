gamemode spectator @a[team=aqua]
say aqua team eliminated!
scoreboard players set teamParticipatesAqua variables 0
scoreboard players remove remainingTeams variables 1
execute if score remainingTeams variables matches 1 run function usc:end
