# TODO don't place if not attached to the SIDE of a container
# AS AT POSITION of custom item frame
execute if entity @s[nbt={Facing:1b}] as @s at @s run function ancient_technology:itemizer/place_integrated
execute unless entity @s[nbt={Facing:1b}] as @s at @s run function ancient_technology:itemizer/remove