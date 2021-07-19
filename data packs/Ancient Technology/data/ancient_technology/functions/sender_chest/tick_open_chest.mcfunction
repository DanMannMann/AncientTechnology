# check keys added to barrel
execute if entity @s[tag=!sender_tx_checked,tag=!sender_rx_checked] if block ~ ~ ~ minecraft:barrel{Items:[{Slot:13b, id:"minecraft:stick", Count: 1b, tag: {key_type:"rx"}}]} as @s at @s run function ancient_technology:sender_chest/find_sender
execute if entity @s[tag=!sender_tx_checked,tag=!sender_rx_checked] if block ~ ~ ~ minecraft:barrel{Items:[{Slot:13b, id:"minecraft:stick", Count: 1b, tag: {key_type:"tx"}}]} as @s at @s run function ancient_technology:sender_chest/find_receiver

# unmark keys removed from barrel
execute if entity @s[tag=sender_tx_checked] unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:13b, id:"minecraft:stick", Count: 1b, tag: {key_type:"tx"}}]} as @s at @s run tag @s remove sender_tx_checked
execute if entity @s[tag=sender_rx_checked] unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:13b, id:"minecraft:stick", Count: 1b, tag: {key_type:"rx"}}]} as @s at @s run tag @s remove sender_rx_checked