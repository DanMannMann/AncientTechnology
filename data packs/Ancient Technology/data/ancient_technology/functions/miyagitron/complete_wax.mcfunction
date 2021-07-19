
# drop item
execute as @s at @s if block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:copper_block"}]} run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:waxed_copper_block", Count: 1b}}
execute as @s at @s if block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:cut_copper"}]} run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:waxed_cut_copper", Count: 1b}}
execute as @s at @s if block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:cut_copper_slab"}]} run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:waxed_cut_copper_slab", Count: 1b}}
execute as @s at @s if block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:cut_copper_stairs"}]} run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:waxed_cut_copper_stairs", Count: 1b}}
execute as @s at @s if block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:exposed_copper"}]} run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:waxed_exposed_copper", Count: 1b}}
execute as @s at @s if block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:exposed_cut_copper"}]} run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:waxed_exposed_cut_copper", Count: 1b}}
execute as @s at @s if block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:exposed_cut_copper_slab"}]} run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:waxed_exposed_cut_copper_slab", Count: 1b}}
execute as @s at @s if block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:exposed_cut_copper_stairs"}]} run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:waxed_exposed_cut_copper_stairs", Count: 1b}}
execute as @s at @s if block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:oxidized_copper"}]} run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:waxed_oxidized_copper", Count: 1b}}
execute as @s at @s if block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:oxidized_cut_copper"}]} run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:waxed_oxidized_cut_copper", Count: 1b}}
execute as @s at @s if block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:oxidized_cut_copper_slab"}]} run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:waxed_oxidized_cut_copper_slab", Count: 1b}}
execute as @s at @s if block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:oxidized_cut_copper_stairs"}]} run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:waxed_oxidized_cut_copper_stairs", Count: 1b}}
execute as @s at @s if block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:weathered_copper"}]} run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:waxed_weathered_copper", Count: 1b}}
execute as @s at @s if block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:weathered_cut_copper"}]} run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:waxed_weathered_cut_copper", Count: 1b}}
execute as @s at @s if block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:weathered_cut_copper_slab"}]} run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:waxed_weathered_cut_copper_slab", Count: 1b}}
execute as @s at @s if block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:weathered_cut_copper_stairs"}]} run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:waxed_weathered_cut_copper_stairs", Count: 1b}}

# remove input item
execute store result score @s miyagi_count run data get block ~ ~ ~ Items[4].Count
execute run scoreboard players remove @s miyagi_count 1
execute store result block ~ ~ ~ Items[4].Count byte 1 run scoreboard players get @s miyagi_count

# remove a piece of honeycomb
scoreboard players set @s miyagi_count 0
scoreboard players set @s miyagi_slot -1
execute as @s at @s if entity @s[tag=miyagi_north] run function ancient_technology:miyagitron/use_wax_north
execute as @s at @s if entity @s[tag=miyagi_east] run function ancient_technology:miyagitron/use_wax_east
execute as @s at @s if entity @s[tag=miyagi_south] run function ancient_technology:miyagitron/use_wax_south
execute as @s at @s if entity @s[tag=miyagi_west] run function ancient_technology:miyagitron/use_wax_west