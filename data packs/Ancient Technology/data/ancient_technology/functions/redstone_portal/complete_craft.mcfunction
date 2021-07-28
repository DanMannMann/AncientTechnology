# get a new value
scoreboard players add RedstonePortal rsp_key 1

# store the counts
execute store result score @s rsp_craft_ct1 run data get block ~ ~ ~ Items[{Slot:4b}].Count
execute store result score @s rsp_craft_ct2 run data get block ~ ~ ~ Items[{Slot:22b}].Count

# create tx and rx key items
loot replace block ~ ~ ~ container.4 loot ancient_technology:destination_rsp
loot replace block ~ ~ ~ container.22 loot ancient_technology:source_rsp

# restore  the counts

# set the value on the rx items_sent
data modify block ~ ~ ~ Items[{Slot:4b}].tag.EntityTag set value {Silent:1b,Tags:["redstone_destination"],Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:90010,rx_key:0b}},Invulnerable:1b,Invisible:1b,Fixed:1b}
execute store result block ~ ~ ~ Items[{Slot:4b}].tag.rx_key int 1 run scoreboard players get RedstonePortal rsp_key
execute store result block ~ ~ ~ Items[{Slot:4b}].tag.EntityTag.Item.tag.rx_key int 1 run scoreboard players get RedstonePortal rsp_key
execute store result block ~ ~ ~ Items[{Slot:4b}].Count byte 1 run scoreboard players get @s rsp_craft_ct1

# set the value on the tx key item
data modify block ~ ~ ~ Items[{Slot:22b}].tag.EntityTag set value {Silent:1b,Tags:["redstone_source"],Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:90015,tx_key:0b}},Invulnerable:1b,Invisible:1b,Fixed:1b}
execute store result block ~ ~ ~ Items[{Slot:22b}].tag.tx_key int 1 run scoreboard players get RedstonePortal rsp_key
execute store result block ~ ~ ~ Items[{Slot:22b}].tag.EntityTag.Item.tag.tx_key int 1 run scoreboard players get RedstonePortal rsp_key
execute store result block ~ ~ ~ Items[{Slot:22b}].Count byte 1 run scoreboard players get @s rsp_craft_ct2

tag @s remove rsp_crafted