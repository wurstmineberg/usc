# Configures the Minecraft server to kick players who are idle for an in-game day.
# Implemented as a function rather than a command block because command blocks stopped being allowed to use this command at some point.
# Should simply be inlined into the game start function once that exists.
setidletimeout 20
