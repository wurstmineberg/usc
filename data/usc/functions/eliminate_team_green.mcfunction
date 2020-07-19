gamemode spectator @a[team=green]
tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"text":"green team","color":"green"},{"text":" eliminated!","color":"gold"}]}
scoreboard players set teamParticipatesGreen variables 0
scoreboard players remove remainingTeams variables 1
