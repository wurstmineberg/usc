# called by eliminate_team_*.mcfunction when only one team is remaining
scoreboard players set started variables 3
execute if score enderDragonParticipates variables matches 1 run tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"text":"Team Glydia","color":"black"},{"text":" wins!","color":"gold"}]}
execute if entity @p[team=white,gamemode=survival,scores={health=1..}] run tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"text":"white team","color":"white"},{"text":" wins!","color":"gold"}]}
execute if entity @p[team=gold,gamemode=survival,scores={health=1..}] run tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"text":"gold team","color":"gold"},{"text":" wins!","color":"gold"}]}
execute if entity @p[team=light_purple,gamemode=survival,scores={health=1..}] run tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"text":"light_purple team","color":"light_purple"},{"text":" wins!","color":"gold"}]}
execute if entity @p[team=aqua,gamemode=survival,scores={health=1..}] run tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"text":"aqua team","color":"aqua"},{"text":" wins!","color":"gold"}]}
execute if entity @p[team=yellow,gamemode=survival,scores={health=1..}] run tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"text":"yellow team","color":"yellow"},{"text":" wins!","color":"gold"}]}
execute if entity @p[team=green,gamemode=survival,scores={health=1..}] run tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"text":"green team","color":"green"},{"text":" wins!","color":"gold"}]}
execute if entity @p[team=blue,gamemode=survival,scores={health=1..}] run tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"text":"blue team","color":"blue"},{"text":" wins!","color":"gold"}]}
execute if entity @p[team=dark_gray,gamemode=survival,scores={health=1..}] run tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"text":"dark_gray team","color":"dark_gray"},{"text":" wins!","color":"gold"}]}
execute if entity @p[team=gray,gamemode=survival,scores={health=1..}] run tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"text":"gray team","color":"gray"},{"text":" wins!","color":"gold"}]}
execute if entity @p[team=dark_aqua,gamemode=survival,scores={health=1..}] run tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"text":"dark_aqua team","color":"dark_aqua"},{"text":" wins!","color":"gold"}]}
execute if entity @p[team=dark_purple,gamemode=survival,scores={health=1..}] run tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"text":"dark_purple team","color":"dark_purple"},{"text":" wins!","color":"gold"}]}
execute if entity @p[team=dark_blue,gamemode=survival,scores={health=1..}] run tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"text":"dark_blue team","color":"dark_blue"},{"text":" wins!","color":"gold"}]}
execute if entity @p[team=dark_red,gamemode=survival,scores={health=1..}] run tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"text":"dark_red team","color":"dark_red"},{"text":" wins!","color":"gold"}]}
execute if entity @p[team=dark_green,gamemode=survival,scores={health=1..}] run tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"text":"dark_green team","color":"dark_green"},{"text":" wins!","color":"gold"}]}
execute if entity @p[team=red,gamemode=survival,scores={health=1..}] run tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"text":"red team","color":"red"},{"text":" wins!","color":"gold"}]}
execute if entity @p[team=black,gamemode=survival,scores={health=1..}] run tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"text":"black team","color":"black"},{"text":" wins!","color":"gold"}]}
gamemode spectator @a
