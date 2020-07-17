gamemode spectator @a[team=blue]
say blue team eliminated!
scoreboard players set teamParticipatesBlue variables 0
scoreboard players remove remainingTeams variables 1
execute if score remainingTeams variables matches 1 run function usc:end
