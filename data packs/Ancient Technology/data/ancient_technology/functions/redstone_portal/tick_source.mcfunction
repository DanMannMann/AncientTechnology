execute if entity @s[tag=!powered] if block ~ ~ ~ redstone_wire unless block ~ ~ ~ redstone_wire[power=0] run data modify entity @s Item.tag.CustomModelData set value 90016
execute if entity @s[tag=!powered] if block ~ ~ ~ redstone_wire unless block ~ ~ ~ redstone_wire[power=0] run tag @s add powered

execute if entity @s[tag=powered] if block ~ ~ ~ redstone_wire[power=0] run data modify entity @s Item.tag.CustomModelData set value 90015
execute if entity @s[tag=powered] if block ~ ~ ~ redstone_wire[power=0] run tag @s remove powered

data modify storage ancient_technology:rsportal comparand set from entity @s Item.tag.tx_key
execute if entity @s[tag=powered] as @e[type=glow_item_frame,tag=redstone_destination,distance=1..30,tag=!powered] at @s run function ancient_technology:redstone_portal/power_if_keys_match