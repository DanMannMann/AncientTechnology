
execute as @s at @s store result score @s autoc_slot1 run data get block ~-1 ~ ~ Items[4].Count
execute as @s at @s store result score @s autoc_slot2 run data get block ~ ~ ~ Items[4].Count
scoreboard players remove @s autoc_slot1 1
scoreboard players remove @s autoc_slot2 1
execute as @s at @s store result block ~-1 ~ ~ Items[4].Count byte 1 run scoreboard players get @s autoc_slot1
execute as @s at @s store result block ~ ~ ~ Items[4].Count byte 1 run scoreboard players get @s autoc_slot2
