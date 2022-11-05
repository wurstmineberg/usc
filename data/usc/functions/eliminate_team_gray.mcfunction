gamemode spectator @a[team=gray]
tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"text":"Team PdU","color":"gray"},{"text":" eliminated!","color":"gold"}]}
scoreboard players set teamParticipatesGray variables 0
scoreboard players remove remainingTeams variables 1
