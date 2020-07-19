# 0=solo, 1=Love at First Sight, 2=op-assigned teams, 3=self-assigned teams
scoreboard players set teamsMode variables 1
function usc:add_lobby_walls
team leave @a
data modify storage usc:book OptionTeams set value "{\"text\":\"\",\"extra\":[{\"text\":\"• teams: \"},{\"text\":\"solo\",\"color\":\"blue\",\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function usc:option_teams_solo\"}},{\"text\":\"/\"},{\"text\":\"op-assigned\",\"color\":\"blue\",\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function usc:option_teams_opassigned\"}},{\"text\":\"/\"},{\"text\":\"self-assigned\",\"color\":\"blue\",\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function usc:option_teams_selfassigned\"}},{\"text\":\"/\"},{\"text\":\"Love at First Sight\",\"bold\":true}]}"
tellraw @a {"text":"","extra":[{"text":"[USC] playing in Love at First Sight mode","color":"gold"}]}
function usc:book
