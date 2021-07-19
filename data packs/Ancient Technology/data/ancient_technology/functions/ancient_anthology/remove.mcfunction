# SUMMON DROP
execute as @s at @s run summon item ~ ~0.5 ~ {Item:{id:"minecraft:iron_ingot",Count:3b}}
# KILL BLOCK DROP
kill @e[type=item,nbt={Item:{id:"minecraft:barrel"}},distance=0..2,sort=nearest,limit=1]
kill @e[type=item,nbt={Item:{tag:{tag:{GuiComponent: 1b}}}},distance=0..2]
# KILL ITEM FRAME
kill @s