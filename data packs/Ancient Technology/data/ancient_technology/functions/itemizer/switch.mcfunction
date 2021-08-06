data modify entity @e[type=glow_item_frame,tag=itemizer_item,distance=0..1,limit=1,sort=nearest] Item set from entity @p[limit=1,sort=nearest] SelectedItem
data modify entity @s Item.tag.SelectedItem set from entity @e[type=glow_item_frame,tag=itemizer_item,distance=0..1,limit=1,sort=nearest] Item
data modify storage ancient_technology:util_input stack_size_item set from entity @p[limit=1,sort=nearest] SelectedItem.id
function ancient_technology:utilities/get_stack_size
execute store result score @s itemizer_stack run data get storage ancient_technology:util_output stack_size_result
execute if score @s itemizer_stack matches 1 run scoreboard players set @s itemizer_multi 64
execute if score @s itemizer_stack matches 16 run scoreboard players set @s itemizer_multi 4
execute if score @s itemizer_stack matches 64 run scoreboard players set @s itemizer_multi 1
data modify entity @s Item.tag.target_item set from entity @e[type=glow_item_frame,tag=itemizer_item,distance=0..1,limit=1,sort=nearest] Item
data remove entity @s Item.tag.target_item.Count

# causes power to be recalculated
data remove entity @s Item.tag.container_snapshot