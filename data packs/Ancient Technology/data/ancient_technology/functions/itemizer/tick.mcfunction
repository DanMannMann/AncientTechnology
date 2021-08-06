# place or remove any pending
execute as @e[type=minecraft:glow_item_frame,tag=itemizer,tag=!placed] at @s run function ancient_technology:itemizer/place
execute as @e[type=minecraft:glow_item_frame,tag=itemizer,tag=placed] at @s unless block ~ ~ ~ heavy_weighted_pressure_plate run function ancient_technology:itemizer/remove
execute as @e[type=minecraft:glow_item_frame,tag=itemizer,tag=placed] at @s run function ancient_technology:itemizer/check_item_panel
execute as @e[type=minecraft:glow_item_frame,tag=itemizer_item] at @s run function ancient_technology:itemizer/check_orphaned_item_panel

execute as @e[type=minecraft:glow_item_frame,tag=itemizer,tag=placed] at @s if block ~ ~ ~ heavy_weighted_pressure_plate run function ancient_technology:itemizer/tick_itemizer