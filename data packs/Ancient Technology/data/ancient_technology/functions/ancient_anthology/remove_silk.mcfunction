# SUMMON DROP
execute as @s at @s run summon item ~ ~0.5 ~ {Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:80095,display:{Name:"{\"text\":\"Ancient Anthology\"}", Lore: ["{\"text\":\"Instructional tomes on ancient technology\"}"]},EntityTag:{Silent:1b,Tags:["ancient_anthology","anthology_full"],Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:80095}},Invulnerable:1b,Invisible:1b,Fixed:1b}}}}
# KILL BLOCK DROP
kill @e[type=item,nbt={Item:{id:"minecraft:barrel"}},distance=0..2,sort=nearest,limit=1]
kill @e[type=item,nbt={Item:{tag:{tag:{GuiComponent: 1b}}}},distance=0..2]
kill @e[type=item,nbt={Item:{id:"minecraft:written_book",tag:{author:"The Ancient Technologist"}}},distance=0..2,sort=nearest,limit=7]
# KILL ITEM FRAME
kill @s