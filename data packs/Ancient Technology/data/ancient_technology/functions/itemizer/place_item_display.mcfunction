execute if entity @s[y_rotation=45..135] run summon glow_item_frame ~ ~ ~ {Silent:1b,Facing:5b,Tags:["itemizer_item","placed", "west"],Invulnerable:1b,Fixed:1b,Invisible:1b,Item:{id:"minecraft:glow_item_frame", tag:{CustomModelData:95002}}}
execute if entity @s[y_rotation=136..225] run summon glow_item_frame ~ ~ ~ {Silent:1b,Facing:3b,Tags:["itemizer_item","placed", "north"],Invulnerable:1b,Fixed:1b,Invisible:1b,Item:{id:"minecraft:glow_item_frame", tag:{CustomModelData:95002}}}
execute if entity @s[y_rotation=226..315] run summon glow_item_frame ~ ~ ~ {Silent:1b,Facing:4b,Tags:["itemizer_item","placed", "east"],Invulnerable:1b,Fixed:1b,Invisible:1b,Item:{id:"minecraft:glow_item_frame", tag:{CustomModelData:95002}}}
execute if entity @s[y_rotation=316..360] run summon glow_item_frame ~ ~ ~ {Silent:1b,Facing:2b,Tags:["itemizer_item","placed", "south"],Invulnerable:1b,Fixed:1b,Invisible:1b,Item:{id:"minecraft:glow_item_frame", tag:{CustomModelData:95002}}}
execute if entity @s[y_rotation=0..44] run summon glow_item_frame ~ ~ ~ {Silent:1b,Facing:2b,Tags:["itemizer_item","placed", "south"],Invulnerable:1b,Fixed:1b,Invisible:1b,Item:{id:"minecraft:glow_item_frame", tag:{CustomModelData:95002}}}

execute if entity @s[y_rotation=45..135] run tag @e[type=glow_item_frame,tag=itemizer,distance=0..1,limit=1,sort=nearest] add west
execute if entity @s[y_rotation=136..225] run tag @e[type=glow_item_frame,tag=itemizer,distance=0..1,limit=1,sort=nearest] add north
execute if entity @s[y_rotation=226..315] run tag @e[type=glow_item_frame,tag=itemizer,distance=0..1,limit=1,sort=nearest] add east
execute if entity @s[y_rotation=316..360] run tag @e[type=glow_item_frame,tag=itemizer,distance=0..1,limit=1,sort=nearest] add south
execute if entity @s[y_rotation=0..44] run tag @e[type=glow_item_frame,tag=itemizer,distance=0..1,limit=1,sort=nearest] add south