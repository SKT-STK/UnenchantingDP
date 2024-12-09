execute on origin unless entity @s[level=1..] run return -1

data modify entity @s Item.id set value "minecraft:enchanted_book"
data modify entity @s Item.components."minecraft:stored_enchantments" set from entity @n[tag=ueing.is_now_enchanted] Item.components."minecraft:enchantments"
data remove entity @n[tag=ueing.is_now_enchanted] Item.components."minecraft:enchantments"
data modify entity @s Owner set from entity @s Thrower
execute as @n[tag=ueing.is_now_enchanted] run data modify entity @s Owner set from entity @s Thrower
kill @n[tag=ueing.to_be_killed]
execute on origin run xp add @s -1 levels

particle minecraft:trial_spawner_detection ~ ~ ~ .2 0 .2 0.01 50 normal @a
playsound block.enchantment_table.use block @a ~ ~ ~ 1
