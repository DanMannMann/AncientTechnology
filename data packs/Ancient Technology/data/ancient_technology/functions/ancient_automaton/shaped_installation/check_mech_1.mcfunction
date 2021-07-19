# test north-west block
execute as @s at @s if block ~-1 ~ ~-1 crafting_table run particle flash ~-1 ~ ~-1 ~ ~ ~ 0.8 20 force
execute as @s at @s if block ~-1 ~ ~-1 crafting_table run function ancient_technology:ancient_automaton/shaped_installation/check_mech_2