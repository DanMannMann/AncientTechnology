# check all chests that have already been checked and contain a pending tx key, furthest first (because why not).
# this runs AS the target (sender in this case) but AT the source (receiver in this case)
scoreboard players set AncientTechnology items_sent 0
execute as @e[type=minecraft:glow_item_frame,tag=sender_chest,tag=sender_tx_checked,sort=furthest] run function ancient_technology:sender_chest/try_send

# if no items were moved around, mark this chest as pending to receive
execute if score AncientTechnology items_sent matches 0 run tag @s add sender_rx_checked