gamemode spectator @a[team=red]
say red team eliminated!
scoreboard players set teamParticipatesRed variables 0
scoreboard players remove remainingTeams variables 1
execute if score remainingTeams variables matches 1 run function usc:end