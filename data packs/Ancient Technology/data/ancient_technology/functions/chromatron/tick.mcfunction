# place or remove any pending chromatron
execute as @e[type=minecraft:glow_item_frame,tag=chromatron,tag=!placed] at @s run function ancient_technology:chromatron/place
execute as @e[type=minecraft:glow_item_frame,tag=chromatron,tag=placed] at @s unless block ~ ~ ~ minecraft:dropper run function ancient_technology:chromatron/remove

# check blockers
function ancient_technology:chromatron/check_blockers
