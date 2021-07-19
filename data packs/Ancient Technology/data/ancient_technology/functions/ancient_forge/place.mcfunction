setblock ~ ~ ~ minecraft:barrel{CustomName:"\"Ancient Forge\""} 
tag @s add placed

# update the recipe count
execute as @s at @s run function ancient_technology:ancient_forge/count_recipes

# set the recipes on the thing
data modify entity @s Item.tag.recipes set from storage ancient_technology:forge data.recipes

scoreboard players set @s forge_index 0
function ancient_technology:ancient_forge/set_blockers