gamemode spectator @a[team=white]
tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"text":"white team","color":"white"},{"text":" eliminated!","color":"gold"}]}
scoreboard players set teamParticipatesWhite variables 0
scoreboard players remove remainingTeams variables 1
