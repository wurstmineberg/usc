# Runs every tick.
# update respawn radius to stay inside the world border
execute if score gameTimer variables matches 0..23999 run spreadplayers 0 0 150 1300 true @a[gamemode=survival,x=-17,dx=34,y=1,dy=34,z=-17,dz=34]
execute if score gameTimer variables matches 24000..47999 run spreadplayers 0 0 150 1150 true @a[gamemode=survival,x=-17,dx=34,y=1,dy=34,z=-17,dz=34]
execute if score gameTimer variables matches 48000..71999 run spreadplayers 0 0 150 1000 true @a[gamemode=survival,x=-17,dx=34,y=1,dy=34,z=-17,dz=34]
execute if score gameTimer variables matches 72000..95999 run spreadplayers 0 0 150 850 true @a[gamemode=survival,x=-17,dx=34,y=1,dy=34,z=-17,dz=34]
execute if score gameTimer variables matches 96000..119999 run spreadplayers 0 0 150 700 true @a[gamemode=survival,x=-17,dx=34,y=1,dy=34,z=-17,dz=34]
execute if score gameTimer variables matches 120000..143999 run spreadplayers 0 0 150 550 true @a[gamemode=survival,x=-17,dx=34,y=1,dy=34,z=-17,dz=34]
execute if score gameTimer variables matches 144000..167999 run spreadplayers 0 0 150 400 true @a[gamemode=survival,x=-17,dx=34,y=1,dy=34,z=-17,dz=34]
execute if score gameTimer variables matches 168000..191999 run spreadplayers 0 0 150 250 true @a[gamemode=survival,x=-17,dx=34,y=1,dy=34,z=-17,dz=34]
execute if score gameTimer variables matches 192000..215999 run spreadplayers 0 0 150 150 true @a[gamemode=survival,x=-17,dx=34,y=1,dy=34,z=-17,dz=34]
execute if score gameTimer variables matches 216000.. run spreadplayers 0 0 150 100 true @a[gamemode=survival,x=-17,dx=34,y=1,dy=34,z=-17,dz=34]
