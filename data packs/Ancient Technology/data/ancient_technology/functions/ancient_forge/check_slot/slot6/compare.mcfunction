# init to unmatched
scoreboard players set @s forge_slot6_comp 1
data modify entity @s Item.tag.forge_compare_buffer set from block ~ ~ ~ Items[{Slot:17b}]
data remove entity @s Item.tag.forge_compare_buffer.Count
data remove entity @s Item.tag.forge_compare_buffer.Slot
execute as @s at @s store success score @s forge_slot6_comp run data modify entity @s Item.tag.forge_compare_buffer set from entity @s Item.tag.recipes[0].slot6
