gamemode spectator @a[team=gray]
say gray team eliminated!
scoreboard players set teamParticipatesGray variables 0
scoreboard players remove remainingTeams variables 1
execute if score remainingTeams variables matches 1 run function usc:end
