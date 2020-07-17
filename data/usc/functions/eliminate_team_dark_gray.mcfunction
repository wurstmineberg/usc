gamemode spectator @a[team=dark_gray]
say dark_gray team eliminated!
scoreboard players set teamParticipatesDarkGray variables 0
scoreboard players remove remainingTeams variables 1
execute if score remainingTeams variables matches 1 run function usc:end
