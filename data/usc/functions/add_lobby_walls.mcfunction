# called by option_teams_*.mcfunction to rebuild the glass walls between lobbies when disabling self-assignable teams without resetting any team's ready state
setblock -5464 200 104 minecraft:structure_block[mode="load"]{mode:"LOAD",name:"usc:lobby_glass",ignoreEntities:1b,posX:-3,posY:0,posZ:-3}
setblock -5464 201 104 minecraft:redstone_block
