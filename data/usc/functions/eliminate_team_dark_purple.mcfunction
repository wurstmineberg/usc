gamemode spectator @a[team=dark_purple]
say dark_purple team eliminated!
scoreboard players set teamParticipatesDarkPurple variables 0
scoreboard players remove remainingTeams variables 1
execute if score remainingTeams variables matches 1 run function usc:end
