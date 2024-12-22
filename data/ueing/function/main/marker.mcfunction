tp @n[tag=ueing.minecart_x1,distance=...1] ~.05 ~.1 ~
tp @n[tag=ueing.minecart_x-1,distance=...1] ~-.05 ~.1 ~
tp @n[tag=ueing.minecart_z1,distance=...1] ~ ~.1 ~.05
tp @n[tag=ueing.minecart_z-1,distance=...1] ~ ~.1 ~-.05

execute store result score @s ueing.minecart_count if entity @e[tag=ueing.minecart,distance=...9]
execute if entity @s[scores={ueing.minecart_count=..3},tag=!ueing.player_away] run function ueing:marker/kill
execute if entity @s[scores={ueing.minecart_count=4},tag=!ueing.player_away] unless block ~ ~ ~ enchanting_table run function ueing:marker/kill

execute unless entity @a[distance=..10] run function ueing:marker/despawn
