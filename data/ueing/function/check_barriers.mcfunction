execute if entity @s[tag=ueing.before,nbt={Items:[{id:"minecraft:barrier",Slot:3b},{id:"minecraft:barrier",Slot:4b}]}] run return 1
execute if entity @s[tag=ueing.after,nbt={Items:[{id:"minecraft:barrier",Slot:0b},{id:"minecraft:barrier",Slot:1b},{id:"minecraft:barrier",Slot:2b}]}] run return 1
return fail
