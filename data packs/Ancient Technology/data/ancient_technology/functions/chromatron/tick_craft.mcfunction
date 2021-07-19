# check dye recipes
execute as @e[type=minecraft:glow_item_frame,tag=ancient_automaton,tag=installed_chroma] at @s if block ~ ~ ~ minecraft:dropper run function ancient_technology:chromatron/check_dye