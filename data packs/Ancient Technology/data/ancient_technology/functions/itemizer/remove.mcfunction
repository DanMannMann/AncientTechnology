# SUMMON DROP
# drop central if facing up
execute if entity @s[nbt={Facing:1b}] as @s at @s run summon item ~ ~0.5 ~ {Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{display:{Name:'{"text":"Itemizer"}'},CustomModelData:95001,EntityTag:{Silent:1b,Tags:["itemizer"],Invulnerable:1b,Fixed:1b,Invisible:1b,Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:95000, SelectedItem: {id: "minecraft:glow_item_frame", tag:{CustomModelData:95002}, Count: 1b}}}}}}}

# drop a bit north if facing north
execute if entity @s[nbt={Facing:2b}] as @s at @s run summon item ~ ~ ~-0.5 {Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{display:{Name:'{"text":"Itemizer"}'},CustomModelData:95001,EntityTag:{Silent:1b,Tags:["itemizer"],Invulnerable:1b,Fixed:1b,Invisible:1b,Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:95000, SelectedItem: {id: "minecraft:glow_item_frame", tag:{CustomModelData:95002}, Count: 1b}}}}}}}

# drop a bit south if facing south
execute if entity @s[nbt={Facing:3b}] as @s at @s run summon item ~ ~ ~0.5 {Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{display:{Name:'{"text":"Itemizer"}'},CustomModelData:95001,EntityTag:{Silent:1b,Tags:["itemizer"],Invulnerable:1b,Fixed:1b,Invisible:1b,Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:95000, SelectedItem: {id: "minecraft:glow_item_frame", tag:{CustomModelData:95002}, Count: 1b}}}}}}}

# drop a bit west if facing west
execute if entity @s[nbt={Facing:4b}] as @s at @s run summon item ~-0.5 ~ ~ {Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{display:{Name:'{"text":"Itemizer"}'},CustomModelData:95001,EntityTag:{Silent:1b,Tags:["itemizer"],Invulnerable:1b,Fixed:1b,Invisible:1b,Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:95000, SelectedItem: {id: "minecraft:glow_item_frame", tag:{CustomModelData:95002}, Count: 1b}}}}}}}

# drop a bit south if facing south
execute if entity @s[nbt={Facing:5b}] as @s at @s run summon item ~0.5 ~ ~ {Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{display:{Name:'{"text":"Itemizer"}'},CustomModelData:95001,EntityTag:{Silent:1b,Tags:["itemizer"],Invulnerable:1b,Fixed:1b,Invisible:1b,Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:95000, SelectedItem: {id: "minecraft:glow_item_frame", tag:{CustomModelData:95002}, Count: 1b}}}}}}}

# KILL BLOCK DROP
kill @e[type=item,nbt={Item:{id:"minecraft:heavy_weighted_pressure_plate"}},distance=0..2,sort=nearest,limit=1]

# KILL ITEM FRAMES
kill @e[type=glow_item_frame,sort=nearest,limit=1,tag=itemizer]
kill @e[type=glow_item_frame,sort=nearest,limit=1,tag=itemizer_item]