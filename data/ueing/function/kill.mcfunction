setblock ~ ~ ~ air

kill @e[tag=ueing.minecart,distance=...9]

kill @n[type=item,nbt={Item:{id:"minecraft:hopper_minecart"},Age:0s}]
summon item ~ ~ ~ {Motion:[0.05d,0.3d,-0.05d],Item:{id:"minecraft:strider_spawn_egg",components:{entity_data:{id:"minecraft:marker",Tags:["ueing.marker","ueing.no_minecarts"]},item_name:'"Unenchanting Table"',item_model:"ueing:unenchanting_table"}}}

stopsound @a * minecraft:entity.player.attack.crit
stopsound @a * minecraft:entity.player.attack.knockback
stopsound @a * minecraft:entity.player.attack.nodamage
stopsound @a * minecraft:entity.player.attack.strong
stopsound @a * minecraft:entity.player.attack.sweep
stopsound @a * minecraft:entity.player.attack.weak
playsound minecraft:block.stone.break block @a ~ ~ ~ 1 0.8

kill @s
