scoreboard players set showAdvancements variables 1
data modify storage usc:book OptionShowAdvancements set value "{\"text\":\"\",\"extra\":[{\"text\":\"• advancements in chat: \"},{\"text\":\"hidden\",\"color\":\"blue\",\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function usc:option_showadvancements_off\"}},{\"text\":\"/\"},{\"text\":\"shown\",\"bold\":true}]}"
tellraw @a {"text":"","extra":[{"text":"[USC] showing advancements in chat","color":"gold"}]}
function usc:book
