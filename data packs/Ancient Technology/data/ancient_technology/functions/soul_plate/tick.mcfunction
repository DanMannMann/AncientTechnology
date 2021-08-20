# place or remove any pending rs portals
execute as @e[type=minecraft:glow_item_frame,tag=soul_plate,tag=!placed] at @s run function ancient_technology:soul_plate/place

execute as @e[type=minecraft:glow_item_frame,tag=soul_plate,tag=placed] at @s unless block ~ ~ ~ stone_pressure_plate unless block ~ ~ ~ redstone_wire run function ancient_technology:soul_plate/remove

execute as @e[type=minecraft:glow_item_frame,tag=soul_plate,tag=placed] at @s if block ~ ~ ~ stone_pressure_plate run function ancient_technology:soul_plate/tick_plate
execute as @e[type=minecraft:glow_item_frame,tag=soul_plate,tag=placed] at @s if block ~ ~ ~ redstone_wire run function ancient_technology:soul_plate/tick_plate