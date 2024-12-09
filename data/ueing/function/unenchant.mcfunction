data modify entity @s Item.id set value "minecraft:enchanted_book"
data modify entity @s Item.components."minecraft:stored_enchantments" set from entity @n[tag=ueing.is_now_enchanted] Item.components."minecraft:enchantments"
data remove entity @n[tag=ueing.is_now_enchanted] Item.components."minecraft:enchantments"
kill @n[tag=ueing.to_be_killed]

particle minecraft:trial_spawner_detection ~ ~ ~ .2 0 .2 0.01 50 normal @a
playsound block.enchantment_table.use block @a ~ ~ ~ 1
