# input ancient_technology:util_input.stack_size_item
# output ancient_technology:util_output.stack_size_result

summon minecraft:chest_minecart ~ -10 ~ {Tags:["get_stack_size"],Items:[{Slot:0b, id:"minecraft:sand", Count: 1b}]}
execute as @e[type=chest_minecart,tag=get_stack_size,limit=1] run function ancient_technology:utilities/do_get_stack_size