tellraw @a "Unenchanting Datapack Loaded Successfully!"

scoreboard objectives add ueing.enchantment_count dummy
scoreboard objectives add ueing.amethyst_count dummy
scoreboard objectives add ueing.minecart_count dummy
scoreboard objectives add unenchanting.repair_cost trigger
scoreboard objectives add ueing.repair_cost dummy

scoreboard players reset * ueing.enchantment_count
scoreboard players reset * ueing.amethyst_count
scoreboard players reset * ueing.minecart_count
scoreboard players reset * unenchanting.repair_cost
scoreboard players reset * ueing.repair_cost

team add ueing.no_collision

team modify ueing.no_collision collisionRule never
