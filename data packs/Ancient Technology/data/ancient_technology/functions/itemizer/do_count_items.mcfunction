scoreboard players set AncientTechnology itemizer_compare 1

execute store result score AncientTechnology count_buffer run data get entity @s Item.tag.count_target[0].Count

data modify entity @s Item.tag.compare_target set from entity @s Item.tag.count_target[0].id
execute store result score AncientTechnology itemizer_compare run data modify entity @s Item.tag.compare_target set from entity @s Item.tag.target_item.id
execute if score AncientTechnology itemizer_compare matches 0 run data modify entity @s Item.tag.compare_target set from entity @s Item.tag.count_target[0].tag
execute if score AncientTechnology itemizer_compare matches 0 store result score AncientTechnology itemizer_compare run data modify entity @s Item.tag.compare_target set from entity @s Item.tag.target_item.tag

execute if score AncientTechnology itemizer_compare matches 0 run scoreboard players operation @s itemizer_count += AncientTechnology count_buffer
data remove entity @s Item.tag.count_target[0]
execute if data entity @s Item.tag.count_target[0] as @s at @s run function ancient_technology:itemizer/do_count_items