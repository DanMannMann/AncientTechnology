# this function runs AS the target (sender in this case) but AT the source (receiver in this case)

# make a copy of the tx key in ancient_technology:sender_chest Comparand (execute this AS and AT the target)
execute as @s at @s run data modify storage ancient_technology:sender_chest Comparand set from block ~ ~ ~ Items[{Slot:13b, id:"minecraft:stick",Count:1b}].tag.tx_key

# set a flag to check write success (writes will "fail" if the existing value is the same as the new value)
execute run scoreboard players set @s written 1

# try to update the tx key with the rx key (note this stays AT the source)
execute store success score @s written run data modify storage ancient_technology:sender_chest Comparand set from block ~ ~ ~ Items[{Slot:13b, id:"minecraft:stick",Count:1b}].tag.rx_key

execute if score @s written matches 0 as @s run function ancient_technology:sender_chest/send
execute if score @s written matches 0 run scoreboard players set AncientTechnology items_sent 1