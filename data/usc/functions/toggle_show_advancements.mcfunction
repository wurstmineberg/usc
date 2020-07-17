# called from the setup book to enable/disable the “show advancements in chat” game option
# toggle the variable between 0 and 1
scoreboard players add showAdvancements variables 1
execute if score showAdvancements variables matches 2 run scoreboard players set showAdvancements variables 0
# announce
execute if score showAdvancements variables matches 1 run say showing advancements in chat
execute unless score showAdvancements variables matches 1 run say not showing advancements in chat
