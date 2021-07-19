data remove storage ancient_technology:forge data.recipes_to_count[0]

# if still things, add 1 to count and continue
execute if data storage ancient_technology:forge data.recipes_to_count[0] run scoreboard players add @s forge_index 1
execute if data storage ancient_technology:forge data.recipes_to_count[0] run function ancient_technology:ancient_forge/do_recipe_count

# else write down total and stop
execute unless data storage ancient_technology:forge data.recipes_to_count[0] store result score @s forge_max_index run scoreboard players get @s forge_index
execute unless data storage ancient_technology:forge data.recipes_to_count[0] run data remove storage ancient_technology:forge data.recipes_to_count