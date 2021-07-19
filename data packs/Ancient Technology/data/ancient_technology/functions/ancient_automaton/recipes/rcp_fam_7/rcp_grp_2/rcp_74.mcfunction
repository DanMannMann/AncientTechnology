# Slot 1 check
execute as @s at @s if block ~-1 ~ ~-1 minecraft:dropper{Items:[{id:'minecraft:fishing_rod', Slot: 4b}]} store result score @s autoc_slot1 run data get block ~-1 ~ ~-1 Items[4].Count


# Slot 5 check
execute as @s at @s if block ~0 ~0 ~-0 minecraft:dropper{Items:[{id:'minecraft:carrot', Slot: 4b}]} store result score @s autoc_slot5 run data get block ~0 ~0 ~-0 Items[4].Count


