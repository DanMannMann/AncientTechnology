item replace block ~ ~ ~ container.0 with minecraft:black_stained_glass_pane{CustomModelData:10001,display:{Name:"{\"text\": \"Ancient Anthology\"}"},tag:{GuiComponent:1b}} 1
item replace block ~ ~ ~ container.1 with minecraft:black_stained_glass_pane{CustomModelData:10001,display:{Name:"{\"text\": \"Ancient Anthology\"}"},tag:{GuiComponent:1b}} 1
item replace block ~ ~ ~ container.2 with minecraft:black_stained_glass_pane{CustomModelData:10001,display:{Name:"{\"text\": \"Ancient Anthology\"}"},tag:{GuiComponent:1b}} 1
item replace block ~ ~ ~ container.3 with minecraft:black_stained_glass_pane{CustomModelData:10001,display:{Name:"{\"text\": \"Ancient Anthology\"}"},tag:{GuiComponent:1b}} 1

item replace block ~ ~ ~ container.5 with minecraft:black_stained_glass_pane{CustomModelData:10001,display:{Name:"{\"text\": \"Ancient Anthology\"}"},tag:{GuiComponent:1b}} 1
item replace block ~ ~ ~ container.6 with minecraft:black_stained_glass_pane{CustomModelData:10001,display:{Name:"{\"text\": \"Ancient Anthology\"}"},tag:{GuiComponent:1b}} 1
item replace block ~ ~ ~ container.7 with minecraft:black_stained_glass_pane{CustomModelData:10001,display:{Name:"{\"text\": \"Ancient Anthology\"}"},tag:{GuiComponent:1b}} 1
item replace block ~ ~ ~ container.8 with minecraft:black_stained_glass_pane{CustomModelData:10001,display:{Name:"{\"text\": \"Ancient Anthology\"}"},tag:{GuiComponent:1b}} 1

item replace block ~ ~ ~ container.9 with minecraft:black_stained_glass_pane{CustomModelData:10001,display:{Name:"{\"text\": \"Ancient Anthology\"}"},tag:{GuiComponent:1b}} 1
item replace block ~ ~ ~ container.10 with minecraft:black_stained_glass_pane{CustomModelData:10001,display:{Name:"{\"text\": \"Ancient Anthology\"}"},tag:{GuiComponent:1b}} 1

item replace block ~ ~ ~ container.16 with minecraft:black_stained_glass_pane{CustomModelData:10001,display:{Name:"{\"text\": \"Ancient Anthology\"}"},tag:{GuiComponent:1b}} 1
item replace block ~ ~ ~ container.17 with minecraft:black_stained_glass_pane{CustomModelData:10001,display:{Name:"{\"text\": \"Ancient Anthology\"}"},tag:{GuiComponent:1b}} 1

item replace block ~ ~ ~ container.18 with minecraft:black_stained_glass_pane{CustomModelData:10001,display:{Name:"{\"text\": \"Ancient Anthology\"}"},tag:{GuiComponent:1b}} 1
item replace block ~ ~ ~ container.19 with minecraft:black_stained_glass_pane{CustomModelData:10001,display:{Name:"{\"text\": \"Ancient Anthology\"}"},tag:{GuiComponent:1b}} 1
item replace block ~ ~ ~ container.20 with minecraft:black_stained_glass_pane{CustomModelData:10001,display:{Name:"{\"text\": \"Ancient Anthology\"}"},tag:{GuiComponent:1b}} 1
item replace block ~ ~ ~ container.21 with minecraft:black_stained_glass_pane{CustomModelData:10001,display:{Name:"{\"text\": \"Ancient Anthology\"}"},tag:{GuiComponent:1b}} 1


item replace block ~ ~ ~ container.23 with minecraft:black_stained_glass_pane{CustomModelData:10001,display:{Name:"{\"text\": \"Ancient Anthology\"}"},tag:{GuiComponent:1b}} 1
item replace block ~ ~ ~ container.24 with minecraft:black_stained_glass_pane{CustomModelData:10001,display:{Name:"{\"text\": \"Ancient Anthology\"}"},tag:{GuiComponent:1b}} 1
item replace block ~ ~ ~ container.25 with minecraft:black_stained_glass_pane{CustomModelData:10001,display:{Name:"{\"text\": \"Ancient Anthology\"}"},tag:{GuiComponent:1b}} 1
item replace block ~ ~ ~ container.26 with minecraft:black_stained_glass_pane{CustomModelData:10001,display:{Name:"{\"text\": \"Ancient Anthology\"}"},tag:{GuiComponent:1b}} 1

tag @s add anthology_full
execute unless block ~ ~ ~ barrel{Items:[{Slot: 4b, id:"minecraft:written_book", tag:{title:"Ancient Tech I"}}]} run tag @s remove anthology_full
execute unless block ~ ~ ~ barrel{Items:[{Slot: 11b, id:"minecraft:written_book", tag:{title:"Ancient Tech II"}}]} run tag @s remove anthology_full
execute unless block ~ ~ ~ barrel{Items:[{Slot: 12b, id:"minecraft:written_book", tag:{title:"Ancient Tech III"}}]} run tag @s remove anthology_full
execute unless block ~ ~ ~ barrel{Items:[{Slot: 13b, id:"minecraft:written_book", tag:{title:"Ancient Tech IV"}}]} run tag @s remove anthology_full
execute unless block ~ ~ ~ barrel{Items:[{Slot: 14b, id:"minecraft:written_book", tag:{title:"Ancient Tech V"}}]} run tag @s remove anthology_full
execute unless block ~ ~ ~ barrel{Items:[{Slot: 15b, id:"minecraft:written_book", tag:{title:"Ancient Tech VI"}}]} run tag @s remove anthology_full
execute unless block ~ ~ ~ barrel{Items:[{Slot: 22b, id:"minecraft:written_book", tag:{title:"Ancient Tech VII"}}]} run tag @s remove anthology_full