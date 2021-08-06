# get the result count
execute store result score @s forge_result1_ct run data get entity @s Item.tag.recipes[0].result1.Count

# add it to the running total
scoreboard players operation @s forge_result1 += @s forge_result1_ct
scoreboard players add @s forge_slot_used 1

# if it's under a stack and there's more ingredients left, recurse
execute if score @s forge_slot_used < @s forge_slot_max if score @s forge_result1 matches ..63 run function ancient_technology:ancient_forge/calc_result_quantities

# TODO this doesn't work for 16 stacks or unstackables
# if it's gone over a stack, deduct one count
execute if score @s forge_result1 matches 65.. run scoreboard players remove @s forge_slot_used 1
execute if score @s forge_result1 matches 65.. run scoreboard players operation @s forge_result1 -= @s forge_result1_ct

# update slot max
execute store result score @s forge_slot_max run scoreboard players get @s forge_slot_used

# use slot max to calculate totals
execute if data entity @s Item.tag.recipes[0].result1 store result score @s forge_result1 run data get entity @s Item.tag.recipes[0].result1.Count
execute if data entity @s Item.tag.recipes[0].result2 store result score @s forge_result2 run data get entity @s Item.tag.recipes[0].result2.Count
execute if data entity @s Item.tag.recipes[0].result3 store result score @s forge_result3 run data get entity @s Item.tag.recipes[0].result3.Count
execute if data entity @s Item.tag.recipes[0].result1 run scoreboard players operation @s forge_result1 *= @s forge_slot_max
execute if data entity @s Item.tag.recipes[0].result2 run scoreboard players operation @s forge_result2 *= @s forge_slot_max
execute if data entity @s Item.tag.recipes[0].result3 run scoreboard players operation @s forge_result3 *= @s forge_slot_max