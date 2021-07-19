# check recipes in installed but unprogrammed crafting systems
execute as @e[type=minecraft:glow_item_frame,tag=ancient_automaton,tag=installed_crafting,tag=!recipe_set] at @s if block ~ ~ ~ minecraft:dropper run function ancient_technology:ancient_automaton/check_recipes

# check for ready-to-complete auto-crafts
execute as @e[type=minecraft:glow_item_frame,tag=ancient_automaton,tag=recipe_set] at @s if block ~ ~ ~ minecraft:dropper run function ancient_technology:ancient_automaton/check_craft

# stop players taking any blocking items
function ancient_technology:ancient_automaton/check_blockers