# check all chests that have already been checked and contain a pending rx key, furthest first (because why not).
# this runs AS the target (receiver in this case) but AT the source (sender in this case)
scoreboard players set AncientTechnology items_sent 0
execute as @e[type=minecraft:glow_item_frame,tag=sender_chest,tag=sender_rx_checked,sort=furthest] run function ancient_technology:sender_chest/try_receive

# if no items were moved around, mark this chest as pending to send
execute if score AncientTechnology items_sent matches 0 run tag @s add sender_tx_checked