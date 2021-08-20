# SUMMON DROP
execute as @s at @s run summon item ~ ~0.5 ~ {Item:{id:"minecraft:glow_item_frame", Count: 1b, tag: {display:{Name:'{"text":"Soul Plate"}'},CustomModelData:96000,EntityTag:{Silent:1b,Tags:["soul_plate"],Invulnerable:1b,Fixed:1b,Invisible:1b,Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:96000,SelectedItem:{id:"minecraft:glow_item_frame",tag:{CustomModelData:96000},Count:1b}}}}}}}
# KILL BLOCK DROP
kill @e[type=item,nbt={Item:{id:"minecraft:redstone"}},distance=0..2,sort=nearest,limit=1]
kill @e[type=item,nbt={Item:{id:"minecraft:stone_pressure_plate"}},distance=0..2,sort=nearest,limit=1]
# KILL ITEM FRAME
kill @s