# place or remove any pending miyagitron
execute as @e[type=minecraft:glow_item_frame,tag=miyagitron,tag=!placed] at @s run function ancient_technology:miyagitron/place
execute as @e[type=minecraft:glow_item_frame,tag=miyagitron,tag=placed] at @s unless block ~ ~ ~ minecraft:barrel run function ancient_technology:miyagitron/remove

# check blockers
function ancient_technology:miyagitron/check_blockers