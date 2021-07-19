# get all the counts
execute if data entity @s Item.tag.recipes[0].slot1 store result score @s forge_slot1_comp run data get block ~ ~ ~ Items[{Slot:6b}].Count
execute if data entity @s Item.tag.recipes[0].slot2 store result score @s forge_slot2_comp run data get block ~ ~ ~ Items[{Slot:7b}].Count
execute if data entity @s Item.tag.recipes[0].slot3 store result score @s forge_slot3_comp run data get block ~ ~ ~ Items[{Slot:8b}].Count
execute if data entity @s Item.tag.recipes[0].slot4 store result score @s forge_slot4_comp run data get block ~ ~ ~ Items[{Slot:15b}].Count
execute if data entity @s Item.tag.recipes[0].slot5 store result score @s forge_slot5_comp run data get block ~ ~ ~ Items[{Slot:16b}].Count
execute if data entity @s Item.tag.recipes[0].slot6 store result score @s forge_slot6_comp run data get block ~ ~ ~ Items[{Slot:17b}].Count
execute if data entity @s Item.tag.recipes[0].slot7 store result score @s forge_slot7_comp run data get block ~ ~ ~ Items[{Slot:24b}].Count
execute if data entity @s Item.tag.recipes[0].slot8 store result score @s forge_slot8_comp run data get block ~ ~ ~ Items[{Slot:25b}].Count
execute if data entity @s Item.tag.recipes[0].slot9 store result score @s forge_slot9_comp run data get block ~ ~ ~ Items[{Slot:26b}].Count

# find the lowest relevant count - that's how many results we can craft
scoreboard players set @s forge_slot_max -1
execute if data entity @s Item.tag.recipes[0].slot1 store result score @s forge_slot_max run scoreboard players get @s forge_slot1_comp
execute if data entity @s Item.tag.recipes[0].slot2 if score @s forge_slot_max matches -1 store result score @s forge_slot_max run scoreboard players get @s forge_slot2_comp
execute if data entity @s Item.tag.recipes[0].slot2 if score @s forge_slot2_comp < @s forge_slot_max store result score @s forge_slot_max run scoreboard players get @s forge_slot2_comp
execute if data entity @s Item.tag.recipes[0].slot3 if score @s forge_slot_max matches -1 store result score @s forge_slot_max run scoreboard players get @s forge_slot3_comp
execute if data entity @s Item.tag.recipes[0].slot3 if score @s forge_slot3_comp < @s forge_slot_max store result score @s forge_slot_max run scoreboard players get @s forge_slot3_comp
execute if data entity @s Item.tag.recipes[0].slot4 if score @s forge_slot_max matches -1 store result score @s forge_slot_max run scoreboard players get @s forge_slot4_comp
execute if data entity @s Item.tag.recipes[0].slot4 if score @s forge_slot4_comp < @s forge_slot_max store result score @s forge_slot_max run scoreboard players get @s forge_slot4_comp
execute if data entity @s Item.tag.recipes[0].slot5 if score @s forge_slot_max matches -1 store result score @s forge_slot_max run scoreboard players get @s forge_slot5_comp
execute if data entity @s Item.tag.recipes[0].slot5 if score @s forge_slot5_comp < @s forge_slot_max store result score @s forge_slot_max run scoreboard players get @s forge_slot5_comp
execute if data entity @s Item.tag.recipes[0].slot6 if score @s forge_slot_max matches -1 store result score @s forge_slot_max run scoreboard players get @s forge_slot6_comp
execute if data entity @s Item.tag.recipes[0].slot6 if score @s forge_slot6_comp < @s forge_slot_max store result score @s forge_slot_max run scoreboard players get @s forge_slot6_comp
execute if data entity @s Item.tag.recipes[0].slot7 if score @s forge_slot_max matches -1 store result score @s forge_slot_max run scoreboard players get @s forge_slot7_comp
execute if data entity @s Item.tag.recipes[0].slot7 if score @s forge_slot7_comp < @s forge_slot_max store result score @s forge_slot_max run scoreboard players get @s forge_slot7_comp
execute if data entity @s Item.tag.recipes[0].slot8 if score @s forge_slot_max matches -1 store result score @s forge_slot_max run scoreboard players get @s forge_slot8_comp
execute if data entity @s Item.tag.recipes[0].slot8 if score @s forge_slot8_comp < @s forge_slot_max store result score @s forge_slot_max run scoreboard players get @s forge_slot8_comp
execute if data entity @s Item.tag.recipes[0].slot9 if score @s forge_slot_max matches -1 store result score @s forge_slot_max run scoreboard players get @s forge_slot9_comp
execute if data entity @s Item.tag.recipes[0].slot9 if score @s forge_slot9_comp < @s forge_slot_max store result score @s forge_slot_max run scoreboard players get @s forge_slot9_comp

# get result calc_result_quantities
scoreboard players set @s forge_slot_used 0
scoreboard players set @s forge_result1 0
scoreboard players set @s forge_result2 0
scoreboard players set @s forge_result3 0
execute as @s at @s run function ancient_technology:ancient_forge/calc_result_quantities

execute unless score @s forge_slot_max = @s forge_slot_prev run function ancient_technology:ancient_forge/place_results