# called by option_teams_*.mcfunction to rebuild the glass walls between lobbies when disabling self-assignable teams without resetting any team's ready state
setblock -13 200 -13 minecraft:structure_block[mode="load"]{mode:"LOAD",name:"usc:lobby_glass",ignoreEntities:1b,posX:-3,posY:0,posZ:-3}
setblock -13 201 -13 minecraft:redstone_block
