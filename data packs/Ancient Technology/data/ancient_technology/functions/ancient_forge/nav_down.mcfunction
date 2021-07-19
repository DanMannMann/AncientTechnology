
data remove entity @s Item.tag.recipes[0]
scoreboard players add @s forge_index 1
execute if score @s forge_index < @s forge_index_buf run function ancient_technology:ancient_forge/nav_down