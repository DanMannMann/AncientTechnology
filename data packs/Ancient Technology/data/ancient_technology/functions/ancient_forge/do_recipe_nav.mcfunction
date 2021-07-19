data remove entity @s Item.tag.recipes[0]
scoreboard players add AncientTechnology forge_temp_index 1
execute unless score AncientTechnology forge_temp_index = @s forge_index run function ancient_technology:ancient_forge/do_recipe_nav