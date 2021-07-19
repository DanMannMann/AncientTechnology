
setblock ~ ~ ~ minecraft:dropper{CustomName:"\"Crafting Automaton\""}

summon minecraft:glow_item_frame ~-1 ~ ~-1 {Silent:1b, Facing: 1b, Tags:["crafting_mechanism"],Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:80087}},Invulnerable:1b,Invisible:1b,Fixed:1b}
summon minecraft:glow_item_frame ~ ~ ~-1 {Silent:1b, Facing: 1b, Tags:["crafting_mechanism"],Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:80086}},Invulnerable:1b,Invisible:1b,Fixed:1b}
summon minecraft:glow_item_frame ~1 ~ ~-1 {Silent:1b, Facing: 1b, Tags:["crafting_mechanism"],Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:80087}},Invulnerable:1b,Invisible:1b,Fixed:1b}
summon minecraft:glow_item_frame ~1 ~ ~ {Silent:1b, Facing: 1b, Tags:["crafting_mechanism"],Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:80086}},Invulnerable:1b,Invisible:1b,Fixed:1b}
summon minecraft:glow_item_frame ~1 ~ ~1 {Silent:1b, Facing: 1b, Tags:["crafting_mechanism"],Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:80087}},Invulnerable:1b,Invisible:1b,Fixed:1b}
summon minecraft:glow_item_frame ~ ~ ~1 {Silent:1b, Facing: 1b, Tags:["crafting_mechanism"],Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:80086}},Invulnerable:1b,Invisible:1b,Fixed:1b}
summon minecraft:glow_item_frame ~-1 ~ ~1 {Silent:1b, Facing: 1b, Tags:["crafting_mechanism"],Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:80087}},Invulnerable:1b,Invisible:1b,Fixed:1b}
summon minecraft:glow_item_frame ~-1 ~ ~ {Silent:1b, Facing: 1b, Tags:["crafting_mechanism"],Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:80086}},Invulnerable:1b,Invisible:1b,Fixed:1b}

# mark the install as complete
data merge entity @s {Tags:["ancient_automaton","installed_crafting", "placed"]}

# set up crafting scores
scoreboard players set @s autoc_success 0
scoreboard players set @s autoc_slot1 0
scoreboard players set @s autoc_slot2 0
scoreboard players set @s autoc_slot3 0
scoreboard players set @s autoc_slot4 0
scoreboard players set @s autoc_slot5 0
scoreboard players set @s autoc_slot6 0
scoreboard players set @s autoc_slot7 0
scoreboard players set @s autoc_slot8 0
scoreboard players set @s autoc_slot9 0
scoreboard players set @s autoc_slot1_tgt 0
scoreboard players set @s autoc_slot2_tgt 0
scoreboard players set @s autoc_slot3_tgt 0
scoreboard players set @s autoc_slot4_tgt 0
scoreboard players set @s autoc_slot5_tgt 0
scoreboard players set @s autoc_slot6_tgt 0
scoreboard players set @s autoc_slot7_tgt 0
scoreboard players set @s autoc_slot8_tgt 0
scoreboard players set @s autoc_slot9_tgt 0
scoreboard players set @s autoc_tick 0
scoreboard players set @s autoc_tock 1
scoreboard players set @s autoc_rick 0
scoreboard players set @s autoc_rock 1

playsound minecraft:block.metal.place block @a[distance=0..5] ~ ~ ~ 1 1.2 1
particle minecraft:electric_spark ~ ~ ~ 0 0 0 7 500