# called from the setup book to enable/disable the “Ender dragon participates” game option
# toggle the variable between 0 and 1
scoreboard players add enderDragonParticipates variables 1
execute if score enderDragonParticipates variables matches 2 run scoreboard players set enderDragonParticipates variables 0
# announce
execute if score enderDragonParticipates variables matches 1 run tellraw @a {"text":"","extra":[{"text":"[USC] playing against Ender dragon","color":"gold"}]}
execute unless score enderDragonParticipates variables matches 1 run tellraw @a {"text":"","extra":[{"text":"[USC] not playing against Ender dragon","color":"gold"}]}
