execute as @s at @s if block ~0 ~0 ~-1 minecraft:honeycomb_block run tag @s add miyagi_north
execute as @s at @s if entity @s[tag=miyagi_north] run tag @s add installed_miyagi
execute as @s at @s if entity @s[tag=miyagi_north] run summon minecraft:glow_item_frame ~0 ~-0 ~-1 {Silent:1b, Facing: 1b, Tags:["miyagitron"],Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:80088}},Invulnerable:1b,Invisible:1b,Fixed:1b}

execute as @s at @s if entity @s[tag=!installed_miyagi] if block ~-1 ~0 ~0 minecraft:honeycomb_block run tag @s add miyagi_west
execute as @s at @s if entity @s[tag=miyagi_west] run tag @s add installed_miyagi
execute as @s at @s if entity @s[tag=miyagi_west] run summon minecraft:glow_item_frame ~-1 ~-0 ~0 {Silent:1b, Facing: 1b, Tags:["miyagitron"],Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:80088}},Invulnerable:1b,Invisible:1b,Fixed:1b}

execute as @s at @s if entity @s[tag=!installed_miyagi] if block ~1 ~-0 ~0 minecraft:honeycomb_block run tag @s add miyagi_east
execute as @s at @s if entity @s[tag=miyagi_east] run tag @s add installed_miyagi
execute as @s at @s if entity @s[tag=miyagi_east] run summon minecraft:glow_item_frame ~1 ~-0 ~0 {Silent:1b, Facing: 1b, Tags:["miyagitron"],Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:80088}},Invulnerable:1b,Invisible:1b,Fixed:1b}

execute as @s at @s if entity @s[tag=!installed_miyagi] if block ~-0 ~0 ~1 minecraft:honeycomb_block run tag @s add miyagi_south
execute as @s at @s if entity @s[tag=miyagi_south] run tag @s add installed_miyagi
execute as @s at @s if entity @s[tag=miyagi_south] run summon minecraft:glow_item_frame ~0 ~-0 ~1 {Silent:1b, Facing: 1b, Tags:["miyagitron"],Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:80088}},Invulnerable:1b,Invisible:1b,Fixed:1b}

execute as @s at @s if entity @s[tag=installed_miyagi] run setblock ~ ~ ~ minecraft:dropper{CustomName:"\"Waxing Automaton\""}
execute as @s at @s if entity @s[tag=installed_miyagi] run function ancient_technology:miyagitron/set_blockers

execute as @s at @s if entity @s[tag=installed_miyagi] run scoreboard players set @s miyagi_count 0
execute as @s at @s if entity @s[tag=installed_miyagi] run scoreboard players set @s miyagi_slot -1

execute as @s at @s if entity @s[tag=installed_miyagi] run playsound minecraft:block.metal.place block @a[distance=0..5] ~ ~ ~ 1 1.2 1
execute as @s at @s if entity @s[tag=installed_miyagi] run particle minecraft:wax_on ~ ~ ~ 0 0 0 9 100