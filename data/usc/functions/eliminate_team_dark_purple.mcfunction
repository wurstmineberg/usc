gamemode spectator @a[team=dark_purple]
tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"text":"dark_purple team","color":"dark_purple"},{"text":" eliminated!","color":"gold"}]}
scoreboard players set teamParticipatesDarkPurple variables 0
scoreboard players remove remainingTeams variables 1
