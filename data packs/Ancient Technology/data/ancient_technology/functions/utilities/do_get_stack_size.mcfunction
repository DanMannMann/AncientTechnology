# input ancient_technology:util_input.stack_size_item
# output ancient_technology:util_output.stack_size_result

data modify entity @s Items[0].id set from storage ancient_technology:util_input stack_size_item
item modify entity @s container.0 ancient_technology:stack_check
data modify storage ancient_technology:util_output stack_size_result set from entity @s Items[0].Count
kill @s