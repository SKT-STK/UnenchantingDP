execute unless function ueing:check_barriers run return -1

execute store result score @s ueing.enchantment_count run data get entity @s Items[0].components."minecraft:enchantments".levels
execute store result score @s ueing.amethyst_count run data get entity @s Items[2].count

execute if score @s ueing.enchantment_count > @s ueing.amethyst_count run return -1

execute if entity @p[level=..1] run return -1

tag @s remove ueing.before

data modify entity @s Items[{Slot:4b}].id set value "minecraft:enchanted_book"
data modify entity @s Items[{Slot:4b}].components."minecraft:stored_enchantments" set from entity @s Items[{Slot:0b}].components."minecraft:enchantments"
data modify entity @s Items[{Slot:3b}].id set from entity @s Items[{Slot:0b}].id
data modify entity @s Items[{Slot:3b}].count set from entity @s Items[{Slot:0b}].count
data modify entity @s Items[{Slot:3b}].components set from entity @s Items[{Slot:0b}].components
data remove entity @s Items[{Slot:3b}].components."minecraft:enchantments".levels

scoreboard players operation @s ueing.amethyst_count -= @s ueing.enchantment_count
execute store result entity @s Items[{Slot:2b}].count byte 1 run scoreboard players get @s ueing.amethyst_count
data remove entity @s[scores={ueing.amethyst_count=0}] Items[{Slot:2b}]

data modify entity @s Items append value {id:"minecraft:barrier",Slot:0b,components:{custom_data:{"ueing.barrier":true}}}
data modify entity @s Items append value {id:"minecraft:barrier",Slot:1b,components:{custom_data:{"ueing.barrier":true}}}
data modify entity @s[nbt=!{Items:[{id:"minecraft:amethyst_shard",Slot:2b}]}] Items append value {id:"minecraft:barrier",Slot:2b,components:{custom_data:{"ueing.barrier":true}}}

tag @s add ueing.after

xp add @p -1 levels
playsound ueing:block.unenchanting_table.use block @a ~ ~ ~ 1
particle trial_spawner_detection ~ ~.7 ~ .5 0 .5 .001 100 normal
