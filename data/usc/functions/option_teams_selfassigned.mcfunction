# 0=solo, 1=Love at First Sight, 2=op-assigned teams, 3=self-assigned teams
scoreboard players set teamsMode variables 3
fill -16 200 -16 15 202 15 minecraft:air replace minecraft:glass
data modify storage usc:book OptionTeams set value "{\"text\":\"\",\"extra\":[{\"text\":\"• teams: \"},{\"text\":\"solo\",\"color\":\"blue\",\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function usc:option_teams_solo\"}},{\"text\":\"/\"},{\"text\":\"op-assigned\",\"color\":\"blue\",\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function usc:option_teams_opassigned\"}},{\"text\":\"/\"},{\"text\":\"self-assigned\",\"bold\":true},{\"text\":\"/\"},{\"text\":\"Love at First Sight\",\"color\":\"blue\",\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function usc:option_teams_lafs\"}}]}"
tellraw @a {"text":"","extra":[{"text":"[USC] playing in teams (join a team by walking into its lobby)","color":"gold"}]}
function usc:book
