
# mark the entity as set up
data merge entity @s {Tags:['recipe_set', 'rcp_fam_9', 'rcp_grp_2', 'rcp_522', 'ancient_automaton', 'placed', 'installed_crafting']}

# set the recipe shape
scoreboard players set @s autoc_slot1_tgt 1
scoreboard players set @s autoc_slot2_tgt 1
scoreboard players set @s autoc_slot3_tgt 1
scoreboard players set @s autoc_slot4_tgt -1
scoreboard players set @s autoc_slot5_tgt -1
scoreboard players set @s autoc_slot6_tgt -1
scoreboard players set @s autoc_slot7_tgt -1
scoreboard players set @s autoc_slot8_tgt -1
scoreboard players set @s autoc_slot9_tgt -1

execute as @s at @s run function ancient_technology:ancient_automaton/set_blockers

# put the ingredient slots in
execute as @s at @s run data modify block ~-1 ~ ~-1 Items[4] set value {id:'minecraft:waxed_oxidized_cut_copper',Slot:4b,Count:1b}
execute as @s at @s run data modify block ~0 ~0 ~-1 Items[4] set value {id:'minecraft:waxed_oxidized_cut_copper',Slot:4b,Count:1b}
execute as @s at @s run data modify block ~1 ~0 ~-1 Items[4] set value {id:'minecraft:waxed_oxidized_cut_copper',Slot:4b,Count:1b}
# slot 4 not used
# slot 5 not used
# slot 6 not used
# slot 7 not used
# slot 8 not used
# slot 9 not used

# make it fancy
particle minecraft:dragon_breath ~ ~ ~ 5 5 5 0.1 3000
