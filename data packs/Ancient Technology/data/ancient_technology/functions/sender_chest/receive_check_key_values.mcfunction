# this function runs AS the target (receiver in this case) but AT the source (sender in this case)

# make a copy of the rx key in ancient_technology:sender_chest Comparand (execute this AS and AT the destination)
execute as @s at @s run data modify storage ancient_technology:sender_chest Comparand set from block ~ ~ ~ Items[{Slot:13b, id:"minecraft:stick",Count:1b}].tag.rx_key

# set a flag to check write success (writes will "fail" if the existing value is the same as the new value)
execute run scoreboard players set @s written 1

# try to update the rx key with the tx key (note this stays AT the source)
execute store success score @s written run data modify storage ancient_technology:sender_chest Comparand set from block ~ ~ ~ Items[{Slot:13b, id:"minecraft:stick",Count:1b}].tag.tx_key

execute if score @s written matches 0 as @s run function ancient_technology:sender_chest/receive
execute if score @s written matches 0 run scoreboard players set AncientTechnology items_sent 1