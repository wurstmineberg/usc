gamemode spectator @a[team=dark_blue]
tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"text":"dark_blue team","color":"dark_blue"},{"text":" eliminated!","color":"gold"}]}
scoreboard players set teamParticipatesDarkBlue variables 0
scoreboard players remove remainingTeams variables 1
