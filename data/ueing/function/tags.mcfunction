tag @s add ueing.to_be_enchanted
tag @n[type=item,nbt={Item:{components:{"minecraft:enchantments":{}},count:1}},distance=...5] add ueing.is_now_enchanted
tag @n[type=item,nbt={Item:{id:"minecraft:amethyst_shard",count:2}},distance=...5] add ueing.to_be_killed

execute if entity @e[type=item,tag=ueing.is_now_enchanted] if entity @e[type=item,tag=ueing.to_be_killed] run function ueing:unenchant
tag @e remove ueing.to_be_enchanted
tag @e remove ueing.is_now_enchanted
tag @e remove ueing.to_be_killed
