gamemode spectator @a[team=green]
say green team eliminated!
scoreboard players set teamParticipatesGreen variables 0
scoreboard players remove remainingTeams variables 1
execute if score remainingTeams variables matches 1 run function usc:end
