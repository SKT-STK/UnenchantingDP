setblock ~ ~ ~ enchanting_table

summon hopper_minecart ~ ~ ~ {Tags:["ueing.minecart","ueing.minecart_x1","ueing.before"],Enabled:0b,CustomName:'"Unenchant"'}
summon hopper_minecart ~ ~ ~ {Tags:["ueing.minecart","ueing.minecart_x-1","ueing.before"],Enabled:0b,CustomName:'"Unenchant"'}
summon hopper_minecart ~ ~ ~ {Tags:["ueing.minecart","ueing.minecart_z1","ueing.before"],Enabled:0b,CustomName:'"Unenchant"'}
summon hopper_minecart ~ ~ ~ {Tags:["ueing.minecart","ueing.minecart_z-1","ueing.before"],Enabled:0b,CustomName:'"Unenchant"'}

team join ueing.no_collision @e[tag=ueing.minecart]

execute unless entity @s[tag=ueing.player_away] run playsound minecraft:block.stone.place block @a ~ ~ ~ 1 0.8

tag @s remove ueing.no_minecarts
tag @s remove ueing.player_away
