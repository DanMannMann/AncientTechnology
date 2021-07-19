# use this success flag to stop duping!
scoreboard players set SenderChest items_sent 0

# execute for all _other_ chests that have a key, starting with the furthest away (because why not), to find a matching key
# execute AS the other entity, but AT the source chest
execute as @e[type=minecraft:glow_item_frame,tag=sender_chest,tag=has_rx_key,sort=furthest] run function ancient_technology:sender_chest/receive