gamemode spectator @a[team=gold]
say gold team eliminated!
scoreboard players set teamParticipatesGold variables 0
scoreboard players remove remainingTeams variables 1
execute if score remainingTeams variables matches 1 run function usc:end
