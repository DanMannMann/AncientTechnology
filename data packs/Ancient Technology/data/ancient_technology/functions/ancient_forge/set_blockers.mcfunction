# recipe preview row 1
item replace block ~ ~ ~ container.0 with minecraft:black_stained_glass_pane{tag:{GuiComponent:1b}}
data modify block ~ ~ ~ Items[{Slot:0b}] merge from entity @s Item.tag.recipes[0].slot1
execute unless data entity @s Item.tag.recipes[0].slot1 run data modify block ~ ~ ~ Items[{Slot:0b}].tag.CustomModelData set value 10005
execute unless data entity @s Item.tag.recipes[0].slot1 run data modify block ~ ~ ~ Items[{Slot:0b}].tag.display set value {Name:"{\"text\":\"Ancient Forge\"}"}

item replace block ~ ~ ~ container.1 with minecraft:black_stained_glass_pane{tag:{GuiComponent:1b}}
data modify block ~ ~ ~ Items[{Slot:1b}] merge from entity @s Item.tag.recipes[0].slot2
execute unless data entity @s Item.tag.recipes[0].slot2 run data modify block ~ ~ ~ Items[{Slot:1b}].tag.CustomModelData set value 10005
execute unless data entity @s Item.tag.recipes[0].slot2 run data modify block ~ ~ ~ Items[{Slot:1b}].tag.display set value {Name:"{\"text\":\"Ancient Forge\"}"}

item replace block ~ ~ ~ container.2 with minecraft:black_stained_glass_pane{tag:{GuiComponent:1b}}
data modify block ~ ~ ~ Items[{Slot:2b}] merge from entity @s Item.tag.recipes[0].slot3
execute unless data entity @s Item.tag.recipes[0].slot3 run data modify block ~ ~ ~ Items[{Slot:2b}].tag.CustomModelData set value 10005
execute unless data entity @s Item.tag.recipes[0].slot3 run data modify block ~ ~ ~ Items[{Slot:2b}].tag.display set value {Name:"{\"text\":\"Ancient Forge\"}"}

# up button
item replace block ~ ~ ~ container.3 with minecraft:black_stained_glass_pane{CustomModelData:10003,display:{Name:"{\"text\":\"Ancient Forge\"}"},tag:{GuiComponent:1b}}

execute unless data block ~ ~ ~ Items[{Slot:4b}] run item replace block ~ ~ ~ container.4 with minecraft:black_stained_glass_pane{CustomModelData:10005,display:{Name:"{\"text\":\"Ancient Forge\"}"},tag:{GuiComponent:1b}}

item replace block ~ ~ ~ container.5 with minecraft:black_stained_glass_pane{CustomModelData:10001,display:{Name:"{\"text\":\"Ancient Forge\"}"},tag:{GuiComponent:1b}}

# crafting grid 1
#item replace block ~ ~ ~ container.6 with minecraft:black_stained_glass_pane{CustomModelData:10001,display:{Name:"{\"text\":\"Ancient Forge\"}"},tag:{GuiComponent:1b}}
#item replace block ~ ~ ~ container.7 with minecraft:black_stained_glass_pane{CustomModelData:10001,display:{Name:"{\"text\":\"Ancient Forge\"}"},tag:{GuiComponent:1b}}
#item replace block ~ ~ ~ container.8 with minecraft:black_stained_glass_pane{CustomModelData:10001,display:{Name:"{\"text\":\"Ancient Forge\"}"},tag:{GuiComponent:1b}}

# recipe preview row 2
item replace block ~ ~ ~ container.9 with minecraft:black_stained_glass_pane{tag:{GuiComponent:1b}}
data modify block ~ ~ ~ Items[{Slot:9b}] merge from entity @s Item.tag.recipes[0].slot4
execute unless data entity @s Item.tag.recipes[0].slot4 run data modify block ~ ~ ~ Items[{Slot:9b}].tag.CustomModelData set value 10005
execute unless data entity @s Item.tag.recipes[0].slot4 run data modify block ~ ~ ~ Items[{Slot:9b}].tag.display set value {Name:"{\"text\":\"Ancient Forge\"}"}

item replace block ~ ~ ~ container.10 with minecraft:black_stained_glass_pane{tag:{GuiComponent:1b}}
data modify block ~ ~ ~ Items[{Slot:10b}] merge from entity @s Item.tag.recipes[0].slot5
execute unless data entity @s Item.tag.recipes[0].slot5 run data modify block ~ ~ ~ Items[{Slot:10b}].tag.CustomModelData set value 10005
execute unless data entity @s Item.tag.recipes[0].slot5 run data modify block ~ ~ ~ Items[{Slot:10b}].tag.display set value {Name:"{\"text\":\"Ancient Forge\"}"}

item replace block ~ ~ ~ container.11 with minecraft:black_stained_glass_pane{tag:{GuiComponent:1b}}
data modify block ~ ~ ~ Items[{Slot:11b}] merge from entity @s Item.tag.recipes[0].slot6
execute unless data entity @s Item.tag.recipes[0].slot6 run data modify block ~ ~ ~ Items[{Slot:11b}].tag.CustomModelData set value 10005
execute unless data entity @s Item.tag.recipes[0].slot6 run data modify block ~ ~ ~ Items[{Slot:11b}].tag.display set value {Name:"{\"text\":\"Ancient Forge\"}"}


# recipe indicator
item replace block ~ ~ ~ container.12 with minecraft:glow_item_frame{tag:{GuiComponent:1b}}
data modify block ~ ~ ~ Items[{Slot:12b}] merge from entity @s Item.tag.recipes[0].result1

execute unless data block ~ ~ ~ Items[{Slot:13b}] run item replace block ~ ~ ~ container.13 with minecraft:black_stained_glass_pane{CustomModelData:10005,display:{Name:"{\"text\":\"Ancient Forge\"}"},tag:{GuiComponent:1b}}
item replace block ~ ~ ~ container.14 with minecraft:black_stained_glass_pane{CustomModelData:10001,display:{Name:"{\"text\":\"Ancient Forge\"}"},tag:{GuiComponent:1b}}

# crafting grid row 2
#item replace block ~ ~ ~ container.15 with minecraft:black_stained_glass_pane{CustomModelData:10001,display:{Name:"{\"text\":\"Ancient Forge\"}"},tag:{GuiComponent:1b}}
#item replace block ~ ~ ~ container.16 with minecraft:black_stained_glass_pane{CustomModelData:10001,display:{Name:"{\"text\":\"Ancient Forge\"}"},tag:{GuiComponent:1b}}
#item replace block ~ ~ ~ container.17 with minecraft:black_stained_glass_pane{CustomModelData:10001,display:{Name:"{\"text\":\"Ancient Forge\"}"},tag:{GuiComponent:1b}}

# recipe preview row 3
item replace block ~ ~ ~ container.18 with minecraft:black_stained_glass_pane{tag:{GuiComponent:1b}}
data modify block ~ ~ ~ Items[{Slot:18b}] merge from entity @s Item.tag.recipes[0].slot7
execute unless data entity @s Item.tag.recipes[0].slot7 run data modify block ~ ~ ~ Items[{Slot:18b}].tag.CustomModelData set value 10005
execute unless data entity @s Item.tag.recipes[0].slot7 run data modify block ~ ~ ~ Items[{Slot:18b}].tag.display set value {Name:"{\"text\":\"Ancient Forge\"}"}

item replace block ~ ~ ~ container.19 with minecraft:black_stained_glass_pane{tag:{GuiComponent:1b}}
data modify block ~ ~ ~ Items[{Slot:19b}] merge from entity @s Item.tag.recipes[0].slot8
execute unless data entity @s Item.tag.recipes[0].slot8 run data modify block ~ ~ ~ Items[{Slot:19b}].tag.CustomModelData set value 10005
execute unless data entity @s Item.tag.recipes[0].slot8 run data modify block ~ ~ ~ Items[{Slot:19b}].tag.display set value {Name:"{\"text\":\"Ancient Forge\"}"}

item replace block ~ ~ ~ container.20 with minecraft:black_stained_glass_pane{tag:{GuiComponent:1b}}
data modify block ~ ~ ~ Items[{Slot:20b}] merge from entity @s Item.tag.recipes[0].slot9
execute unless data entity @s Item.tag.recipes[0].slot9 run data modify block ~ ~ ~ Items[{Slot:20b}].tag.CustomModelData set value 10005
execute unless data entity @s Item.tag.recipes[0].slot9 run data modify block ~ ~ ~ Items[{Slot:20b}].tag.display set value {Name:"{\"text\":\"Ancient Forge\"}"}

# down button
item replace block ~ ~ ~ container.21 with minecraft:black_stained_glass_pane{CustomModelData:10004,display:{Name:"{\"text\":\"Ancient Forge\"}"},tag:{GuiComponent:1b}}

execute unless data block ~ ~ ~ Items[{Slot:22b}] run item replace block ~ ~ ~ container.22 with minecraft:black_stained_glass_pane{CustomModelData:10005,display:{Name:"{\"text\":\"Ancient Forge\"}"},tag:{GuiComponent:1b}}
item replace block ~ ~ ~ container.23 with minecraft:black_stained_glass_pane{CustomModelData:10001,display:{Name:"{\"text\":\"Ancient Forge\"}"},tag:{GuiComponent:1b}}

# crafting grid row 3
#item replace block ~ ~ ~ container.24 with minecraft:black_stained_glass_pane{CustomModelData:10001,display:{Name:"{\"text\":\"Ancient Forge\"}"},tag:{GuiComponent:1b}}
#item replace block ~ ~ ~ container.25 with minecraft:black_stained_glass_pane{CustomModelData:10001,display:{Name:"{\"text\":\"Ancient Forge\"}"},tag:{GuiComponent:1b}}
#item replace block ~ ~ ~ container.26 with minecraft:black_stained_glass_pane{CustomModelData:10001,display:{Name:"{\"text\":\"Ancient Forge\"}"},tag:{GuiComponent:1b}}