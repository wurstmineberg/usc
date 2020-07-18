# called manually by the admin from ingame
gamemode creative @s
teleport @s 0 31 0
# make sure the lobby is fully loaded before running preparations
function usc:fill_lobby
schedule function usc:place_lobby 2s
schedule function usc:prep 3s
