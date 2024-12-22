execute unless data entity @s Items[{Slot:0b}] run data modify entity @s Items append value {id:"minecraft:barrier",Slot:0b,components:{custom_data:{"ueing.barrier":true},item_name:'""'}}
execute unless data entity @s Items[{Slot:1b}] run data modify entity @s Items append value {id:"minecraft:barrier",Slot:1b,components:{custom_data:{"ueing.barrier":true},item_name:'""'}}
execute if entity @s[nbt=!{Items:[{id:"minecraft:amethyst_shard",Slot:2b}]}] run data modify entity @s Items append value {id:"minecraft:barrier",Slot:2b,components:{custom_data:{"ueing.barrier":true},item_name:'""'}}

execute unless data entity @s Items[{Slot:3b}] unless data entity @s Items[{Slot:4b}] run function ueing:swap_tags_to_before
