# called by eliminate_team_*.mcfunction when only one team is remaining
scoreboard players set started variables 3
execute if score enderDragonParticipates variables matches 1 run say Team Glydia wins!
execute if entity @p[team=white,gamemode=survival,scores={health=1..}] run say white team wins!
execute if entity @p[team=gold,gamemode=survival,scores={health=1..}] run say gold team wins!
execute if entity @p[team=light_purple,gamemode=survival,scores={health=1..}] run say light_purple team wins!
execute if entity @p[team=aqua,gamemode=survival,scores={health=1..}] run say aqua team wins!
execute if entity @p[team=yellow,gamemode=survival,scores={health=1..}] run say yellow team wins!
execute if entity @p[team=green,gamemode=survival,scores={health=1..}] run say green team wins!
execute if entity @p[team=blue,gamemode=survival,scores={health=1..}] run say blue team wins!
execute if entity @p[team=dark_gray,gamemode=survival,scores={health=1..}] run say dark_gray team wins!
execute if entity @p[team=gray,gamemode=survival,scores={health=1..}] run say gray team wins!
execute if entity @p[team=dark_aqua,gamemode=survival,scores={health=1..}] run say dark_aqua team wins!
execute if entity @p[team=dark_purple,gamemode=survival,scores={health=1..}] run say dark_purple team wins!
execute if entity @p[team=dark_blue,gamemode=survival,scores={health=1..}] run say dark_blue team wins!
execute if entity @p[team=dark_red,gamemode=survival,scores={health=1..}] run say dark_red team wins!
execute if entity @p[team=dark_green,gamemode=survival,scores={health=1..}] run say dark_green team wins!
execute if entity @p[team=red,gamemode=survival,scores={health=1..}] run say red team wins!
execute if entity @p[team=black,gamemode=survival,scores={health=1..}] run say black team wins!
gamemode spectator @a
