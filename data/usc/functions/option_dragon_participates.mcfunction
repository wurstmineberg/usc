scoreboard players set enderDragonParticipates variables 1
data modify storage usc:book OptionDragon set value "{\"text\":\"\",\"extra\":[{\"text\":\"• Ender dragon's role: \"},{\"text\":\"ignored\",\"color\":\"blue\",\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function usc:option_dragon_ignored\"}},{\"text\":\"/\"},{\"text\":\"participates\",\"bold\":true}]}"
tellraw @a {"text":"","extra":[{"text":"[USC] playing against Ender dragon","color":"gold"}]}
function usc:book
