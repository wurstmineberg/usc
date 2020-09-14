# place both lobbies, called from load.mcfunction
function usc:kill_lobby_entities
# pregame lobby
setblock -1 199 -1 minecraft:structure_block[mode="load"]{mode:"LOAD",name:"usc:lobby_pregame",ignoreEntities:1b,posX:-16,posY:0,posZ:-16}
fill -1 200 -1 0 200 0 minecraft:redstone_block
# game lobby
setblock -1 0 -1 minecraft:structure_block[mode="load"]{mode:"LOAD",name:"usc:lobby_game",ignoreEntities:1b,posX:-17,posY:0,posZ:-17}
fill -1 1 -1 0 1 0 minecraft:redstone_block
# kill entities again to get rid of drops
schedule function usc:kill_lobby_entities 1s
