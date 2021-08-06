# check for removed itemizer
execute unless entity @e[type=glow_item_frame,tag=itemizer,distance=0..1] as @s at @s run setblock ~ ~ ~ air
execute unless entity @e[type=glow_item_frame,tag=itemizer,distance=0..1] as @s run function ancient_technology:itemizer/remove