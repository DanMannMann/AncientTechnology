# slot location order
# ~-1 ~ ~-1
# ~0 ~0 ~-1
# ~1 ~0 ~-1
# ~-1 ~0 ~0
# ~0 ~0 ~-0
# ~1 ~0 ~-0
# ~-1 ~0 ~1
# ~0 ~-0 ~1
# ~1 ~-0 ~1

# zero all the slots
scoreboard players set @s autoc_slot1 0
scoreboard players set @s autoc_slot2 0
scoreboard players set @s autoc_slot3 0
scoreboard players set @s autoc_slot4 0
scoreboard players set @s autoc_slot5 0
scoreboard players set @s autoc_slot6 0
scoreboard players set @s autoc_slot7 0
scoreboard players set @s autoc_slot8 0
scoreboard players set @s autoc_slot9 0
scoreboard players set @s autoc_success 0

# Check all recipes
execute as @s at @s run function ancient_technology:ancient_automaton/recipes/check_crafts

# Check success
execute as @s at @s run function ancient_technology:ancient_automaton/check_success

# Complete the craft if successful
execute as @s at @s if score @s autoc_success matches 1.. run function ancient_technology:ancient_automaton/complete_craft