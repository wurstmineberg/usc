# place both lobbies, called from load.mcfunction
function usc:kill_lobby_entities
# pregame lobby
setblock -5452 199 116 minecraft:structure_block[mode="load"]{mode:"LOAD",name:"usc:lobby_pregame",ignoreEntities:1b,posX:-16,posY:0,posZ:-16}
fill -5452 200 116 -5451 200 117 minecraft:redstone_block
# game lobby
setblock -5452 0 116 minecraft:structure_block[mode="load"]{mode:"LOAD",name:"usc:lobby_game",ignoreEntities:1b,posX:-17,posY:0,posZ:-17}
fill -5452 1 116 -5451 1 117 minecraft:redstone_block
# kill entities again to get rid of drops
schedule function usc:kill_lobby_entities 1s
