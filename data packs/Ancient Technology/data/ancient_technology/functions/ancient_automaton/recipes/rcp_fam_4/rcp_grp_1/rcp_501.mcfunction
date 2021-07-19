# Slot 1 check
execute as @s at @s if block ~-1 ~ ~-1 minecraft:dropper{Items:[{id:'minecraft:iron_ingot', Slot: 4b}]} store result score @s autoc_slot1 run data get block ~-1 ~ ~-1 Items[4].Count


# Slot 4 check
execute as @s at @s if block ~-1 ~0 ~0 minecraft:dropper{Items:[{id:'minecraft:stick', Slot: 4b}]} store result score @s autoc_slot4 run data get block ~-1 ~0 ~0 Items[4].Count


# Slot 7 check
execute as @s at @s if block ~-1 ~0 ~1 minecraft:dropper{Items:[{id:'minecraft:oak_planks', Slot: 4b}]} store result score @s autoc_slot7 run data get block ~-1 ~0 ~1 Items[4].Count
execute as @s at @s if block ~-1 ~0 ~1 minecraft:dropper{Items:[{id:'minecraft:spruce_planks', Slot: 4b}]} store result score @s autoc_slot7 run data get block ~-1 ~0 ~1 Items[4].Count
execute as @s at @s if block ~-1 ~0 ~1 minecraft:dropper{Items:[{id:'minecraft:birch_planks', Slot: 4b}]} store result score @s autoc_slot7 run data get block ~-1 ~0 ~1 Items[4].Count
execute as @s at @s if block ~-1 ~0 ~1 minecraft:dropper{Items:[{id:'minecraft:jungle_planks', Slot: 4b}]} store result score @s autoc_slot7 run data get block ~-1 ~0 ~1 Items[4].Count
execute as @s at @s if block ~-1 ~0 ~1 minecraft:dropper{Items:[{id:'minecraft:acacia_planks', Slot: 4b}]} store result score @s autoc_slot7 run data get block ~-1 ~0 ~1 Items[4].Count
execute as @s at @s if block ~-1 ~0 ~1 minecraft:dropper{Items:[{id:'minecraft:dark_oak_planks', Slot: 4b}]} store result score @s autoc_slot7 run data get block ~-1 ~0 ~1 Items[4].Count
execute as @s at @s if block ~-1 ~0 ~1 minecraft:dropper{Items:[{id:'minecraft:crimson_planks', Slot: 4b}]} store result score @s autoc_slot7 run data get block ~-1 ~0 ~1 Items[4].Count
execute as @s at @s if block ~-1 ~0 ~1 minecraft:dropper{Items:[{id:'minecraft:warped_planks', Slot: 4b}]} store result score @s autoc_slot7 run data get block ~-1 ~0 ~1 Items[4].Count


