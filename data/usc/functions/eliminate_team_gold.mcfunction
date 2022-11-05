gamemode spectator @a[team=gold]
tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"text":"Team Acedia","color":"gold"},{"text":" eliminated!","color":"gold"}]}
scoreboard players set teamParticipatesGold variables 0
scoreboard players remove remainingTeams variables 1
