# check for removed item frame (shouldn't be possible any more!)
execute unless entity @e[type=glow_item_frame,tag=itemizer_item,distance=0..1] as @s at @s run setblock ~ ~ ~ air
execute unless entity @e[type=glow_item_frame,tag=itemizer_item,distance=0..1] as @s at @s run function ancient_technology:itemizer/remove

# right click - detect item rotation and switch to player's selected item
execute store result score @s itemizer_switch run data get entity @e[type=glow_item_frame,tag=itemizer_item,distance=0..1,limit=1] ItemRotation 
execute if score @s itemizer_switch matches 1.. run data modify entity @e[type=glow_item_frame,tag=itemizer_item,distance=0..1,limit=1] ItemRotation set value 0
execute if score @s itemizer_switch matches 1.. as @s at @s run function ancient_technology:itemizer/switch

# detect item absence and replace to simulate a fixed item frame
execute unless data entity @e[type=glow_item_frame,tag=itemizer_item,distance=0..1,limit=1] Item as @s at @s run data modify entity @e[type=glow_item_frame,tag=itemizer_item,distance=0..1,limit=1] Item set from entity @s Item.tag.SelectedItem