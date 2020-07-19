gamemode spectator @a[team=blue]
tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"text":"blue team","color":"blue"},{"text":" eliminated!","color":"gold"}]}
scoreboard players set teamParticipatesBlue variables 0
scoreboard players remove remainingTeams variables 1
