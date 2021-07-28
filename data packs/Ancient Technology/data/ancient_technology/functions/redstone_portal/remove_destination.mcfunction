# SUMMON DROP
execute as @s at @s run summon item ~ ~0.5 ~ {Item:{id:"minecraft:light_weighted_pressure_plate",Count:1b}}
execute as @s at @s run summon item ~ ~0.5 ~ {Item:{id:"minecraft:redstone",Count:4b}}
# KILL BLOCK DROP
kill @e[type=item,nbt={Item:{id:"minecraft:stone_pressure_plate"}},distance=0..2,sort=nearest,limit=1]
# KILL ITEM FRAME
kill @s