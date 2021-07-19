
data modify storage ancient_technology:forge data.recipes_to_count set from storage ancient_technology:forge data.recipes
scoreboard players set @s forge_index 0
execute as @s at @s run function ancient_technology:ancient_forge/do_recipe_count