# called from the setup book to enable/disable the “Ender dragon participates” game option
# toggle the variable between 0 and 1
scoreboard players add enderDragonParticipates variables 1
execute if score enderDragonParticipates variables matches 2 run scoreboard players set enderDragonParticipates variables 0
# announce
execute if score enderDragonParticipates variables matches 1 run say playing against Ender dragon
execute unless score enderDragonParticipates variables matches 1 run say not playing against Ender dragon
