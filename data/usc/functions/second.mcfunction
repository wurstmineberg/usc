# Runs once every second.
execute if score started variables matches 0 run function usc:second_pregame
execute if score started variables matches 2 run function usc:second_game
# give players in lobby effects
effect give @a[gamemode=adventure] minecraft:resistance 10 9 true
effect give @a[gamemode=adventure] minecraft:saturation 10 9 true
effect give @a[gamemode=adventure] minecraft:regeneration 10 9 true
