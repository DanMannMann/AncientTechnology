# TODO
# convert checks to a function chain so it short-circuits when not complete
scoreboard players set @s forge_result1 0
scoreboard players set @s forge_result2 0
scoreboard players set @s forge_result3 0
scoreboard players set @s forge_changed 0
execute unless data block ~ ~ ~ Items[{Slot:4b, tag:{tag:{GuiComponent:1b}}}] store result score @s forge_result1 run data get block ~ ~ ~ Items[{Slot:4b}].Count
execute unless data block ~ ~ ~ Items[{Slot:13b, tag:{tag:{GuiComponent:1b}}}] store result score @s forge_result2 run data get block ~ ~ ~ Items[{Slot:13b}].Count
execute unless data block ~ ~ ~ Items[{Slot:22b, tag:{tag:{GuiComponent:1b}}}] store result score @s forge_result3 run data get block ~ ~ ~ Items[{Slot:22b}].Count
execute if score @s forge_result1 < @s forge_result1_pv run scoreboard players set @s forge_changed 1
execute if score @s forge_result2 < @s forge_result2_pv run scoreboard players set @s forge_changed 1
execute if score @s forge_result3 < @s forge_result3_pv run scoreboard players set @s forge_changed 1
execute if score @s forge_changed matches 1 run function ancient_technology:ancient_forge/deduct_craft

# check slots
function ancient_technology:ancient_forge/check_slot/slot1/check
function ancient_technology:ancient_forge/check_slot/slot2/check
function ancient_technology:ancient_forge/check_slot/slot3/check
function ancient_technology:ancient_forge/check_slot/slot4/check
function ancient_technology:ancient_forge/check_slot/slot5/check
function ancient_technology:ancient_forge/check_slot/slot6/check
function ancient_technology:ancient_forge/check_slot/slot7/check
function ancient_technology:ancient_forge/check_slot/slot8/check
function ancient_technology:ancient_forge/check_slot/slot9/check

scoreboard players set @s forge_complete 0
execute as @s at @s if score @s forge_slot1_comp matches 0 if score @s forge_slot2_comp matches 0 if score @s forge_slot3_comp matches 0 if score @s forge_slot4_comp matches 0 if score @s forge_slot5_comp matches 0 if score @s forge_slot6_comp matches 0 if score @s forge_slot7_comp matches 0 if score @s forge_slot8_comp matches 0 if score @s forge_slot9_comp matches 0 run scoreboard players set @s forge_complete 1

execute as @s at @s if score @s forge_complete matches 1 run function ancient_technology:ancient_forge/complete_craft
execute as @s at @s if score @s forge_complete matches 0 if score @s forge_result1 = @s forge_result1_pv run function ancient_technology:ancient_forge/clear_result
execute as @s at @s if score @s forge_complete matches 0 unless score @s forge_result1 = @s forge_result1_pv if score @s forge_result2 = @s forge_result2_pv run function ancient_technology:ancient_forge/clear_result
execute as @s at @s if score @s forge_complete matches 0 unless score @s forge_result1 = @s forge_result1_pv unless score @s forge_result2 = @s forge_result2_pv if score @s forge_result3 = @s forge_result3_pv run function ancient_technology:ancient_forge/clear_result