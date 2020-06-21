gamemode creative @s
teleport @s 0 31 0
# make sure the box is fully loaded before running preparations
function usc:fill_box
schedule function usc:place_box 2s
schedule function usc:prep 3s
