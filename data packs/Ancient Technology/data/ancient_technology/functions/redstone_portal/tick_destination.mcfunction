execute if entity @s[tag=powered] if block ~ ~ ~ stone_pressure_plate[powered=false] run data modify entity @s Item.tag.CustomModelData set value 90011
execute if entity @s[tag=powered] if block ~ ~ ~ stone_pressure_plate[powered=false] run setblock ~ ~ ~ stone_pressure_plate[powered=true]

execute if entity @s[tag=!powered] if block ~ ~ ~ stone_pressure_plate[powered=true] run data modify entity @s Item.tag.CustomModelData set value 90010
execute if entity @s[tag=!powered] if block ~ ~ ~ stone_pressure_plate[powered=true] run setblock ~ ~ ~ stone_pressure_plate[powered=false]