# MAIN
execute if score AncientTechnology tick_count matches 0 run function ancient_technology:tick_craft
function ancient_technology:tick
scoreboard players add AncientTechnology tick_count 1
execute if score AncientTechnology tick_count matches 8.. run scoreboard players set AncientTechnology tick_count 0