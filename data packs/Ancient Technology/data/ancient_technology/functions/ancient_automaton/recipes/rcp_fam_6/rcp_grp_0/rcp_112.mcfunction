# Slot 1 check
execute as @s at @s if block ~-1 ~ ~-1 minecraft:dropper{Items:[{id:'minecraft:crimson_planks', Slot: 4b}]} store result score @s autoc_slot1 run data get block ~-1 ~ ~-1 Items[4].Count


# Slot 2 check
execute as @s at @s if block ~0 ~0 ~-1 minecraft:dropper{Items:[{id:'minecraft:crimson_planks', Slot: 4b}]} store result score @s autoc_slot2 run data get block ~0 ~0 ~-1 Items[4].Count


