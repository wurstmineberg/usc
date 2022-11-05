gamemode spectator @a[team=dark_green]
tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"text":"Team Zucchini","color":"dark_green"},{"text":" eliminated!","color":"gold"}]}
scoreboard players set teamParticipatesDarkGreen variables 0
scoreboard players remove remainingTeams variables 1
