tellraw @a "Unenchanting Datapack Loaded Successfully!"

scoreboard objectives add ueing.enchantment_count dummy
scoreboard objectives add ueing.amethyst_count dummy
scoreboard objectives add ueing.minecart_count dummy

scoreboard players reset * ueing.enchantment_count
scoreboard players reset * ueing.amethyst_count
scoreboard players reset * ueing.minecart_count

team add ueing.no_collision

team modify ueing.no_collision collisionRule never
