# put result 1 in
execute if data entity @s Item.tag.recipes[0].result1 if data block ~ ~ ~ Items[{Slot:4b}] run data modify block ~ ~ ~ Items[{Slot:4b}] set value {Slot:4b, id: "minecraft:stick", Count: 1b}
execute if data entity @s Item.tag.recipes[0].result1 unless data block ~ ~ ~ Items[{Slot:4b}] run data modify block ~ ~ ~ Items append value {Slot:4b, id: "minecraft:stick", Count: 1b}
execute if data entity @s Item.tag.recipes[0].result1 run data modify block ~ ~ ~ Items[{Slot:4b}].id set from entity @s Item.tag.recipes[0].result1.id
execute if data entity @s Item.tag.recipes[0].result1 run data modify block ~ ~ ~ Items[{Slot:4b}].tag set from entity @s Item.tag.recipes[0].result1.tag
execute if data entity @s Item.tag.recipes[0].result1 store result block ~ ~ ~ Items[{Slot:4b}].Count byte 1 run scoreboard players get @s forge_result1

# put result 2 in
execute if data entity @s Item.tag.recipes[0].result2 if data block ~ ~ ~ Items[{Slot:13b}] run data modify block ~ ~ ~ Items[{Slot:13b}] set value {Slot:13b, id: "minecraft:stick", Count: 1b}
execute if data entity @s Item.tag.recipes[0].result2 unless data block ~ ~ ~ Items[{Slot:13b}] run data modify block ~ ~ ~ Items append value {Slot:13b, id: "minecraft:stick", Count: 1b}
execute if data entity @s Item.tag.recipes[0].result2 run data modify block ~ ~ ~ Items[{Slot:13b}].id set from entity @s Item.tag.recipes[0].result2.id
execute if data entity @s Item.tag.recipes[0].result2 run data modify block ~ ~ ~ Items[{Slot:13b}].tag set from entity @s Item.tag.recipes[0].result2.tag
execute if data entity @s Item.tag.recipes[0].result2 store result block ~ ~ ~ Items[{Slot:13b}].Count byte 1 run scoreboard players get @s forge_result2

# put result 3 in
execute if data entity @s Item.tag.recipes[0].result3 if data block ~ ~ ~ Items[{Slot:22b}] run data modify block ~ ~ ~ Items[{Slot:22b}] set value {Slot:22b, id: "minecraft:stick", Count: 1b}
execute if data entity @s Item.tag.recipes[0].result3 unless data block ~ ~ ~ Items[{Slot:22b}] run data modify block ~ ~ ~ Items append value {Slot:22b, id: "minecraft:stick", Count: 1b}
execute if data entity @s Item.tag.recipes[0].result3 run data modify block ~ ~ ~ Items[{Slot:22b}].id set from entity @s Item.tag.recipes[0].result3.id
execute if data entity @s Item.tag.recipes[0].result3 run data modify block ~ ~ ~ Items[{Slot:22b}].tag set from entity @s Item.tag.recipes[0].result3.tag
execute if data entity @s Item.tag.recipes[0].result3 store result block ~ ~ ~ Items[{Slot:22b}].Count byte 1 run scoreboard players get @s forge_result3

# store the result amounts so we can detect removal
execute store result score @s forge_slot_prev run scoreboard players get @s forge_slot_max
execute store result score @s forge_result1_pv run scoreboard players get @s forge_result1
execute store result score @s forge_result2_pv run scoreboard players get @s forge_result2
execute store result score @s forge_result3_pv run scoreboard players get @s forge_result3

# if recipe has an event tag, add it to @s - this works as a callback so recipe providers can do extended stuff to results
execute if data entity @s Item.tag.recipes[0].eventTag run data modify entity @s Tags append from entity @s Item.tag.recipes[0].eventTag