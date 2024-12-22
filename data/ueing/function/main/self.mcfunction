execute as @e[type=marker,tag=ueing.no_minecarts] at @s if entity @a[distance=..10] run function ueing:marker/spawn

execute as @e[tag=ueing.marker] at @s run function ueing:main/marker
execute as @e[tag=ueing.minecart,tag=ueing.before] run function ueing:main/before
execute as @e[tag=ueing.minecart,tag=ueing.after] run function ueing:main/after

clear @a barrier[custom_data={"ueing.barrier":true}]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"ueing.barrier":true}}}}]
