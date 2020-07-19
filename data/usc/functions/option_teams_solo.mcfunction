# 0=solo, 1=Love at First Sight, 2=op-assigned teams, 3=self-assigned teams
scoreboard players set teamsMode variables 0
function usc:add_lobby_walls
team leave @a
data modify storage usc:book OptionTeams set value "{\"text\":\"\",\"extra\":[{\"text\":\"• teams: \"},{\"text\":\"solo\",\"bold\":true},{\"text\":\"/\"},{\"text\":\"op-assigned\",\"color\":\"blue\",\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function usc:option_teams_opassigned\"}},{\"text\":\"/\"},{\"text\":\"self-assigned\",\"color\":\"blue\",\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function usc:option_teams_selfassigned\"}},{\"text\":\"/\"},{\"text\":\"Love at First Sight\",\"color\":\"blue\",\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function usc:option_teams_lafs\"}}]}"
tellraw @a {"text":"","extra":[{"text":"[USC] playing without teams","color":"gold"}]}
function usc:book
