gamemode spectator @a[team=dark_red]
tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"text":"dark_red team","color":"dark_red"},{"text":" eliminated!","color":"gold"}]}
scoreboard players set teamParticipatesDarkRed variables 0
scoreboard players remove remainingTeams variables 1
