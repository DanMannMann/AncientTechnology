# place or remove any pending rs portals
execute as @e[type=minecraft:glow_item_frame,tag=redstone_destination,tag=!placed] at @s run function ancient_technology:redstone_portal/place_destination
execute as @e[type=minecraft:glow_item_frame,tag=redstone_source,tag=!placed] at @s run function ancient_technology:redstone_portal/place_source

execute as @e[type=minecraft:glow_item_frame,tag=redstone_destination,tag=placed] at @s unless block ~ ~ ~ stone_pressure_plate run function ancient_technology:redstone_portal/remove_destination
execute as @e[type=minecraft:glow_item_frame,tag=redstone_source,tag=placed] at @s unless block ~ ~ ~ redstone_wire run function ancient_technology:redstone_portal/remove_source

# check portals needing activation in a forge
execute as @e[type=minecraft:glow_item_frame,tag=ancient_forge,tag=rsp_crafted] at @s run function ancient_technology:redstone_portal/complete_craft