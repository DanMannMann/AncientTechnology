# get a new value
scoreboard players add SenderChest sender_key 1

# store the counts
execute store result score @s sender_craft_ct1 run data get block ~ ~ ~ Items[{Slot:4b}].Count
execute store result score @s sender_craft_ct2 run data get block ~ ~ ~ Items[{Slot:22b}].Count

# create tx and rx key items
loot replace block ~ ~ ~ container.4 loot ancient_technology:sending_key
loot replace block ~ ~ ~ container.22 loot ancient_technology:receiving_key

# restore  the counts

# set the value on the tx key item
execute store result block ~ ~ ~ Items[{Slot:4b}].tag.tx_key int 1 run scoreboard players get SenderChest sender_key
execute store result block ~ ~ ~ Items[{Slot:4b}].Count byte 1 run scoreboard players get @s sender_craft_ct1

# set the value on the rx key item
execute store result block ~ ~ ~ Items[{Slot:22b}].tag.rx_key int 1 run scoreboard players get SenderChest sender_key
execute store result block ~ ~ ~ Items[{Slot:22b}].Count byte 1 run scoreboard players get @s sender_craft_ct2

tag @s remove sender_eye_crafted