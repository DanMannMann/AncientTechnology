scoreboard objectives add autoc_slot1 dummy
scoreboard objectives add autoc_slot2 dummy
scoreboard objectives add autoc_slot3 dummy
scoreboard objectives add autoc_slot4 dummy
scoreboard objectives add autoc_slot5 dummy
scoreboard objectives add autoc_slot6 dummy
scoreboard objectives add autoc_slot7 dummy
scoreboard objectives add autoc_slot8 dummy
scoreboard objectives add autoc_slot9 dummy

scoreboard objectives add autoc_slot1_tgt dummy
scoreboard objectives add autoc_slot2_tgt dummy
scoreboard objectives add autoc_slot3_tgt dummy
scoreboard objectives add autoc_slot4_tgt dummy
scoreboard objectives add autoc_slot5_tgt dummy
scoreboard objectives add autoc_slot6_tgt dummy
scoreboard objectives add autoc_slot7_tgt dummy
scoreboard objectives add autoc_slot8_tgt dummy
scoreboard objectives add autoc_slot9_tgt dummy

scoreboard objectives add autoc_success dummy
scoreboard objectives add tick_count dummy
scoreboard players set AncientTechnology tick_count 0

scoreboard objectives add autoc_block_fix dummy
scoreboard objectives add miyagi_count dummy
scoreboard objectives add miyagi_slot dummy

scoreboard objectives add items_sent dummy
scoreboard objectives add written dummy

scoreboard objectives add sender_key dummy
scoreboard objectives add sender_empty dummy
scoreboard objectives add sender_craft_ct1 dummy
scoreboard objectives add sender_craft_ct2 dummy


scoreboard objectives add forge_index dummy
scoreboard objectives add forge_max_index dummy
scoreboard objectives add forge_last_index dummy
scoreboard objectives add forge_temp_index dummy
scoreboard objectives add forge_slot1_comp dummy
scoreboard objectives add forge_slot2_comp dummy
scoreboard objectives add forge_slot3_comp dummy
scoreboard objectives add forge_slot4_comp dummy
scoreboard objectives add forge_slot5_comp dummy
scoreboard objectives add forge_slot6_comp dummy
scoreboard objectives add forge_slot7_comp dummy
scoreboard objectives add forge_slot8_comp dummy
scoreboard objectives add forge_slot9_comp dummy

scoreboard objectives add forge_slot_max dummy
scoreboard objectives add forge_slt_max_pv dummy
scoreboard objectives add forge_slot_used dummy
scoreboard objectives add forge_result1 dummy
scoreboard objectives add forge_result2 dummy
scoreboard objectives add forge_result3 dummy

scoreboard objectives add forge_slot_prev dummy
scoreboard objectives add forge_result1_pv dummy
scoreboard objectives add forge_result2_pv dummy
scoreboard objectives add forge_result3_pv dummy
scoreboard objectives add forge_result1_ct dummy
scoreboard objectives add forge_result2_ct dummy
scoreboard objectives add forge_result3_ct dummy
scoreboard objectives add forge_complete dummy
scoreboard objectives add forge_changed dummy
scoreboard objectives add __crafting_tick dummy

data modify storage ancient_technology:forge data set value {recipes:[{slot1:{id:"minecraft:iron_ingot"},slot2:{id:"minecraft:iron_ingot"},slot3:{id:"minecraft:iron_ingot"},slot4:{id:"minecraft:book"},slot5:{id:"minecraft:book"},slot6:{id:"minecraft:book"},slot7:{id:"minecraft:book"},slot8:{id:"minecraft:book"},slot9:{id:"minecraft:book"},result1:{id:"minecraft:glow_item_frame", Count: 1b, tag:{CustomModelData:80095,display:{Name:"{\"text\":\"Ancient Anthology\"}", Lore: ["{\"text\":\"Instructional tomes on ancient technology\"}"]},EntityTag:{Silent:1b,Tags:["ancient_anthology"],Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:80095}},Invulnerable:1b,Invisible:1b,Fixed:1b}}}}]}

data modify storage ancient_technology:forge data.recipes append value {slot1:{id:"minecraft:lapis_block"},slot2:{id:"minecraft:diamond"},slot3:{id:"minecraft:lapis_block"},slot4:{id:"minecraft:redstone_block"},slot5:{id:"minecraft:crafting_table"},slot6:{id:"minecraft:redstone_block"},slot7:{id:"minecraft:lapis_block"},slot8:{id:"minecraft:iron_block"},slot9:{id:"minecraft:lapis_block"},result1:{id:"minecraft:glow_item_frame", Count: 1b, tag:{CustomModelData:80085,display:{Name:"{\"text\":\"Ancient Automaton\"}"},EntityTag:{Silent:1b,Tags:["ancient_automaton"],Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:80085}},Invulnerable:1b,Invisible:1b,Fixed:1b}}}}

data modify storage ancient_technology:forge data.recipes append value {slot1:{id:"minecraft:blackstone_slab"},slot2:{id:"minecraft:blackstone_slab"},slot3:{id:"minecraft:blackstone_slab"},slot4:{id:"minecraft:crying_obsidian"},slot5:{id:"minecraft:ender_eye"},slot6:{id:"minecraft:crying_obsidian"},slot7:{id:"minecraft:blackstone_slab"},slot8:{id:"minecraft:blackstone_slab"},slot9:{id:"minecraft:blackstone_slab"},result1:{id:"minecraft:glow_item_frame", Count: 1b, tag:{display:{Name:'{"text":"Sender Chest"}'},CustomModelData:80090,EntityTag:{Silent:1b,Tags:["sender_chest"],Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:80090}},Invulnerable:1b,Invisible:1b,Fixed:1b}}}}

data modify storage ancient_technology:forge data.recipes append value {eventTag:"sender_eye_crafted", slot2:{id:"minecraft:ender_eye"},slot3:{id:"minecraft:redstone"},slot1:{id:"minecraft:redstone"},slot7:{id:"minecraft:lapis_lazuli"},slot8:{id:"minecraft:ender_eye"},slot9:{id:"minecraft:lapis_lazuli"},result1:{id:"minecraft:stick", Count: 1b, tag: {CustomModelData:90083,display:{Name:"{\"text\":\"Eye of Origin\"}"}}},result3:{id:"minecraft:stick", Count: 1b, tag:{CustomModelData:90084, display:{Name:"{\"text\":\"Eye of Destination\"}"}}}}