# place and remove blocks
execute as @e[type=minecraft:glow_item_frame,tag=ancient_forge,tag=!placed] at @s run function ancient_technology:ancient_forge/place
execute as @e[type=minecraft:glow_item_frame,tag=ancient_forge,tag=placed] at @s unless block ~ ~ ~ minecraft:barrel run function ancient_technology:ancient_forge/remove

# handle GUI interactions
execute as @e[type=minecraft:glow_item_frame,tag=ancient_forge] at @s if block ~ ~ ~ minecraft:barrel[open=true] run function ancient_technology:ancient_forge/tick_gui