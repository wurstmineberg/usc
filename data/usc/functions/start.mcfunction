# called from second_pregame.mcfunction when game start has been unlocked, there are no teamless non-spectating players, and all non-empty teams are ready
scoreboard players set started variables 1
tellraw @a {"text":"","extra":[{"text":"[USC] The game will start in a few seconds. Don't move…","color":"gold"}]}
# update game settings
defaultgamemode spectator
setworldspawn -5451 2 117
setidletimeout 20
execute unless score showAdvancements variables matches 1 run gamerule announceAdvancements false
# update scoreboard
scoreboard objectives setdisplay sidebar respawnTimer
execute as @a[gamemode=adventure,team=] run scoreboard players add remainingTeams variables 1
execute if entity @p[gamemode=adventure,team=white] run scoreboard players set teamParticipatesWhite variables 1
execute if entity @p[gamemode=adventure,team=white] run scoreboard players add remainingTeams variables 1
execute if entity @p[gamemode=adventure,team=gold] run scoreboard players set teamParticipatesGold variables 1
execute if entity @p[gamemode=adventure,team=gold] run scoreboard players add remainingTeams variables 1
execute if entity @p[gamemode=adventure,team=light_purple] run scoreboard players set teamParticipatesLightPurple variables 1
execute if entity @p[gamemode=adventure,team=light_purple] run scoreboard players add remainingTeams variables 1
execute if entity @p[gamemode=adventure,team=aqua] run scoreboard players set teamParticipatesAqua variables 1
execute if entity @p[gamemode=adventure,team=aqua] run scoreboard players add remainingTeams variables 1
execute if entity @p[gamemode=adventure,team=yellow] run scoreboard players set teamParticipatesYellow variables 1
execute if entity @p[gamemode=adventure,team=yellow] run scoreboard players add remainingTeams variables 1
execute if entity @p[gamemode=adventure,team=green] run scoreboard players set teamParticipatesGreen variables 1
execute if entity @p[gamemode=adventure,team=green] run scoreboard players add remainingTeams variables 1
execute if entity @p[gamemode=adventure,team=blue] run scoreboard players set teamParticipatesBlue variables 1
execute if entity @p[gamemode=adventure,team=blue] run scoreboard players add remainingTeams variables 1
execute if entity @p[gamemode=adventure,team=dark_gray] run scoreboard players set teamParticipatesDarkGray variables 1
execute if entity @p[gamemode=adventure,team=dark_gray] run scoreboard players add remainingTeams variables 1
execute if entity @p[gamemode=adventure,team=gray] run scoreboard players set teamParticipatesGray variables 1
execute if entity @p[gamemode=adventure,team=gray] run scoreboard players add remainingTeams variables 1
execute if entity @p[gamemode=adventure,team=dark_aqua] run scoreboard players set teamParticipatesDarkAqua variables 1
execute if entity @p[gamemode=adventure,team=dark_aqua] run scoreboard players add remainingTeams variables 1
execute if entity @p[gamemode=adventure,team=dark_purple] run scoreboard players set teamParticipatesDarkPurple variables 1
execute if entity @p[gamemode=adventure,team=dark_purple] run scoreboard players add remainingTeams variables 1
execute if entity @p[gamemode=adventure,team=dark_blue] run scoreboard players set teamParticipatesDarkBlue variables 1
execute if entity @p[gamemode=adventure,team=dark_blue] run scoreboard players add remainingTeams variables 1
execute if entity @p[gamemode=adventure,team=dark_red] run scoreboard players set teamParticipatesDarkRed variables 1
execute if entity @p[gamemode=adventure,team=dark_red] run scoreboard players add remainingTeams variables 1
execute if entity @p[gamemode=adventure,team=dark_green] run scoreboard players set teamParticipatesDarkGreen variables 1
execute if entity @p[gamemode=adventure,team=dark_green] run scoreboard players add remainingTeams variables 1
execute if entity @p[gamemode=adventure,team=red] run scoreboard players set teamParticipatesRed variables 1
execute if entity @p[gamemode=adventure,team=red] run scoreboard players add remainingTeams variables 1
execute if entity @p[gamemode=adventure,team=black] run scoreboard players set teamParticipatesBlack variables 1
execute if entity @p[gamemode=adventure,team=black] run scoreboard players add remainingTeams variables 1
# effects to force players to wait until game start
effect give @a[gamemode=adventure] minecraft:blindness 10 9
effect give @a[gamemode=adventure] minecraft:invisibility 10 9
effect give @a[gamemode=adventure] minecraft:mining_fatigue 10 9
effect give @a[gamemode=adventure] minecraft:slowness 10 9
effect give @a[gamemode=adventure] minecraft:weakness 10 9
# set players to Survival and scatter them
gamemode survival @a[gamemode=adventure]
execute if score teamsMode variables matches 0..1 run spreadplayers 0 0 400 1300 false @a[gamemode=survival]
execute if score teamsMode variables matches 2..3 run spreadplayers -5451 117 9600 31200 false @a[gamemode=survival,team=white]
execute if score teamsMode variables matches 2..3 run spreadplayers -8192 16384 16 128 false @a[gamemode=survival,team=gold]
execute if score teamsMode variables matches 2..3 run spreadplayers -5451 117 9600 31200 false @a[gamemode=survival,team=light_purple]
execute if score teamsMode variables matches 2..3 run spreadplayers -128 -24832 32 256 false @a[gamemode=survival,team=aqua]
execute if score teamsMode variables matches 2..3 run spreadplayers -5451 117 9600 31200 false @a[gamemode=survival,team=yellow]
execute if score teamsMode variables matches 2..3 run spreadplayers -5451 117 9600 31200 false @a[gamemode=survival,team=green]
execute if score teamsMode variables matches 2..3 run spreadplayers -5451 117 9600 31200 false @a[gamemode=survival,team=blue]
execute if score teamsMode variables matches 2..3 run spreadplayers -5451 117 9600 31200 false @a[gamemode=survival,team=dark_gray]
execute if score teamsMode variables matches 2..3 run spreadplayers 0 0 256 2048 false @a[gamemode=survival,team=gray]
execute if score teamsMode variables matches 2..3 run spreadplayers -5451 117 9600 31200 false @a[gamemode=survival,team=dark_aqua]
execute if score teamsMode variables matches 2..3 run spreadplayers -5451 117 9600 31200 false @a[gamemode=survival,team=dark_purple]
execute if score teamsMode variables matches 2..3 run spreadplayers -5451 117 9600 31200 false @a[gamemode=survival,team=dark_blue]
execute if score teamsMode variables matches 2..3 run spreadplayers -8064 -32640 16 128 false @a[gamemode=survival,team=dark_red]
execute if score teamsMode variables matches 2..3 run spreadplayers -8704 -16384 128 1024 false @a[gamemode=survival,team=dark_green]
execute if score teamsMode variables matches 2..3 run spreadplayers -5451 117 9600 31200 false @a[gamemode=survival,team=red]
execute if score teamsMode variables matches 2..3 run spreadplayers -5451 117 9600 31200 false @a[gamemode=survival,team=black]
execute if score teamsMode variables matches 2..3 run spreadplayers -5451 117 9600 31200 false @a[gamemode=survival,team=]
# delete pregame lobby (in multiple steps to avoid item drops)
#TODO move lobby to Witch Hat
fill -17 199 -17 16 203 16 minecraft:air replace minecraft:oak_wall_sign
fill -17 199 -17 16 203 16 minecraft:air replace minecraft:lever
fill -17 199 -17 16 203 16 minecraft:air
# add Ender dragon to team count
execute if score enderDragonParticipates variables matches 1 run scoreboard players add remainingTeams variables 1
# clear everyone's inventories
clear @a
# wait 5 seconds for chunks to load etc before starting game timer and daylight/weather cycles
schedule function usc:start_delayed 5s
