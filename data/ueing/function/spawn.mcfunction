setblock ~ ~ ~ enchanting_table

summon hopper_minecart ~ ~ ~ {Tags:["ueing.minecart","ueing.minecart_x1","ueing.before"],Enabled:0b}
summon hopper_minecart ~ ~ ~ {Tags:["ueing.minecart","ueing.minecart_x-1","ueing.before"],Enabled:0b}
summon hopper_minecart ~ ~ ~ {Tags:["ueing.minecart","ueing.minecart_z1","ueing.before"],Enabled:0b}
summon hopper_minecart ~ ~ ~ {Tags:["ueing.minecart","ueing.minecart_z-1","ueing.before"],Enabled:0b}

team join ueing.no_collision @e[tag=ueing.minecart]

playsound minecraft:block.stone.place block @a ~ ~ ~ 1 0.8
