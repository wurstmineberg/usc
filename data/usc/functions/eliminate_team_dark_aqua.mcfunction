gamemode spectator @a[team=dark_aqua]
say dark_aqua team eliminated!
scoreboard players set teamParticipatesDarkAqua variables 0
scoreboard players remove remainingTeams variables 1
execute if score remainingTeams variables matches 1 run function usc:end
