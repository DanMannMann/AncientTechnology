# check keys needing activation in a forge
execute as @e[type=minecraft:glow_item_frame,tag=ancient_forge,tag=sender_eye_crafted] at @s run function ancient_technology:sender_chest/complete_craft

# tick open chests
execute as @e[type=minecraft:glow_item_frame,tag=sender_chest,tag=placed] at @s if block ~ ~ ~ minecraft:barrel[open=true] run function ancient_technology:sender_chest/tick_open_chest

# place or remove any pending sender chests
execute as @e[type=minecraft:glow_item_frame,tag=sender_chest,tag=!placed] at @s run function ancient_technology:sender_chest/place
execute as @e[type=minecraft:glow_item_frame,tag=sender_chest,tag=placed] at @s unless block ~ ~ ~ minecraft:barrel run function ancient_technology:sender_chest/remove