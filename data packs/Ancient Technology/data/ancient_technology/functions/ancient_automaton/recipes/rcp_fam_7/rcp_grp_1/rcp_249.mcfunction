# Slot 1 check
execute as @s at @s if block ~-1 ~ ~-1 minecraft:dropper{Items:[{id:'minecraft:iron_ingot', Slot: 4b}]} store result score @s autoc_slot1 run data get block ~-1 ~ ~-1 Items[4].Count


# Slot 4 check
execute as @s at @s if block ~-1 ~0 ~0 minecraft:dropper{Items:[{id:'minecraft:stick', Slot: 4b}]} store result score @s autoc_slot4 run data get block ~-1 ~0 ~0 Items[4].Count


# Slot 7 check
execute as @s at @s if block ~-1 ~0 ~1 minecraft:dropper{Items:[{id:'minecraft:stick', Slot: 4b}]} store result score @s autoc_slot7 run data get block ~-1 ~0 ~1 Items[4].Count


