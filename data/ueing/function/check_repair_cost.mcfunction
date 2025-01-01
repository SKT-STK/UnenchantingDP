scoreboard players reset @s unenchanting.repair_cost

execute unless data entity @s SelectedItem.components."minecraft:repair_cost" run tellraw @s "There is no repair cost on this item!"
execute if data entity @s SelectedItem.components."minecraft:repair_cost" run function ueing:check_repair_cost_macro
