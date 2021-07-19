# SUMMON DROPS
execute as @s at @s run summon item ~ ~0.5 ~ {Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{display:{Name:'{"text":"Ancient Automaton"}'},CustomModelData:80085,EntityTag:{Silent:1b,Tags:["ancient_automaton"],Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:80085}},Invulnerable:1b,Invisible:1b,Fixed:1b}}}}

# KILL BLOCK DROP
kill @e[type=item,nbt={Item:{id:"minecraft:dropper"}},distance=0..2,sort=nearest,limit=1]
kill @e[type=item,nbt={Item:{tag:{tag:{GuiComponent: 1b}}}},distance=0..2,sort=nearest,limit=9]

# KILL ITEM FRAME
kill @s