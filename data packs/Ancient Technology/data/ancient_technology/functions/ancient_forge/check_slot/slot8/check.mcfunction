# - expected and occupied, test the values
execute as @s at @s if data block ~ ~ ~ Items[{Slot:25b}] if data entity @s Item.tag.recipes[0].slot8 run function ancient_technology:ancient_forge/check_slot/slot8/compare
# - occupied and unexpected, set to not matched
execute as @s at @s if data block ~ ~ ~ Items[{Slot:25b}] unless data entity @s Item.tag.recipes[0].slot8 run scoreboard players set @s forge_slot8_comp 1
# - unoccupied and expected, set to not matched
execute as @s at @s unless data block ~ ~ ~ Items[{Slot:25b}] if data entity @s Item.tag.recipes[0].slot8 run scoreboard players set @s forge_slot8_comp 1
# - unoccupied and not expected, set to matched
execute as @s at @s unless data block ~ ~ ~ Items[{Slot:25b}] unless data entity @s Item.tag.recipes[0].slot8 run scoreboard players set @s forge_slot8_comp 0