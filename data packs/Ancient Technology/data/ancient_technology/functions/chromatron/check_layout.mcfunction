execute as @s at @s if block ~0 ~0 ~-1 #minecraft:wool run tag @s add chroma_north
execute as @s at @s if entity @s[tag=chroma_north] run tag @s add installed_chroma
execute as @s at @s if entity @s[tag=chroma_north] run summon minecraft:glow_item_frame ~0 ~-0 ~-1 {Silent:1b, Facing: 1b, Tags:["chromatron"],Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:80089}},Invulnerable:1b,Invisible:1b,Fixed:1b}

execute as @s at @s if entity @s[tag=!installed_chroma] if block ~1 ~-0 ~0 #minecraft:wool run tag @s add chroma_east
execute as @s at @s if entity @s[tag=chroma_east] run tag @s add installed_chroma
execute as @s at @s if entity @s[tag=chroma_east] run summon minecraft:glow_item_frame ~1 ~-0 ~0 {Silent:1b, Facing: 1b, Tags:["chromatron"],Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:80089}},Invulnerable:1b,Invisible:1b,Fixed:1b}

execute as @s at @s if entity @s[tag=!installed_chroma] if block ~-0 ~0 ~1 #minecraft:wool run tag @s add chroma_south
execute as @s at @s if entity @s[tag=chroma_south] run tag @s add installed_chroma
execute as @s at @s if entity @s[tag=chroma_south] run summon minecraft:glow_item_frame ~0 ~-0 ~1 {Silent:1b, Facing: 1b, Tags:["chromatron"],Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:80089}},Invulnerable:1b,Invisible:1b,Fixed:1b}

execute as @s at @s if entity @s[tag=!installed_chroma] if block ~-1 ~0 ~0 #minecraft:wool run tag @s add chroma_west
execute as @s at @s if entity @s[tag=chroma_west] run tag @s add installed_chroma
execute as @s at @s if entity @s[tag=chroma_west] run summon minecraft:glow_item_frame ~-1 ~-0 ~0 {Silent:1b, Facing: 1b, Tags:["chromatron"],Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:80089}},Invulnerable:1b,Invisible:1b,Fixed:1b}

execute as @s at @s if entity @s[tag=installed_chroma] run setblock ~ ~ ~ minecraft:dropper{CustomName:"\"Tinting Automaton\""}
execute as @s at @s if entity @s[tag=installed_chroma] run function ancient_technology:chromatron/set_blockers

execute as @s at @s if entity @s[tag=installed_chroma] run playsound minecraft:block.metal.place block @a[distance=0..5] ~ ~ ~ 1 1.2 1
execute as @s at @s if entity @s[tag=installed_chroma] run particle minecraft:witch ~ ~ ~ 0 0 0 9 100