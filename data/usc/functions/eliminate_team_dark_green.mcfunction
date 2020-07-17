gamemode spectator @a[team=dark_green]
say dark_green team eliminated!
scoreboard players set teamParticipatesDarkGreen variables 0
scoreboard players remove remainingTeams variables 1
execute if score remainingTeams variables matches 1 run function usc:end
