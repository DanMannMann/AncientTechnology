
data modify entity @s Item.tag.recipes set from storage ancient_technology:forge data.recipes
scoreboard players set AncientTechnology forge_temp_index 0
execute as @s at @s unless score @s forge_index matches 0 run function ancient_technology:ancient_forge/do_recipe_nav
execute store result score @s forge_last_index run scoreboard players get @s forge_index