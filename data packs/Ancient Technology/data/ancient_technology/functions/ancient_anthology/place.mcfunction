# AS AT POSITION of custom item frame
setblock ~ ~ ~ minecraft:barrel{CustomName:"\"Ancient Anthology\""}
playsound minecraft:block.metal.place block @a[distance=0..5] ~ ~ ~ 1 1.2 1
particle minecraft:enchant ~ ~1 ~ 0 0 0 7 500
item replace block ~ ~ ~ container.4 with minecraft:written_book{display:{Name:'{"text":"Ancient Technology vol I: The Ancient Forge and its Operations","color":"dark_red","bold":true}',Lore:['{"text":"A tome on crafting, usage & care of an ancient forge","color":"dark_gray","italic":true}']},title:"Ancient Tech I",author:"The Ancient Technologist",generation:3,pages:['[{"text":"The Ancient Forge and its Operations","bold":true},{"text":"\\n\\n","bold":false},{"text":"The forge may be crafted of redstone blocks, lapis lazuli blocks, a netherite ingot, an iron block and a common crafting table.\\n\\n","bold":false},{"text":"[L]","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"lapis lazuli block"}]}},{"text":"[N]","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"netherite ingot"}]}},{"text":"[L]\\n","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"lapis lazuli block"}]}},{"text":"[R]","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"redstone block"}]}},{"text":"[C]","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Crafting Table"}]}},{"text":"[R]\\n","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"redstone block"}]}},{"text":"[L]","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"lapis lazuli block"}]}},{"text":"[X]","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"iron block"}]}},{"text":"[L]","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"lapis lazuli block"}]}}]','[{"text":"Once placed upon the earth The Ancient Forge will manifest the ancient recipes with which it is imbued. The active recipe is shown in the left-hand grid.\\n"},{"text":"The selected recipe may be changed using the arrows, and may be crafted by placing the shown ingredients into the right-hand grid."}]','{"text":"The crafting is completed and ingredients deducted when any of the crafted items are removed.\\n\\n Be sure to remove all crafted items before continuing to use the forge. Items left in the result bay may be destroyed if the forge is used again."}']} 1

item replace block ~ ~ ~ container.10 with minecraft:written_book{pages:['["",{"text":"\\n"},{"text":"The Ancient Automaton and its Operations","bold":true},{"text":"\\nThe automaton may be crafted of redstone blocks, lapis lazuli blocks, a diamond, an iron block and a common crafting table.\\n ","color":"reset"},{"text":"\\n","color":"reset"},{"text":"[L]","bold":false,"hoverEvent":{"action":"show_item","contents":{"id":"minecraft:lapis_block"}}},{"text":" ","bold":false},{"text":"[D]","bold":false,"hoverEvent":{"action":"show_item","contents":{"id":"minecraft:diamond"}}},{"text":" ","bold":false},{"text":"[L]","bold":false,"hoverEvent":{"action":"show_item","contents":{"id":"minecraft:lapis_block"}}},{"text":"\\n","bold":false},{"text":"[R]","bold":false,"hoverEvent":{"action":"show_item","contents":{"id":"minecraft:redstone_block"}}},{"text":" ","bold":false},{"text":"[C]","bold":false,"hoverEvent":{"action":"show_item","contents":{"id":"minecraft:crafting_table"}}},{"text":" ","bold":false},{"text":"[R]","bold":false,"hoverEvent":{"action":"show_item","contents":{"id":"minecraft:redstone_block"}}},{"text":"\\n","bold":false},{"text":"[L]","bold":false,"hoverEvent":{"action":"show_item","contents":{"id":"minecraft:lapis_block"}}},{"text":" ","bold":false},{"text":"[X]","bold":false,"hoverEvent":{"action":"show_item","contents":{"id":"minecraft:iron_block"}}},{"text":" ","bold":false},{"text":"[L]","bold":false,"hoverEvent":{"action":"show_item","contents":{"id":"minecraft:lapis_block"}}}]','{"text":" \\n\\nThe Ancient Automaton is a powerful device, and can only be bound upon the earth in three specific configurations; the crafting automaton, the waxing automaton and the tinting automaton.","color":"reset"}','["",{"text":"A crafting automaton can be manifested by placing an ancient automaton inside a circle of common crafting tables.\\n"},{"text":"[C] [C] [C]","hoverEvent":{"action":"show_item","contents":{"id":"minecraft:crafting_table"}}},{"text":"\\n"},{"text":"[C]","hoverEvent":{"action":"show_item","contents":{"id":"minecraft:crafting_table"}}},{"text":" "},{"text":"[A]","hoverEvent":{"action":"show_text","contents":[{"text":"Ancient Automaton"}]}},{"text":" "},{"text":"[C]","hoverEvent":{"action":"show_item","contents":{"id":"minecraft:crafting_table"}}},{"text":"\\n"},{"text":"[C] [C] [C]","hoverEvent":{"action":"show_item","contents":{"id":"minecraft:crafting_table"}}},{"text":"\\nRefer to the tome The Crafting Automaton and its Operations to understand this configuration."}]','{"text":"A waxing automaton can be manifested by placing an ancient automaton beside any side of a honeycomb block.\\n\\nRefer to the tome The Waxing Automaton and its Operations to understand this configuration."}','{"text":"A tinting automaton can be manifested by placing an ancient automaton beside any side of any wool block.\\n\\nRefer to the tome The Tinting Automaton and its Operations to understand this configuration."}','{"text":"Attempting to place an ancient automaton in any other congifuration will result in failure. The automaton is not stable except in these known configurations. You have been warned."}'],title:"Ancient Tech II",author:"The Ancient Technologist",generation:3,display:{Name:'{"text":"Ancient Technology vol II: The Ancient Automaton and its Operations","color":"dark_red","bold":true}',Lore:['{"text":"A tome on crafting, usage & care of an ancient automaton","color":"dark_gray","italic":true}']}}

item replace block ~ ~ ~ container.11 with minecraft:written_book{display:{Name:'{"text":"Ancient Technology vol III: The Crafting Automaton and its Operations","color":"dark_red","bold":true}',Lore:['{"text":"A tome on the usage & care of a crafting automaton","color":"dark_gray","italic":true}']},title:"Ancient Tech III",author:"The Ancient Technologist",generation:3,pages:['[{"text":"The Crafting Automaton and its Operations\\n","bold":true},{"text":"When placed in the formation mentioned in vol II, the ancient automaton transmogrifies into a crafting automaton and manifests 8 crafting mechanisms where the common crafting tables once stood.","bold":false}]','[{"text":"The automaton may be programmed to craft almost any item. To program it, place the desired  item(s) in the center slot of the automaton and surround the item(s) with paper in the other slots.\\n"},{"text":"[P] ","hoverEvent":{"action":"show_text","contents":[{"text":"Paper"}]}},{"text":"[P] ","hoverEvent":{"action":"show_text","contents":[{"text":"Paper"}]}},{"text":"[P] \\n","hoverEvent":{"action":"show_text","contents":[{"text":"Paper"}]}},{"text":"[P] ","hoverEvent":{"action":"show_text","contents":[{"text":"Paper"}]}},{"text":"[X] ","hoverEvent":{"action":"show_text","contents":[{"text":"item(s) resulting from the intended recipe"}]}},{"text":"[P] \\n","hoverEvent":{"action":"show_text","contents":[{"text":"Paper"}]}},{"text":"[P] ","hoverEvent":{"action":"show_text","contents":[{"text":"Paper"}]}},{"text":"[P] ","hoverEvent":{"action":"show_text","contents":[{"text":"Paper"}]}},{"text":"[P] \\n","hoverEvent":{"action":"show_text","contents":[{"text":"Paper"}]}}]','{"text":"Note you must use the correct amount of result items, according to the standard crafting recipe. For example, to program for the oak log to 4x oak planks recipe, 4x oak planks must be inserted during programming."}','{"text":"Once the device is programmed, each mechanism block may or may not contain an ingredient input for the programmed recipe. When facing north, the shape of the ingredients in each of the 9 blocks matches the common crafting recipe shape."}','{"text":"The ingredient slots may be fed by hand, by dropper, or by hopper, and the device will perform a craft each time that every ingredient slot contains 2 or more items. A single item is retained in each slot to act as a filter.\\n"}','[{"text":"Warning: Do not place hoppers or power sources under any part of the device.","bold":true},{"text":" The device must be isolated at all times.","bold":false,"italic":true},{"text":"\\nItems drop from the bottom of the automaton block and can be collected by a hopper at least two blocks below the device, or ","bold":false}]','{"text":"deposited directly into a water stream."}']}

item replace block ~ ~ ~ container.12 with minecraft:written_book{display:{Name:'{"text":"Ancient Technology vol IV: The Waxing Automaton and its Operations","color":"dark_red","bold":true}',Lore:['{"text":"A tome on the usage & care of a waxing automaton","color":"dark_gray","italic":true}']},title:"Ancient Tech IV",author:"The Ancient Technologist",generation:3,pages:['[{"text":"The Waxing Automaton and its Operations\\n\\n","bold":true},{"text":"When placed in the formation mentioned in vol II, the ancient automaton transmogrifies into a waxing automaton and manifests a Miyagitron where the honeycomb block once stood.","bold":false}]','{"text":"Operation of the waxing automaton is simple. So long as the Miyagitron is kept  stocked with honeycombs, any unwaxed copper items inserted into the waxing automaton will be waxed and ejected."}','[{"text":"The copper item slot may be fed by hand, by dropper, or by hopper, and the device will perform a waxing each time that a copper item is inserted."},{"text":"\\nNote: If a non-copper item is inserted, the system will become jammed until it is removed.","italic":true}]','[{"text":"Warning: Do not place hoppers or power sources under any part of the device.","bold":true},{"text":" The device must be isolated at all times.","bold":false,"italic":true},{"text":"\\nItems drop from the bottom of the automaton block and can be collected by a hopper at least two blocks below the device, or","bold":false}]','{"text":"deposited directly into a water stream."}']}

item replace block ~ ~ ~ container.13 with minecraft:written_book{display:{Name:'{"text":"Ancient Technology vol V: The Tinting Automaton and its Operations","color":"dark_red","bold":true}',Lore:['{"text":"A tome on the usage & care of a tinting automaton","color":"dark_gray","italic":true}']},title:"Ancient Tech V",author:"The Ancient Technologist",generation:3,pages:['[{"text":"The Tinting Automaton and its Operations\\n\\n","bold":true},{"text":"When placed in the formation mentioned in vol II, the ancient automaton transmogrifies into a tinting automaton and manifests a Chromatron where the wool block once stood.","bold":false}]','{"text":"Operation of the tinting automaton is simple. The chromatron can be fed with any dye, and when a dyeable item (e.g. white bed, white wool) or a mixable dye is inserted into the tinting automaton the dye is mixed or applied and the result is ejected."}','[{"text":"Note that some types of dyeing or tinting cannot be handled. If more than 2 ingredients are required, for example when crafting colored concrete or tinted glass, a crafting automaton is required."},{"text":"\\nNote: inserting any incompatible items will  jam the device.","italic":true}]','[{"text":"Warning: Do not place hoppers or power sources under any part of the device.","bold":true},{"text":" The device must be isolated at all times.","bold":false,"italic":true},{"text":"\\nItems drop from the bottom of the automaton block and can be collected by a hopper at least two blocks below the device, or","bold":false}]','{"text":"deposited directly into a water stream."}']}

item replace block ~ ~ ~ container.14 with minecraft:written_book{display:{Name:'{"text":"Ancient Technology vol VI: The Sender Chest, Eye of Origin & Eye of Destination","color":"dark_red","bold":true}',Lore:['{"text":"A tome on the usage & care of a pair of sender chests","color":"dark_gray","italic":true}']},title:"Ancient Tech VI",author:"The Ancient Technologist",generation:3,pages:['[{"text":"The Sender Chest\\n","bold":true},{"text":"The sender chest is used with eyes of origin and destination to send items across any distance instantly. Ender eyes modified by an ancient forge channel the items between the chests as if each eye has accessed the same ender chest to exchange the items.","bold":false}]','{"text":"Eyes of Origin and Destination are forged in pairs. Each forging produces stacks of pairs of eyes with a unique key number. An eye of origin can only send items to an eye of destination with a matching key number."}','{"text":"To prepare items to be  sent, insert the items into  a sender chest, leaving the center-most slot free. Insert a single Eye of Origin into that slot. If a matching Eye of Destination is already properly placed in another sender chest, the items will be transferred immediately."}','{"text":"To prepare a sender chest to receive items, ensure the chest is completely empty and insert an Eye of Destination in the center-most slot. If a matching Eye of Origin is already placed, items will be received immediately.","bold":false}','{"text":"The Eyes of Origin and Destination are consumed when the items are transferred. Note that if an Eye of Destination finds a placed, matching Eye of Origin in an empty chest the eyes will be consumed with no items being transferred. Always insert items into the origin chest"}','{"text":"before inserting the eye."}']}

item replace block ~ ~ ~ container.15 with minecraft:written_book{display:{Name:'{"text":"Ancient Technology vol VII: The Redstone Portals","color":"dark_red","bold":true}',Lore:['{"text":"A tome on the usage & care of a pair of redstone portals","color":"dark_gray","italic":true}']},title:"Ancient Tech VII",author:"The Ancient Technologist",generation:3,pages:['[{"text":"The Redstone Portal\\n","bold":true},{"text":"The Redstone Portals can transmit a redstone signal up to 30 blocks. Eyes of Origin and Destination channel the redstone power between the portals.","bold":false}]','{"text":"Redstone portals are forged in pairs. Each forging produces stacks of pairs of portals with a unique key number. An origin portal can only transmit to a destination portal with a matching key number."}','{"text":"When a destination portal is powered its output is always 15."}','{"text":"When redstone portals are broken, some of the ingredients are left behind. The eyes of ender, lapis and some of the redstone are consumed when connecting the portals and so are not left over when the portals are broken.","bold":false}']}

item replace block ~ ~ ~ container.16 with minecraft:written_book{display:{Name:'{"text":"Ancient Technology vol VIII: The Itemizer","color":"dark_red","bold":true}',Lore:['{"text":"A tome on the usage & care of the itemizer","color":"dark_gray","italic":true}']},title:"Ancient Tech VIII",author:"The Ancient Technologist",generation:3,pages:['[{"text":"The Itemizer\\n","bold":true},{"text":"The Itemizer can detect the presence of a specific item type in a container. It must be placed directly against the side of the container to be measured.","bold":false}]','{"text":"The itemizer outputs the same power levels as a comparator would for a given quantity of items. The item type to measure is set by placing the required item on the itemizer\'s rear frame."}','{"text":"The itemizer powers any adjacent block, as well as the block it is placed on. This is the same power output as a pressure plate."}']}

item replace block ~ ~ ~ container.22 with minecraft:written_book{display:{Name:'{"text":"Ancient Technology vol IX: The Soul Plate","color":"dark_red","bold":true}',Lore:['{"text":"A tome on the usage & care of the soul plate","color":"dark_gray","italic":true}']},title:"Ancient Tech IX",author:"The Ancient Technologist",generation:3,pages:['[{"text":"The Soul Plate\\n","bold":true},{"text":"The soul plate is a pressure plate which only detects players.","bold":false}]','{"text":"It outputs power level 15 if at least 1 player is standing on it. There is not much else to say about it."}']}

# item replace block ~ ~ ~ container.22 

tag @s add placed