# Slot 2 check
execute as @s at @s if block ~0 ~0 ~-1 minecraft:dropper{Items:[{id:'minecraft:amethyst_shard', Slot: 4b}]} store result score @s autoc_slot2 run data get block ~0 ~0 ~-1 Items[4].Count


# Slot 5 check
execute as @s at @s if block ~0 ~0 ~-0 minecraft:dropper{Items:[{id:'minecraft:copper_ingot', Slot: 4b}]} store result score @s autoc_slot5 run data get block ~0 ~0 ~-0 Items[4].Count


# Slot 8 check
execute as @s at @s if block ~0 ~-0 ~1 minecraft:dropper{Items:[{id:'minecraft:copper_ingot', Slot: 4b}]} store result score @s autoc_slot8 run data get block ~0 ~-0 ~1 Items[4].Count


