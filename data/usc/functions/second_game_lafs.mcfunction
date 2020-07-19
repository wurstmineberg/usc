# Runs once every second but only after game start and only in Love at First Sight mode
execute as @a[gamemode=survival,team=] at @s if entity @p[distance=0.001..3,gamemode=survival,team=] run scoreboard players set @s lafsEligible 1
execute as @r[scores={lafsEligible=1}] at @s run scoreboard players set @p[scores={lafsEligible=1},limit=2] lafsChosen 1
execute if score initializedTeams variables matches 0 run team join dark_aqua @a[scores={lafsChosen=1}]
execute if entity @p[scores={lafsChosen=1},team=dark_aqua] run tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"selector":"@a[scores={lafsChosen=1},team=dark_aqua]"},{"text":" have formed the ","color":"gold"},{"text":"dark_aqua team","color":"dark_aqua"},{"text":"!","color":"gold"}]}
execute if score initializedTeams variables matches 1 run team join light_purple @a[scores={lafsChosen=1}]
execute if entity @p[scores={lafsChosen=1},team=light_purple] run tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"selector":"@a[scores={lafsChosen=1},team=light_purple]"},{"text":" have formed the ","color":"gold"},{"text":"light_purple team","color":"light_purple"},{"text":"!","color":"gold"}]}
execute if score initializedTeams variables matches 2 run team join green @a[scores={lafsChosen=1}]
execute if entity @p[scores={lafsChosen=1},team=green] run tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"selector":"@a[scores={lafsChosen=1},team=green]"},{"text":" have formed the ","color":"gold"},{"text":"green team","color":"green"},{"text":"!","color":"gold"}]}
execute if score initializedTeams variables matches 3 run team join red @a[scores={lafsChosen=1}]
execute if entity @p[scores={lafsChosen=1},team=red] run tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"selector":"@a[scores={lafsChosen=1},team=red]"},{"text":" have formed the ","color":"gold"},{"text":"red team","color":"red"},{"text":"!","color":"gold"}]}
execute if score initializedTeams variables matches 4 run team join yellow @a[scores={lafsChosen=1}]
execute if entity @p[scores={lafsChosen=1},team=yellow] run tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"selector":"@a[scores={lafsChosen=1},team=yellow]"},{"text":" have formed the ","color":"gold"},{"text":"yellow team","color":"yellow"},{"text":"!","color":"gold"}]}
execute if score initializedTeams variables matches 5 run team join gray @a[scores={lafsChosen=1}]
execute if entity @p[scores={lafsChosen=1},team=gray] run tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"selector":"@a[scores={lafsChosen=1},team=gray]"},{"text":" have formed the ","color":"gold"},{"text":"gray team","color":"gray"},{"text":"!","color":"gold"}]}
execute if score initializedTeams variables matches 6 run team join dark_blue @a[scores={lafsChosen=1}]
execute if entity @p[scores={lafsChosen=1},team=dark_blue] run tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"selector":"@a[scores={lafsChosen=1},team=dark_blue]"},{"text":" have formed the ","color":"gold"},{"text":"dark_blue team","color":"dark_blue"},{"text":"!","color":"gold"}]}
execute if score initializedTeams variables matches 7 run team join gold @a[scores={lafsChosen=1}]
execute if entity @p[scores={lafsChosen=1},team=gold] run tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"selector":"@a[scores={lafsChosen=1},team=gold]"},{"text":" have formed the ","color":"gold"},{"text":"gold team","color":"gold"},{"text":"!","color":"gold"}]}
execute if score initializedTeams variables matches 8 run team join dark_red @a[scores={lafsChosen=1}]
execute if entity @p[scores={lafsChosen=1},team=dark_red] run tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"selector":"@a[scores={lafsChosen=1},team=dark_red]"},{"text":" have formed the ","color":"gold"},{"text":"dark_red team","color":"dark_red"},{"text":"!","color":"gold"}]}
execute if score initializedTeams variables matches 9 run team join dark_green @a[scores={lafsChosen=1}]
execute if entity @p[scores={lafsChosen=1},team=dark_green] run tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"selector":"@a[scores={lafsChosen=1},team=dark_green]"},{"text":" have formed the ","color":"gold"},{"text":"dark_green team","color":"dark_green"},{"text":"!","color":"gold"}]}
execute if score initializedTeams variables matches 10 run team join aqua @a[scores={lafsChosen=1}]
execute if entity @p[scores={lafsChosen=1},team=aqua] run tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"selector":"@a[scores={lafsChosen=1},team=aqua]"},{"text":" have formed the ","color":"gold"},{"text":"aqua team","color":"aqua"},{"text":"!","color":"gold"}]}
execute if score initializedTeams variables matches 11 run team join dark_gray @a[scores={lafsChosen=1}]
execute if entity @p[scores={lafsChosen=1},team=dark_gray] run tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"selector":"@a[scores={lafsChosen=1},team=dark_gray]"},{"text":" have formed the ","color":"gold"},{"text":"dark_gray team","color":"dark_gray"},{"text":"!","color":"gold"}]}
execute if score initializedTeams variables matches 12 run team join dark_purple @a[scores={lafsChosen=1}]
execute if entity @p[scores={lafsChosen=1},team=dark_purple] run tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"selector":"@a[scores={lafsChosen=1},team=dark_purple]"},{"text":" have formed the ","color":"gold"},{"text":"dark_purple team","color":"dark_purple"},{"text":"!","color":"gold"}]}
execute if score initializedTeams variables matches 13 run team join blue @a[scores={lafsChosen=1}]
execute if entity @p[scores={lafsChosen=1},team=blue] run tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"selector":"@a[scores={lafsChosen=1},team=blue]"},{"text":" have formed the ","color":"gold"},{"text":"blue team","color":"blue"},{"text":"!","color":"gold"}]}
execute if score initializedTeams variables matches 14 run team join black @a[scores={lafsChosen=1}]
execute if entity @p[scores={lafsChosen=1},team=black] run tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"selector":"@a[scores={lafsChosen=1},team=black]"},{"text":" have formed the ","color":"gold"},{"text":"black team","color":"black"},{"text":"!","color":"gold"}]}
execute if score initializedTeams variables matches 15 run team join white @a[scores={lafsChosen=1}]
execute if entity @p[scores={lafsChosen=1},team=white] run tellraw @a {"text":"","extra":[{"text":"[USC] ","color":"gold"},{"selector":"@a[scores={lafsChosen=1},team=white]"},{"text":" have formed the ","color":"gold"},{"text":"white team","color":"white"},{"text":"!","color":"gold"}]}
execute if entity @p[scores={lafsChosen=1}] run scoreboard players remove remainingTeams variables 1
execute if entity @p[scores={lafsChosen=1}] run scoreboard players add initializedTeams variables 1
scoreboard players set @a lafsEligible 0
scoreboard players set @a lafsChosen 0
