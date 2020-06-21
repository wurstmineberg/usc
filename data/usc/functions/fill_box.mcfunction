# fill the usc box with bedrock
# 2 fill commands because of the max block limit
fill -18 0 -18 17 17 17 minecraft:bedrock
fill -18 18 -18 17 35 17 minecraft:bedrock
kill @e[type=!player,x=-18,dx=36,z=-18,dz=36,y=0,dy=36]
function usc:kill_box_entities
schedule function usc:kill_box_entities 1s
