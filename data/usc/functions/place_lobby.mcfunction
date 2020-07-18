# place both lobbies, called from load.mcfunction
function usc:kill_lobby_entities
# pregame lobby
setblock -1 199 -1 minecraft:structure_block[mode="load"]{mode:"LOAD",name:"usc:lobby_pregame_nw",ignoreEntities:1b,posX:-16,posY:0,posZ:-16}
setblock 0 199 -1 minecraft:structure_block[mode="load"]{mode:"LOAD",name:"usc:lobby_pregame_ne",ignoreEntities:1b,posX:0,posY:0,posZ:-16}
setblock -1 199 0 minecraft:structure_block[mode="load"]{mode:"LOAD",name:"usc:lobby_pregame_sw",ignoreEntities:1b,posX:-16,posY:0,posZ:0}
setblock 0 199 0 minecraft:structure_block[mode="load"]{mode:"LOAD",name:"usc:lobby_pregame_se",ignoreEntities:1b,posX:0,posY:0,posZ:0}
fill -1 200 -1 0 200 0 minecraft:redstone_block
# game lobby
setblock -1 0 -1 minecraft:structure_block[mode="load"]{mode:"LOAD",name:"usc:lobby_game_nw",ignoreEntities:1b,posX:-17,posY:0,posZ:-17}
setblock 0 0 -1 minecraft:structure_block[mode="load"]{mode:"LOAD",name:"usc:lobby_game_ne",ignoreEntities:1b,posX:0,posY:0,posZ:-17}
setblock -1 0 0 minecraft:structure_block[mode="load"]{mode:"LOAD",name:"usc:lobby_game_sw",ignoreEntities:1b,posX:-17,posY:0,posZ:0}
setblock 0 0 0 minecraft:structure_block[mode="load"]{mode:"LOAD",name:"usc:lobby_game_se",ignoreEntities:1b,posX:0,posY:0,posZ:0}
fill -1 1 -1 0 1 0 minecraft:redstone_block
# kill entities again to get rid of drops
schedule function usc:kill_lobby_entities 1s
