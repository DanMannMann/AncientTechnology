data modify entity @s Item.tag.count_target set from entity @s Item.tag.container_snapshot

scoreboard players set @s itemizer_count 0
execute if data entity @s Item.tag.count_target[0] as @s at @s run function ancient_technology:itemizer/do_count_items
scoreboard players operation @s itemizer_count *= @s itemizer_multi

execute if entity @s[tag=north] as @s at @s run function ancient_technology:itemizer/finish_count_north
execute if entity @s[tag=east] as @s at @s run function ancient_technology:itemizer/finish_count_east
execute if entity @s[tag=south] as @s at @s run function ancient_technology:itemizer/finish_count_south
execute if entity @s[tag=west] as @s at @s run function ancient_technology:itemizer/finish_count_west

execute if score @s itemizer_out matches 0 run data modify entity @s Item.tag.CustomModelData set value 95000
execute unless score @s itemizer_out matches 0 run data modify entity @s Item.tag.CustomModelData set value 95001