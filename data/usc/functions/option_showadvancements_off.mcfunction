scoreboard players set showAdvancements variables 0
data modify storage usc:book OptionShowAdvancements set value "{\"text\":\"\",\"extra\":[{\"text\":\"• advancements in chat: \"},{\"text\":\"hidden\",\"bold\":true},{\"text\":\"/\"},{\"text\":\"shown\",\"color\":\"blue\",\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function usc:option_showadvancements_on\"}}]}"
tellraw @a {"text":"","extra":[{"text":"[USC] not showing advancements in chat","color":"gold"}]}
function usc:book
