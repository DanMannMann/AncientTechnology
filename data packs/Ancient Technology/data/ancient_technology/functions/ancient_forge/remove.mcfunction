# SUMMON DROPS
summon item ~ ~0.5 ~ {Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{display:{Name:'{"text":"Ancient Forge"}'},CustomModelData:80080,EntityTag:{Silent:1b,Tags:["ancient_forge"],Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:80080}},Invulnerable:1b,Invisible:1b,Fixed:1b}}}}

# KILL BLOCK DROP
kill @e[type=item,nbt={Item:{id:"minecraft:barrel"}},distance=0..2,sort=nearest,limit=1]
kill @e[type=item,nbt={Item:{tag:{tag:{GuiComponent: 1b}}}},distance=0..2,sort=nearest,limit=27]

# KILL ITEM FRAME
kill @s