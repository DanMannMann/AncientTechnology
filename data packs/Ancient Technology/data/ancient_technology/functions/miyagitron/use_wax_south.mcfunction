# miyagi_slot matches -1 == no slot selected yet
# miyagi_count matches 1.. == the last slot should be selected

# try all slots of the south block
execute as @s at @s if score @s miyagi_slot matches -1 if block ~ ~ ~1 minecraft:barrel{Items:[{id:"minecraft:honeycomb", Slot: 0b}]} store result score @s miyagi_count run data get block ~ ~ ~1 Items[{Slot: 0b}].Count
execute as @s at @s if score @s miyagi_slot matches -1 if score @s miyagi_count matches 1.. run scoreboard players set @s miyagi_slot 0
execute as @s at @s if score @s miyagi_slot matches -1 if block ~ ~ ~1 minecraft:barrel{Items:[{id:"minecraft:honeycomb", Slot: 1b}]} store result score @s miyagi_count run data get block ~ ~ ~1 Items[{Slot: 1b}].Count
execute as @s at @s if score @s miyagi_slot matches -1 if score @s miyagi_count matches 1.. run scoreboard players set @s miyagi_slot 1
execute as @s at @s if score @s miyagi_slot matches -1 if block ~ ~ ~1 minecraft:barrel{Items:[{id:"minecraft:honeycomb", Slot: 2b}]} store result score @s miyagi_count run data get block ~ ~ ~1 Items[{Slot: 2b}].Count
execute as @s at @s if score @s miyagi_slot matches -1 if score @s miyagi_count matches 1.. run scoreboard players set @s miyagi_slot 2
execute as @s at @s if score @s miyagi_slot matches -1 if block ~ ~ ~1 minecraft:barrel{Items:[{id:"minecraft:honeycomb", Slot: 3b}]} store result score @s miyagi_count run data get block ~ ~ ~1 Items[{Slot: 3b}].Count
execute as @s at @s if score @s miyagi_slot matches -1 if score @s miyagi_count matches 1.. run scoreboard players set @s miyagi_slot 3
execute as @s at @s if score @s miyagi_slot matches -1 if block ~ ~ ~1 minecraft:barrel{Items:[{id:"minecraft:honeycomb", Slot: 4b}]} store result score @s miyagi_count run data get block ~ ~ ~1 Items[{Slot: 4b}].Count
execute as @s at @s if score @s miyagi_slot matches -1 if score @s miyagi_count matches 1.. run scoreboard players set @s miyagi_slot 4
execute as @s at @s if score @s miyagi_slot matches -1 if block ~ ~ ~1 minecraft:barrel{Items:[{id:"minecraft:honeycomb", Slot: 5b}]} store result score @s miyagi_count run data get block ~ ~ ~1 Items[{Slot: 5b}].Count
execute as @s at @s if score @s miyagi_slot matches -1 if score @s miyagi_count matches 1.. run scoreboard players set @s miyagi_slot 5
execute as @s at @s if score @s miyagi_slot matches -1 if block ~ ~ ~1 minecraft:barrel{Items:[{id:"minecraft:honeycomb", Slot: 6b}]} store result score @s miyagi_count run data get block ~ ~ ~1 Items[{Slot: 6b}].Count
execute as @s at @s if score @s miyagi_slot matches -1 if score @s miyagi_count matches 1.. run scoreboard players set @s miyagi_slot 6
execute as @s at @s if score @s miyagi_slot matches -1 if block ~ ~ ~1 minecraft:barrel{Items:[{id:"minecraft:honeycomb", Slot: 7b}]} store result score @s miyagi_count run data get block ~ ~ ~1 Items[{Slot: 7b}].Count
execute as @s at @s if score @s miyagi_slot matches -1 if score @s miyagi_count matches 1.. run scoreboard players set @s miyagi_slot 7
execute as @s at @s if score @s miyagi_slot matches -1 if block ~ ~ ~1 minecraft:barrel{Items:[{id:"minecraft:honeycomb", Slot: 8b}]} store result score @s miyagi_count run data get block ~ ~ ~1 Items[{Slot: 8b}].Count
execute as @s at @s if score @s miyagi_slot matches -1 if score @s miyagi_count matches 1.. run scoreboard players set @s miyagi_slot 8
execute as @s at @s if score @s miyagi_slot matches -1 if block ~ ~ ~1 minecraft:barrel{Items:[{id:"minecraft:honeycomb", Slot: 9b}]} store result score @s miyagi_count run data get block ~ ~ ~1 Items[{Slot: 9b}].Count
execute as @s at @s if score @s miyagi_slot matches -1 if score @s miyagi_count matches 1.. run scoreboard players set @s miyagi_slot 9
execute as @s at @s if score @s miyagi_slot matches -1 if block ~ ~ ~1 minecraft:barrel{Items:[{id:"minecraft:honeycomb", Slot: 10b}]} store result score @s miyagi_count run data get block ~ ~ ~1 Items[{Slot: 10b}].Count
execute as @s at @s if score @s miyagi_slot matches -1 if score @s miyagi_count matches 1.. run scoreboard players set @s miyagi_slot 10
execute as @s at @s if score @s miyagi_slot matches -1 if block ~ ~ ~1 minecraft:barrel{Items:[{id:"minecraft:honeycomb", Slot: 11b}]} store result score @s miyagi_count run data get block ~ ~ ~1 Items[{Slot: 11b}].Count
execute as @s at @s if score @s miyagi_slot matches -1 if score @s miyagi_count matches 1.. run scoreboard players set @s miyagi_slot 11
execute as @s at @s if score @s miyagi_slot matches -1 if block ~ ~ ~1 minecraft:barrel{Items:[{id:"minecraft:honeycomb", Slot: 12b}]} store result score @s miyagi_count run data get block ~ ~ ~1 Items[{Slot: 12b}].Count
execute as @s at @s if score @s miyagi_slot matches -1 if score @s miyagi_count matches 1.. run scoreboard players set @s miyagi_slot 12
execute as @s at @s if score @s miyagi_slot matches -1 if block ~ ~ ~1 minecraft:barrel{Items:[{id:"minecraft:honeycomb", Slot: 13b}]} store result score @s miyagi_count run data get block ~ ~ ~1 Items[{Slot: 13b}].Count
execute as @s at @s if score @s miyagi_slot matches -1 if score @s miyagi_count matches 1.. run scoreboard players set @s miyagi_slot 13
execute as @s at @s if score @s miyagi_slot matches -1 if block ~ ~ ~1 minecraft:barrel{Items:[{id:"minecraft:honeycomb", Slot: 14b}]} store result score @s miyagi_count run data get block ~ ~ ~1 Items[{Slot: 14b}].Count
execute as @s at @s if score @s miyagi_slot matches -1 if score @s miyagi_count matches 1.. run scoreboard players set @s miyagi_slot 14
execute as @s at @s if score @s miyagi_slot matches -1 if block ~ ~ ~1 minecraft:barrel{Items:[{id:"minecraft:honeycomb", Slot: 15b}]} store result score @s miyagi_count run data get block ~ ~ ~1 Items[{Slot: 15b}].Count
execute as @s at @s if score @s miyagi_slot matches -1 if score @s miyagi_count matches 1.. run scoreboard players set @s miyagi_slot 15
execute as @s at @s if score @s miyagi_slot matches -1 if block ~ ~ ~1 minecraft:barrel{Items:[{id:"minecraft:honeycomb", Slot: 16b}]} store result score @s miyagi_count run data get block ~ ~ ~1 Items[{Slot: 16b}].Count
execute as @s at @s if score @s miyagi_slot matches -1 if score @s miyagi_count matches 1.. run scoreboard players set @s miyagi_slot 16
execute as @s at @s if score @s miyagi_slot matches -1 if block ~ ~ ~1 minecraft:barrel{Items:[{id:"minecraft:honeycomb", Slot: 17b}]} store result score @s miyagi_count run data get block ~ ~ ~1 Items[{Slot: 17b}].Count
execute as @s at @s if score @s miyagi_slot matches -1 if score @s miyagi_count matches 1.. run scoreboard players set @s miyagi_slot 17
execute as @s at @s if score @s miyagi_slot matches -1 if block ~ ~ ~1 minecraft:barrel{Items:[{id:"minecraft:honeycomb", Slot: 18b}]} store result score @s miyagi_count run data get block ~ ~ ~1 Items[{Slot: 18b}].Count
execute as @s at @s if score @s miyagi_slot matches -1 if score @s miyagi_count matches 1.. run scoreboard players set @s miyagi_slot 18
execute as @s at @s if score @s miyagi_slot matches -1 if block ~ ~ ~1 minecraft:barrel{Items:[{id:"minecraft:honeycomb", Slot: 19b}]} store result score @s miyagi_count run data get block ~ ~ ~1 Items[{Slot: 19b}].Count
execute as @s at @s if score @s miyagi_slot matches -1 if score @s miyagi_count matches 1.. run scoreboard players set @s miyagi_slot 19
execute as @s at @s if score @s miyagi_slot matches -1 if block ~ ~ ~1 minecraft:barrel{Items:[{id:"minecraft:honeycomb", Slot: 20b}]} store result score @s miyagi_count run data get block ~ ~ ~1 Items[{Slot: 20b}].Count
execute as @s at @s if score @s miyagi_slot matches -1 if score @s miyagi_count matches 1.. run scoreboard players set @s miyagi_slot 20
execute as @s at @s if score @s miyagi_slot matches -1 if block ~ ~ ~1 minecraft:barrel{Items:[{id:"minecraft:honeycomb", Slot: 21b}]} store result score @s miyagi_count run data get block ~ ~ ~1 Items[{Slot: 21b}].Count
execute as @s at @s if score @s miyagi_slot matches -1 if score @s miyagi_count matches 1.. run scoreboard players set @s miyagi_slot 21
execute as @s at @s if score @s miyagi_slot matches -1 if block ~ ~ ~1 minecraft:barrel{Items:[{id:"minecraft:honeycomb", Slot: 22b}]} store result score @s miyagi_count run data get block ~ ~ ~1 Items[{Slot: 22b}].Count
execute as @s at @s if score @s miyagi_slot matches -1 if score @s miyagi_count matches 1.. run scoreboard players set @s miyagi_slot 22
execute as @s at @s if score @s miyagi_slot matches -1 if block ~ ~ ~1 minecraft:barrel{Items:[{id:"minecraft:honeycomb", Slot: 23b}]} store result score @s miyagi_count run data get block ~ ~ ~1 Items[{Slot: 23b}].Count
execute as @s at @s if score @s miyagi_slot matches -1 if score @s miyagi_count matches 1.. run scoreboard players set @s miyagi_slot 23
execute as @s at @s if score @s miyagi_slot matches -1 if block ~ ~ ~1 minecraft:barrel{Items:[{id:"minecraft:honeycomb", Slot: 24b}]} store result score @s miyagi_count run data get block ~ ~ ~1 Items[{Slot: 24b}].Count
execute as @s at @s if score @s miyagi_slot matches -1 if score @s miyagi_count matches 1.. run scoreboard players set @s miyagi_slot 24
execute as @s at @s if score @s miyagi_slot matches -1 if block ~ ~ ~1 minecraft:barrel{Items:[{id:"minecraft:honeycomb", Slot: 25b}]} store result score @s miyagi_count run data get block ~ ~ ~1 Items[{Slot: 25b}].Count
execute as @s at @s if score @s miyagi_slot matches -1 if score @s miyagi_count matches 1.. run scoreboard players set @s miyagi_slot 25
execute as @s at @s if score @s miyagi_slot matches -1 if block ~ ~ ~1 minecraft:barrel{Items:[{id:"minecraft:honeycomb", Slot: 26b}]} store result score @s miyagi_count run data get block ~ ~ ~1 Items[{Slot: 26b}].Count
execute as @s at @s if score @s miyagi_slot matches -1 if score @s miyagi_count matches 1.. run scoreboard players set @s miyagi_slot 26

# deduct one
scoreboard players remove @s miyagi_count 1

# apply the deduction
execute as @s at @s if score @s miyagi_slot matches 0 store result block ~ ~ ~1 Items[{Slot: 0b}].Count byte 1 run scoreboard players get @s miyagi_count
execute as @s at @s if score @s miyagi_slot matches 1 store result block ~ ~ ~1 Items[{Slot: 1b}].Count byte 1 run scoreboard players get @s miyagi_count
execute as @s at @s if score @s miyagi_slot matches 2 store result block ~ ~ ~1 Items[{Slot: 2b}].Count byte 1 run scoreboard players get @s miyagi_count
execute as @s at @s if score @s miyagi_slot matches 3 store result block ~ ~ ~1 Items[{Slot: 3b}].Count byte 1 run scoreboard players get @s miyagi_count
execute as @s at @s if score @s miyagi_slot matches 4 store result block ~ ~ ~1 Items[{Slot: 4b}].Count byte 1 run scoreboard players get @s miyagi_count
execute as @s at @s if score @s miyagi_slot matches 5 store result block ~ ~ ~1 Items[{Slot: 5b}].Count byte 1 run scoreboard players get @s miyagi_count
execute as @s at @s if score @s miyagi_slot matches 6 store result block ~ ~ ~1 Items[{Slot: 6b}].Count byte 1 run scoreboard players get @s miyagi_count
execute as @s at @s if score @s miyagi_slot matches 7 store result block ~ ~ ~1 Items[{Slot: 7b}].Count byte 1 run scoreboard players get @s miyagi_count
execute as @s at @s if score @s miyagi_slot matches 8 store result block ~ ~ ~1 Items[{Slot: 8b}].Count byte 1 run scoreboard players get @s miyagi_count
execute as @s at @s if score @s miyagi_slot matches 9 store result block ~ ~ ~1 Items[{Slot: 9b}].Count byte 1 run scoreboard players get @s miyagi_count
execute as @s at @s if score @s miyagi_slot matches 10 store result block ~ ~ ~1 Items[{Slot: 10b}].Count byte 1 run scoreboard players get @s miyagi_count
execute as @s at @s if score @s miyagi_slot matches 11 store result block ~ ~ ~1 Items[{Slot: 11b}].Count byte 1 run scoreboard players get @s miyagi_count
execute as @s at @s if score @s miyagi_slot matches 12 store result block ~ ~ ~1 Items[{Slot: 12b}].Count byte 1 run scoreboard players get @s miyagi_count
execute as @s at @s if score @s miyagi_slot matches 13 store result block ~ ~ ~1 Items[{Slot: 13b}].Count byte 1 run scoreboard players get @s miyagi_count
execute as @s at @s if score @s miyagi_slot matches 14 store result block ~ ~ ~1 Items[{Slot: 14b}].Count byte 1 run scoreboard players get @s miyagi_count
execute as @s at @s if score @s miyagi_slot matches 15 store result block ~ ~ ~1 Items[{Slot: 15b}].Count byte 1 run scoreboard players get @s miyagi_count
execute as @s at @s if score @s miyagi_slot matches 16 store result block ~ ~ ~1 Items[{Slot: 16b}].Count byte 1 run scoreboard players get @s miyagi_count
execute as @s at @s if score @s miyagi_slot matches 17 store result block ~ ~ ~1 Items[{Slot: 17b}].Count byte 1 run scoreboard players get @s miyagi_count
execute as @s at @s if score @s miyagi_slot matches 18 store result block ~ ~ ~1 Items[{Slot: 18b}].Count byte 1 run scoreboard players get @s miyagi_count
execute as @s at @s if score @s miyagi_slot matches 19 store result block ~ ~ ~1 Items[{Slot: 19b}].Count byte 1 run scoreboard players get @s miyagi_count
execute as @s at @s if score @s miyagi_slot matches 20 store result block ~ ~ ~1 Items[{Slot: 20b}].Count byte 1 run scoreboard players get @s miyagi_count
execute as @s at @s if score @s miyagi_slot matches 21 store result block ~ ~ ~1 Items[{Slot: 21b}].Count byte 1 run scoreboard players get @s miyagi_count
execute as @s at @s if score @s miyagi_slot matches 22 store result block ~ ~ ~1 Items[{Slot: 22b}].Count byte 1 run scoreboard players get @s miyagi_count
execute as @s at @s if score @s miyagi_slot matches 23 store result block ~ ~ ~1 Items[{Slot: 23b}].Count byte 1 run scoreboard players get @s miyagi_count
execute as @s at @s if score @s miyagi_slot matches 24 store result block ~ ~ ~1 Items[{Slot: 24b}].Count byte 1 run scoreboard players get @s miyagi_count
execute as @s at @s if score @s miyagi_slot matches 25 store result block ~ ~ ~1 Items[{Slot: 25b}].Count byte 1 run scoreboard players get @s miyagi_count
execute as @s at @s if score @s miyagi_slot matches 26 store result block ~ ~ ~1 Items[{Slot: 26b}].Count byte 1 run scoreboard players get @s miyagi_count


