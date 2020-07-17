gamemode spectator @a[team=white]
say white team eliminated!
scoreboard players set teamParticipatesWhite variables 0
scoreboard players remove remainingTeams variables 1
execute if score remainingTeams variables matches 1 run function usc:end
