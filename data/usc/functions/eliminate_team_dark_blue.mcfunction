gamemode spectator @a[team=dark_blue]
say dark_blue team eliminated!
scoreboard players set teamParticipatesDarkBlue variables 0
scoreboard players remove remainingTeams variables 1
execute if score remainingTeams variables matches 1 run function usc:end
