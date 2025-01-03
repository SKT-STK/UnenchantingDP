setblock ~ ~ ~ enchanting_table

summon hopper_minecart ~ ~ ~ {Tags:["ueing.minecart","ueing.minecart_x1","ueing.before","invisible_minecart"],Enabled:0b,CustomName:'"Unenchant"',CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"}}
summon hopper_minecart ~ ~ ~ {Tags:["ueing.minecart","ueing.minecart_x-1","ueing.before","invisible_minecart"],Enabled:0b,CustomName:'"Unenchant"',CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"}}
summon hopper_minecart ~ ~ ~ {Tags:["ueing.minecart","ueing.minecart_z1","ueing.before","invisible_minecart"],Enabled:0b,CustomName:'"Unenchant"',CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"}}
summon hopper_minecart ~ ~ ~ {Tags:["ueing.minecart","ueing.minecart_z-1","ueing.before","invisible_minecart"],Enabled:0b,CustomName:'"Unenchant"',CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"}}
execute unless entity @s[tag=ueing.has_model] run summon armor_stand ~ ~ ~ {Tags:["ueing.model"],Small:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:dirt",components:{item_model:"ueing:unenchanting_table"}}]}

team join ueing.no_collision @e[tag=ueing.minecart]

execute unless entity @s[tag=ueing.player_away] run playsound minecraft:block.stone.place block @a ~ ~ ~ 1 0.8

tag @s remove ueing.no_minecarts
tag @s remove ueing.player_away
tag @s add ueing.has_model
