# Deduct the items
execute as @s at @s if score @s autoc_slot1_tgt matches 1.. run scoreboard players operation @s autoc_slot1 -= @s autoc_slot1_tgt
execute as @s at @s if score @s autoc_slot2_tgt matches 1.. run scoreboard players operation @s autoc_slot2 -= @s autoc_slot2_tgt
execute as @s at @s if score @s autoc_slot3_tgt matches 1.. run scoreboard players operation @s autoc_slot3 -= @s autoc_slot3_tgt
execute as @s at @s if score @s autoc_slot4_tgt matches 1.. run scoreboard players operation @s autoc_slot4 -= @s autoc_slot4_tgt
execute as @s at @s if score @s autoc_slot5_tgt matches 1.. run scoreboard players operation @s autoc_slot5 -= @s autoc_slot5_tgt
execute as @s at @s if score @s autoc_slot6_tgt matches 1.. run scoreboard players operation @s autoc_slot6 -= @s autoc_slot6_tgt
execute as @s at @s if score @s autoc_slot7_tgt matches 1.. run scoreboard players operation @s autoc_slot7 -= @s autoc_slot7_tgt
execute as @s at @s if score @s autoc_slot8_tgt matches 1.. run scoreboard players operation @s autoc_slot8 -= @s autoc_slot8_tgt
execute as @s at @s if score @s autoc_slot9_tgt matches 1.. run scoreboard players operation @s autoc_slot9 -= @s autoc_slot9_tgt

# Store the new counts back into the block data
execute as @s at @s if score @s autoc_slot1_tgt matches 1.. store result block ~-1 ~ ~-1 Items[4].Count byte 1 run scoreboard players get @s autoc_slot1
execute as @s at @s if score @s autoc_slot2_tgt matches 1.. store result block ~0 ~0 ~-1 Items[4].Count byte 1 run scoreboard players get @s autoc_slot2
execute as @s at @s if score @s autoc_slot3_tgt matches 1.. store result block ~1 ~0 ~-1 Items[4].Count byte 1 run scoreboard players get @s autoc_slot3
execute as @s at @s if score @s autoc_slot4_tgt matches 1.. store result block ~-1 ~0 ~0 Items[4].Count byte 1 run scoreboard players get @s autoc_slot4
execute as @s at @s if score @s autoc_slot5_tgt matches 1.. store result block ~0 ~0 ~-0 Items[4].Count byte 1 run scoreboard players get @s autoc_slot5
execute as @s at @s if score @s autoc_slot6_tgt matches 1.. store result block ~1 ~0 ~-0 Items[4].Count byte 1 run scoreboard players get @s autoc_slot6
execute as @s at @s if score @s autoc_slot7_tgt matches 1.. store result block ~-1 ~0 ~1 Items[4].Count byte 1 run scoreboard players get @s autoc_slot7
execute as @s at @s if score @s autoc_slot8_tgt matches 1.. store result block ~0 ~-0 ~1 Items[4].Count byte 1 run scoreboard players get @s autoc_slot8
execute as @s at @s if score @s autoc_slot9_tgt matches 1.. store result block ~1 ~-0 ~1 Items[4].Count byte 1 run scoreboard players get @s autoc_slot9

# Drop the crafted item
execute as @s at @s run function ancient_technology:ancient_automaton/recipes/drop_items