gamemode spectator @a[team=dark_red]
say dark_red team eliminated!
scoreboard players set teamParticipatesDarkRed variables 0
scoreboard players remove remainingTeams variables 1
execute if score remainingTeams variables matches 1 run function usc:end
