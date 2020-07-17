gamemode spectator @a[team=light_purple]
say light_purple team eliminated!
scoreboard players set teamParticipatesLightPurple variables 0
scoreboard players remove remainingTeams variables 1
execute if score remainingTeams variables matches 1 run function usc:end
