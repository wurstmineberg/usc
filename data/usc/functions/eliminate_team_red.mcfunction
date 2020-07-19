gamemode spectator @a[team=red]
tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"text":"red team","color":"red"},{"text":" eliminated!","color":"gold"}]}
scoreboard players set teamParticipatesRed variables 0
scoreboard players remove remainingTeams variables 1
