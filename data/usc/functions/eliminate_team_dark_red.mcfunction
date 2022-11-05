gamemode spectator @a[team=dark_red]
tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"text":"Team Eldin","color":"dark_red"},{"text":" eliminated!","color":"gold"}]}
scoreboard players set teamParticipatesDarkRed variables 0
scoreboard players remove remainingTeams variables 1
