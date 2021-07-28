# place or remove any pending
execute as @e[type=minecraft:glow_item_frame,tag=ancient_anthology,tag=!placed] at @s run function ancient_technology:ancient_anthology/place
execute as @e[type=minecraft:glow_item_frame,tag=ancient_anthology,tag=placed,tag=!anthology_full] at @s unless block ~ ~ ~ minecraft:barrel run function ancient_technology:ancient_anthology/remove
execute as @e[type=minecraft:glow_item_frame,tag=ancient_anthology,tag=placed,tag=anthology_full] at @s unless block ~ ~ ~ minecraft:barrel run function ancient_technology:ancient_anthology/remove_silk

# check blockers
execute as @e[type=minecraft:glow_item_frame,tag=ancient_anthology,tag=placed] at @s if block ~ ~ ~ minecraft:barrel[open=true] run function ancient_technology:ancient_anthology/set_blockers