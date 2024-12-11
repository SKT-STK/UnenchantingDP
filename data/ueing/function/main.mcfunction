execute as @e[type=marker,tag=ueing.no_minecarts] at @s run function ueing:spawn
tag @e[type=marker,tag=ueing.no_minecarts] remove ueing.no_minecarts

execute as @e[tag=ueing.marker] at @s run tp @n[tag=ueing.minecart_x1,distance=...1] ~.05 ~.1 ~
execute as @e[tag=ueing.marker] at @s run tp @n[tag=ueing.minecart_x-1,distance=...1] ~-.05 ~.1 ~
execute as @e[tag=ueing.marker] at @s run tp @n[tag=ueing.minecart_z1,distance=...1] ~ ~.1 ~.05
execute as @e[tag=ueing.marker] at @s run tp @n[tag=ueing.minecart_z-1,distance=...1] ~ ~.1 ~-.05

execute as @e[tag=ueing.marker] at @s store result score @s ueing.minecart_count if entity @e[tag=ueing.minecart,distance=...9]
execute as @e[tag=ueing.marker,scores={ueing.minecart_count=..3}] at @s run function ueing:kill

execute as @e[tag=ueing.minecart,tag=ueing.before] unless data entity @s Items[{Slot:3b}] run data modify entity @s Items append value {id:"minecraft:barrier",Slot:3b,components:{custom_data:{"ueing.barrier":true}}}
execute as @e[tag=ueing.minecart,tag=ueing.before] unless data entity @s Items[{Slot:4b}] run data modify entity @s Items append value {id:"minecraft:barrier",Slot:4b,components:{custom_data:{"ueing.barrier":true}}}

execute as @e[tag=ueing.minecart,tag=ueing.after] unless data entity @s Items[{Slot:0b}] run data modify entity @s Items append value {id:"minecraft:barrier",Slot:0b,components:{custom_data:{"ueing.barrier":true}}}
execute as @e[tag=ueing.minecart,tag=ueing.after] unless data entity @s Items[{Slot:1b}] run data modify entity @s Items append value {id:"minecraft:barrier",Slot:1b,components:{custom_data:{"ueing.barrier":true}}}
execute as @e[tag=ueing.minecart,tag=ueing.after,nbt=!{Items:[{id:"minecraft:amethyst_shard",Slot:2b}]}] run data modify entity @s Items append value {id:"minecraft:barrier",Slot:2b,components:{custom_data:{"ueing.barrier":true}}}

execute as @e[tag=ueing.minecart,nbt={Items:[{Slot:0b,components:{"minecraft:enchantments":{}}},{Slot:1b,id:"minecraft:writable_book"},{Slot:2b,id:"minecraft:amethyst_shard"}]},tag=ueing.before] at @s run function ueing:unenchant
execute as @e[tag=ueing.minecart,tag=ueing.after,nbt=!{Items:[{id:"minecraft:amethyst_shard",Slot:2b}]}] unless data entity @s Items[{Slot:3b}] unless data entity @s Items[{Slot:4b}] run function ueing:swap_tags_to_before


clear @a barrier[custom_data={"ueing.barrier":true}]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"ueing.barrier":true}}}}]
