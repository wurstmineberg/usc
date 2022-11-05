gamemode spectator @a[team=black]
tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"text":"Team Witch Hat","color":"black"},{"text":" eliminated!","color":"gold"}]}
scoreboard players set teamParticipatesBlack variables 0
scoreboard players remove remainingTeams variables 1
