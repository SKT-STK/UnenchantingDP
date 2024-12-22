execute unless data entity @s Items[{Slot:3b}] run data modify entity @s Items append value {id:"minecraft:barrier",Slot:3b,components:{custom_data:{"ueing.barrier":true},item_name:'""'}}
execute unless data entity @s Items[{Slot:4b}] run data modify entity @s Items append value {id:"minecraft:barrier",Slot:4b,components:{custom_data:{"ueing.barrier":true},item_name:'""'}}

execute if entity @s[nbt={Items:[{Slot:0b,components:{"minecraft:enchantments":{}}},{Slot:1b,id:"minecraft:writable_book"},{Slot:2b,id:"minecraft:amethyst_shard"}]}] at @s run function ueing:unenchant
