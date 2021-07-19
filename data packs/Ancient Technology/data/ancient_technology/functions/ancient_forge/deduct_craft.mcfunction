scoreboard players set @s forge_slot1_comp 0
scoreboard players set @s forge_slot2_comp 0
scoreboard players set @s forge_slot3_comp 0
scoreboard players set @s forge_slot4_comp 0
scoreboard players set @s forge_slot5_comp 0
scoreboard players set @s forge_slot6_comp 0
scoreboard players set @s forge_slot7_comp 0
scoreboard players set @s forge_slot8_comp 0
scoreboard players set @s forge_slot9_comp 0

execute if data block ~ ~ ~ Items[{Slot:6b}] store result score @s forge_slot1_comp run data get block ~ ~ ~ Items[{Slot:6b}].Count
execute if data block ~ ~ ~ Items[{Slot:7b}] store result score @s forge_slot2_comp run data get block ~ ~ ~ Items[{Slot:7b}].Count
execute if data block ~ ~ ~ Items[{Slot:8b}] store result score @s forge_slot3_comp run data get block ~ ~ ~ Items[{Slot:8b}].Count
execute if data block ~ ~ ~ Items[{Slot:15b}] store result score @s forge_slot4_comp run data get block ~ ~ ~ Items[{Slot:15b}].Count
execute if data block ~ ~ ~ Items[{Slot:16b}] store result score @s forge_slot5_comp run data get block ~ ~ ~ Items[{Slot:16b}].Count
execute if data block ~ ~ ~ Items[{Slot:17b}] store result score @s forge_slot6_comp run data get block ~ ~ ~ Items[{Slot:17b}].Count
execute if data block ~ ~ ~ Items[{Slot:24b}] store result score @s forge_slot7_comp run data get block ~ ~ ~ Items[{Slot:24b}].Count
execute if data block ~ ~ ~ Items[{Slot:25b}] store result score @s forge_slot8_comp run data get block ~ ~ ~ Items[{Slot:25b}].Count
execute if data block ~ ~ ~ Items[{Slot:26b}] store result score @s forge_slot9_comp run data get block ~ ~ ~ Items[{Slot:26b}].Count

scoreboard players operation @s forge_slot1_comp -= @s forge_slot_prev 
scoreboard players operation @s forge_slot2_comp -= @s forge_slot_prev 
scoreboard players operation @s forge_slot3_comp -= @s forge_slot_prev 
scoreboard players operation @s forge_slot4_comp -= @s forge_slot_prev 
scoreboard players operation @s forge_slot5_comp -= @s forge_slot_prev 
scoreboard players operation @s forge_slot6_comp -= @s forge_slot_prev 
scoreboard players operation @s forge_slot7_comp -= @s forge_slot_prev 
scoreboard players operation @s forge_slot8_comp -= @s forge_slot_prev 
scoreboard players operation @s forge_slot9_comp -= @s forge_slot_prev 

execute if score @s forge_slot1_comp matches 1.. store result block ~ ~ ~ Items[{Slot:6b}].Count byte 1 run scoreboard players get @s forge_slot1_comp
execute if score @s forge_slot2_comp matches 1.. store result block ~ ~ ~ Items[{Slot:7b}].Count byte 1 run scoreboard players get @s forge_slot2_comp
execute if score @s forge_slot3_comp matches 1.. store result block ~ ~ ~ Items[{Slot:8b}].Count byte 1 run scoreboard players get @s forge_slot3_comp
execute if score @s forge_slot4_comp matches 1.. store result block ~ ~ ~ Items[{Slot:15b}].Count byte 1 run scoreboard players get @s forge_slot4_comp
execute if score @s forge_slot5_comp matches 1.. store result block ~ ~ ~ Items[{Slot:16b}].Count byte 1 run scoreboard players get @s forge_slot5_comp
execute if score @s forge_slot6_comp matches 1.. store result block ~ ~ ~ Items[{Slot:17b}].Count byte 1 run scoreboard players get @s forge_slot6_comp
execute if score @s forge_slot7_comp matches 1.. store result block ~ ~ ~ Items[{Slot:24b}].Count byte 1 run scoreboard players get @s forge_slot7_comp
execute if score @s forge_slot8_comp matches 1.. store result block ~ ~ ~ Items[{Slot:25b}].Count byte 1 run scoreboard players get @s forge_slot8_comp
execute if score @s forge_slot9_comp matches 1.. store result block ~ ~ ~ Items[{Slot:26b}].Count byte 1 run scoreboard players get @s forge_slot9_comp

execute if score @s forge_slot1_comp matches ..0 run data remove block ~ ~ ~ Items[{Slot:6b}]
execute if score @s forge_slot2_comp matches ..0 run data remove block ~ ~ ~ Items[{Slot:7b}]
execute if score @s forge_slot3_comp matches ..0 run data remove block ~ ~ ~ Items[{Slot:8b}]
execute if score @s forge_slot4_comp matches ..0 run data remove block ~ ~ ~ Items[{Slot:15b}]
execute if score @s forge_slot5_comp matches ..0 run data remove block ~ ~ ~ Items[{Slot:16b}]
execute if score @s forge_slot6_comp matches ..0 run data remove block ~ ~ ~ Items[{Slot:17b}]
execute if score @s forge_slot7_comp matches ..0 run data remove block ~ ~ ~ Items[{Slot:24b}]
execute if score @s forge_slot8_comp matches ..0 run data remove block ~ ~ ~ Items[{Slot:25b}]
execute if score @s forge_slot9_comp matches ..0 run data remove block ~ ~ ~ Items[{Slot:26b}]

scoreboard players set @s forge_result1_pv -1
scoreboard players set @s forge_result2_pv -1
scoreboard players set @s forge_result3_pv -1
scoreboard players set @s forge_slot_prev -1
