# TODO how to trigger switch with the different block type
#execute as @s at @s if block ~ ~ ~ comparator[mode=subtract] run function ancient_technology:itemizer/switch

# will be set to 1 if the container contents have changed
scoreboard players set AncientTechnology itemizer_compare 0

execute if entity @s[tag=north] if block ~ ~ ~-1 #ancient_technology:container store result score AncientTechnology itemizer_compare run data modify entity @s Item.tag.container_snapshot set from block ~ ~ ~-1 Items

execute if entity @s[tag=south] if block ~ ~ ~1 #ancient_technology:container store result score AncientTechnology itemizer_compare run data modify entity @s Item.tag.container_snapshot set from block ~ ~ ~1 Items

execute if entity @s[tag=west] if block ~-1 ~ ~ #ancient_technology:container store result score AncientTechnology itemizer_compare run data modify entity @s Item.tag.container_snapshot set from block ~-1 ~ ~ Items

execute if entity @s[tag=east] if block ~1 ~ ~ #ancient_technology:container store result score AncientTechnology itemizer_compare run data modify entity @s Item.tag.container_snapshot set from block ~1 ~ ~ Items

execute if entity @s[tag=north] unless block ~ ~ ~-1 #ancient_technology:container store result score AncientTechnology itemizer_compare run data remove entity @s Item.tag.container_snapshot
execute if entity @s[tag=east] unless block ~1 ~ ~ #ancient_technology:container store result score AncientTechnology itemizer_compare run data remove entity @s Item.tag.container_snapshot
execute if entity @s[tag=south] unless block ~ ~ ~1 #ancient_technology:container store result score AncientTechnology itemizer_compare run data remove entity @s Item.tag.container_snapshot
execute if entity @s[tag=west] unless block ~-1 ~ ~ #ancient_technology:container store result score AncientTechnology itemizer_compare run data remove entity @s Item.tag.container_snapshot

# TODO detect and compare double chests properly!

execute if score AncientTechnology itemizer_compare matches 1 if data entity @s Item.tag.container_snapshot run data modify entity @e[type=glow_item_frame,tag=itemizer_item,sort=nearest,limit=1,distance=0..1] Fixed set value 0
execute if score AncientTechnology itemizer_compare matches 1 if data entity @s Item.tag.container_snapshot as @s at @s run function ancient_technology:itemizer/count_items

execute if score AncientTechnology itemizer_compare matches 1 unless data entity @s Item.tag.container_snapshot run scoreboard players set @s itemizer_out 0
execute if score AncientTechnology itemizer_compare matches 1 unless data entity @s Item.tag.container_snapshot run data modify entity @s Item.tag.CustomModelData set value 95000
execute if score AncientTechnology itemizer_compare matches 1 unless data entity @s Item.tag.container_snapshot run data modify entity @e[type=glow_item_frame,tag=itemizer_item,sort=nearest,limit=1,distance=0..1] Fixed set value 1

execute if score @s itemizer_out matches 0 run setblock ~ ~ ~ heavy_weighted_pressure_plate[power=0]{powered:false}
execute if score @s itemizer_out matches 1 run setblock ~ ~ ~ heavy_weighted_pressure_plate[power=1]{powered:false}
execute if score @s itemizer_out matches 2 run setblock ~ ~ ~ heavy_weighted_pressure_plate[power=2]{powered:false}
execute if score @s itemizer_out matches 3 run setblock ~ ~ ~ heavy_weighted_pressure_plate[power=3]{powered:false}
execute if score @s itemizer_out matches 4 run setblock ~ ~ ~ heavy_weighted_pressure_plate[power=4]{powered:false}
execute if score @s itemizer_out matches 5 run setblock ~ ~ ~ heavy_weighted_pressure_plate[power=5]{powered:false}
execute if score @s itemizer_out matches 6 run setblock ~ ~ ~ heavy_weighted_pressure_plate[power=6]{powered:false}
execute if score @s itemizer_out matches 7 run setblock ~ ~ ~ heavy_weighted_pressure_plate[power=7]{powered:false}
execute if score @s itemizer_out matches 8 run setblock ~ ~ ~ heavy_weighted_pressure_plate[power=8]{powered:false}
execute if score @s itemizer_out matches 9 run setblock ~ ~ ~ heavy_weighted_pressure_plate[power=9]{powered:false}
execute if score @s itemizer_out matches 10 run setblock ~ ~ ~ heavy_weighted_pressure_plate[power=10]{powered:false}
execute if score @s itemizer_out matches 11 run setblock ~ ~ ~ heavy_weighted_pressure_plate[power=11]{powered:false}
execute if score @s itemizer_out matches 12 run setblock ~ ~ ~ heavy_weighted_pressure_plate[power=12]{powered:false}
execute if score @s itemizer_out matches 13 run setblock ~ ~ ~ heavy_weighted_pressure_plate[power=13]{powered:false}
execute if score @s itemizer_out matches 14 run setblock ~ ~ ~ heavy_weighted_pressure_plate[power=14]{powered:false}
execute if score @s itemizer_out matches 15 run setblock ~ ~ ~ heavy_weighted_pressure_plate[power=15]{powered:false}