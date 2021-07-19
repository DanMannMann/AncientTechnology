# AS AT POSITION of custom item frame
tag @s add placed
execute if entity @s[nbt=!{Facing:1b}] as @s at @s run function ancient_technology:ancient_automaton/place_upright
execute if entity @s[nbt={Facing:1b}] run execute as @s at @s run function ancient_technology:ancient_automaton/shaped_installation/check_mech_1
execute if entity @s[nbt={Facing:1b}] run execute as @s at @s run function ancient_technology:miyagitron/check_layout
execute if entity @s[nbt={Facing:1b}] run execute as @s at @s run function ancient_technology:chromatron/check_layout