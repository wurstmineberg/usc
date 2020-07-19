gamemode spectator @a[team=yellow]
tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"text":"yellow team","color":"yellow"},{"text":" eliminated!","color":"gold"}]}
scoreboard players set teamParticipatesYellow variables 0
scoreboard players remove remainingTeams variables 1
