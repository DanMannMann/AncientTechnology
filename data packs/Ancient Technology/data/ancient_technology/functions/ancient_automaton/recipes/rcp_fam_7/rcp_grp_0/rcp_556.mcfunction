# Slot 1 check
execute as @s at @s if block ~-1 ~ ~-1 minecraft:dropper{Items:[{id:'minecraft:beetroot', Slot: 4b}]} store result score @s autoc_slot1 run data get block ~-1 ~ ~-1 Items[4].Count
execute as @s at @s if block ~-1 ~ ~-1 minecraft:dropper{Items:[{id:'minecraft:poppy', Slot: 4b}]} store result score @s autoc_slot1 run data get block ~-1 ~ ~-1 Items[4].Count
execute as @s at @s if block ~-1 ~ ~-1 minecraft:dropper{Items:[{id:'minecraft:red_tulip', Slot: 4b}]} store result score @s autoc_slot1 run data get block ~-1 ~ ~-1 Items[4].Count


