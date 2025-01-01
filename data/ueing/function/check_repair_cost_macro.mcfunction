execute store result score @s ueing.repair_cost run data get entity @s SelectedItem.components."minecraft:repair_cost"
tellraw @s ["",{"text": "The repair cost of this item is: "},{"score": {"objective": "ueing.repair_cost","name": "@s"}}]
