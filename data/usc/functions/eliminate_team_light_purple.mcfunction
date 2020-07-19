gamemode spectator @a[team=light_purple]
tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"text":"light_purple team","color":"light_purple"},{"text":" eliminated!","color":"gold"}]}
scoreboard players set teamParticipatesLightPurple variables 0
scoreboard players remove remainingTeams variables 1
