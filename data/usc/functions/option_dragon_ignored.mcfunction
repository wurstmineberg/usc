scoreboard players set enderDragonParticipates variables 0
data modify storage usc:book OptionDragon set value "{\"text\":\"\",\"extra\":[{\"text\":\"• Ender dragon's role: \"},{\"text\":\"ignored\",\"bold\":true},{\"text\":\"/\"},{\"text\":\"participates\",\"color\":\"blue\",\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function usc:option_dragon_participates\"}}]}"
tellraw @a {"text":"","extra":[{"text":"[USC] not playing against Ender dragon","color":"gold"}]}
function usc:book
