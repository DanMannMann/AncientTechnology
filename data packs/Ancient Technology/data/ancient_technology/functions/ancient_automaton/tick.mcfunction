# place or remove any pending crafting mechanisms
execute as @e[type=minecraft:glow_item_frame,tag=crafting_mechanism,tag=!placed] at @s run function ancient_technology:ancient_automaton/shaped_installation/place_mechanism
execute as @e[type=minecraft:glow_item_frame,tag=crafting_mechanism,tag=placed] at @s unless block ~ ~ ~ minecraft:dropper run function ancient_technology:ancient_automaton/shaped_installation/remove_mechanism

# place or remove any pending crafting automata
execute as @e[type=minecraft:glow_item_frame,tag=ancient_automaton,tag=!placed] at @s run function ancient_technology:ancient_automaton/place
execute as @e[type=minecraft:glow_item_frame,tag=ancient_automaton,tag=placed] at @s unless block ~ ~ ~ minecraft:dropper run function ancient_technology:ancient_automaton/remove

# stop players taking any blocking items
function ancient_technology:ancient_automaton/check_blockers