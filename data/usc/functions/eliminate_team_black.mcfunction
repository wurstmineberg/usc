gamemode spectator @a[team=black]
say black team eliminated!
scoreboard players set teamParticipatesBlack variables 0
scoreboard players remove remainingTeams variables 1
execute if score remainingTeams variables matches 1 run function usc:end