# SUMMON DROP
execute as @s at @s run summon item ~ ~0.5 ~ {Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{display:{Name:'{"text":"Sender Chest"}'},CustomModelData:80090,EntityTag:{Silent:1b,Tags:["sender_chest"],Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:80090}},Invulnerable:1b,Invisible:1b,Fixed:1b}}}}
# KILL BLOCK DROP
kill @e[type=item,nbt={Item:{id:"minecraft:barrel"}},distance=0..2,sort=nearest,limit=1]
# KILL ITEM FRAME
kill @s