execute as @s at @s unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:3b,id:"minecraft:black_stained_glass_pane",Count:1b}]} run function ancient_technology:ancient_forge/up_click
execute as @s at @s unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:21b,id:"minecraft:black_stained_glass_pane",Count:1b}]} run function ancient_technology:ancient_forge/down_click
execute as @s at @s unless score @s forge_last_index = @s forge_index run function ancient_technology:ancient_forge/recipe_nav

# check blockers
execute as @s at @s run function ancient_technology:ancient_forge/set_blockers

execute if score AncientTechnology __crafting_tick matches 1 run function ancient_technology:ancient_forge/check_craft